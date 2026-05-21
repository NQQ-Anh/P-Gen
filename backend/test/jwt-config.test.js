import assert from 'node:assert/strict';
import test from 'node:test';
import { generateKeyPairSync } from 'node:crypto';
import jwt from 'jsonwebtoken';
import { assertJwtConfiguration, getJwtAlgorithm, signJwtToken, verifyJwtToken } from '../src/config/jwt.js';

const JWT_ENV_KEYS = [
  'JWT_ALGORITHM',
  'JWT_SECRET',
  'JWT_REFRESH_SECRET',
  'JWT_PRIVATE_KEY',
  'JWT_PUBLIC_KEY',
];

const withJwtEnv = (overrides, callback) => {
  const original = {};
  for (const key of JWT_ENV_KEYS) {
    original[key] = process.env[key];
    delete process.env[key];
  }

  for (const [key, value] of Object.entries(overrides)) {
    if (value === undefined || value === null) {
      delete process.env[key];
      continue;
    }
    process.env[key] = value;
  }

  try {
    return callback();
  } finally {
    for (const key of JWT_ENV_KEYS) {
      if (original[key] === undefined) {
        delete process.env[key];
      } else {
        process.env[key] = original[key];
      }
    }
  }
};

test('sign/verify with HS256 for access and refresh tokens', () => {
  withJwtEnv(
    {
      JWT_ALGORITHM: 'HS256',
      JWT_SECRET: 'hs256-access-secret',
      JWT_REFRESH_SECRET: 'hs256-refresh-secret',
    },
    () => {
      assertJwtConfiguration();
      assert.equal(getJwtAlgorithm(), 'HS256');

      const accessToken = signJwtToken({ userId: 101 }, { tokenType: 'access', expiresIn: '30m' });
      const refreshToken = signJwtToken({ userId: 101 }, { tokenType: 'refresh', expiresIn: '7d' });

      const accessDecoded = verifyJwtToken(accessToken, { tokenType: 'access' });
      const refreshDecoded = verifyJwtToken(refreshToken, { tokenType: 'refresh' });
      const accessHeader = jwt.decode(accessToken, { complete: true }).header;
      const refreshHeader = jwt.decode(refreshToken, { complete: true }).header;

      assert.equal(accessDecoded.userId, 101);
      assert.equal(refreshDecoded.userId, 101);
      assert.equal(accessHeader.alg, 'HS256');
      assert.equal(refreshHeader.alg, 'HS256');
    },
  );
});

test('defaults to HS256 when JWT_ALGORITHM is not provided', () => {
  withJwtEnv(
    {
      JWT_SECRET: 'default-hs-access-secret',
      JWT_REFRESH_SECRET: 'default-hs-refresh-secret',
    },
    () => {
      assertJwtConfiguration();
      assert.equal(getJwtAlgorithm(), 'HS256');

      const accessToken = signJwtToken({ userId: 303 }, { tokenType: 'access', expiresIn: '30m' });
      const accessDecoded = verifyJwtToken(accessToken, { tokenType: 'access' });
      const accessHeader = jwt.decode(accessToken, { complete: true }).header;

      assert.equal(accessDecoded.userId, 303);
      assert.equal(accessHeader.alg, 'HS256');
    },
  );
});

test('sign/verify with RS256 and escaped newline PEM keys', () => {
  const { privateKey, publicKey } = generateKeyPairSync('rsa', {
    modulusLength: 2048,
    privateKeyEncoding: { type: 'pkcs8', format: 'pem' },
    publicKeyEncoding: { type: 'spki', format: 'pem' },
  });

  withJwtEnv(
    {
      JWT_ALGORITHM: 'RS256',
      JWT_PRIVATE_KEY: privateKey.replace(/\n/g, '\\n'),
      JWT_PUBLIC_KEY: publicKey.replace(/\n/g, '\\n'),
    },
    () => {
      assertJwtConfiguration();
      assert.equal(getJwtAlgorithm(), 'RS256');

      const accessToken = signJwtToken({ userId: 202 }, { tokenType: 'access', expiresIn: '30m' });
      const refreshToken = signJwtToken({ userId: 202 }, { tokenType: 'refresh', expiresIn: '7d' });

      const accessDecoded = verifyJwtToken(accessToken, { tokenType: 'access' });
      const refreshDecoded = verifyJwtToken(refreshToken, { tokenType: 'refresh' });
      const accessHeader = jwt.decode(accessToken, { complete: true }).header;
      const refreshHeader = jwt.decode(refreshToken, { complete: true }).header;

      assert.equal(accessDecoded.userId, 202);
      assert.equal(refreshDecoded.userId, 202);
      assert.equal(accessHeader.alg, 'RS256');
      assert.equal(refreshHeader.alg, 'RS256');
    },
  );
});

test('throws clear error when JWT_ALGORITHM is invalid', () => {
  withJwtEnv(
    {
      JWT_ALGORITHM: 'HS512',
      JWT_SECRET: 's1',
      JWT_REFRESH_SECRET: 's2',
    },
    () => {
      assert.throws(
        () => assertJwtConfiguration(),
        /Invalid JWT_ALGORITHM/,
      );
    },
  );
});

test('throws clear error when missing required variables for selected algorithm', () => {
  withJwtEnv(
    {
      JWT_ALGORITHM: 'HS256',
      JWT_REFRESH_SECRET: 'refresh-only',
    },
    () => {
      assert.throws(
        () => assertJwtConfiguration(),
        /JWT_SECRET/,
      );
    },
  );

  withJwtEnv(
    {
      JWT_ALGORITHM: 'RS256',
      JWT_PUBLIC_KEY: 'public-only',
    },
    () => {
      assert.throws(
        () => assertJwtConfiguration(),
        /JWT_PRIVATE_KEY/,
      );
    },
  );
});

test('throws clear error when RS256 keys are not valid PEM keys', () => {
  withJwtEnv(
    {
      JWT_ALGORITHM: 'RS256',
      JWT_PRIVATE_KEY: '-----BEGIN RSA PRIVATE KEY-----',
      JWT_PUBLIC_KEY: '-----BEGIN PUBLIC KEY-----',
    },
    () => {
      assert.throws(
        () => assertJwtConfiguration(),
        /Invalid JWT_PRIVATE_KEY/,
      );
    },
  );
});
