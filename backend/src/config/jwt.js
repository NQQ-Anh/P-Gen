import jwt from 'jsonwebtoken';
import { createPrivateKey, createPublicKey } from 'node:crypto';

const SUPPORTED_JWT_ALGORITHMS = new Set(['HS256', 'RS256']);
const DEFAULT_JWT_ALGORITHM = 'HS256';

const normalizePemKey = (value) => value.replace(/\\n/g, '\n');

const assertValidRs256Key = (keyValue, envName, parseKeyFn) => {
  try {
    parseKeyFn(keyValue);
  } catch (_error) {
    throw new Error(
      `Invalid ${envName} for JWT_ALGORITHM=RS256. Use a complete PEM key (multiline in quotes or escaped \\n).`,
    );
  }
};

const readRequiredEnv = (envName, algorithm) => {
  const value = process.env[envName];
  if (typeof value !== 'string' || value.trim() === '') {
    throw new Error(`Missing required environment variable "${envName}" for JWT_ALGORITHM=${algorithm}.`);
  }
  return value.trim();
};

const resolveJwtAlgorithm = () => {
  const rawAlgorithm = (process.env.JWT_ALGORITHM || DEFAULT_JWT_ALGORITHM).trim().toUpperCase();

  if (!SUPPORTED_JWT_ALGORITHMS.has(rawAlgorithm)) {
    throw new Error(
      `Invalid JWT_ALGORITHM "${rawAlgorithm}". Supported values are HS256 or RS256.`,
    );
  }

  return rawAlgorithm;
};

const buildHs256Config = () => {
  const algorithm = 'HS256';
  const accessSecret = readRequiredEnv('JWT_SECRET', algorithm);
  const refreshSecret = readRequiredEnv('JWT_REFRESH_SECRET', algorithm);

  return {
    algorithm,
    access: {
      signingKey: accessSecret,
      verifyKey: accessSecret,
    },
    refresh: {
      signingKey: refreshSecret,
      verifyKey: refreshSecret,
    },
  };
};

const buildRs256Config = () => {
  const algorithm = 'RS256';
  const privateKey = normalizePemKey(readRequiredEnv('JWT_PRIVATE_KEY', algorithm));
  const publicKey = normalizePemKey(readRequiredEnv('JWT_PUBLIC_KEY', algorithm));
  assertValidRs256Key(privateKey, 'JWT_PRIVATE_KEY', createPrivateKey);
  assertValidRs256Key(publicKey, 'JWT_PUBLIC_KEY', createPublicKey);

  return {
    algorithm,
    access: {
      signingKey: privateKey,
      verifyKey: publicKey,
    },
    refresh: {
      signingKey: privateKey,
      verifyKey: publicKey,
    },
  };
};

const resolveJwtConfig = () => {
  const algorithm = resolveJwtAlgorithm();
  return algorithm === 'RS256' ? buildRs256Config() : buildHs256Config();
};

const resolveTokenConfig = (tokenType) => {
  const jwtConfig = resolveJwtConfig();
  if (tokenType === 'refresh') {
    return { ...jwtConfig.refresh, algorithm: jwtConfig.algorithm };
  }
  if (tokenType === 'access') {
    return { ...jwtConfig.access, algorithm: jwtConfig.algorithm };
  }

  throw new Error(`Unsupported token type "${tokenType}". Expected "access" or "refresh".`);
};

export const assertJwtConfiguration = () => {
  resolveJwtConfig();
};

export const getJwtAlgorithm = () => {
  return resolveJwtConfig().algorithm;
};

export const signJwtToken = (payload, { tokenType = 'access', expiresIn } = {}) => {
  const tokenConfig = resolveTokenConfig(tokenType);
  const signOptions = { algorithm: tokenConfig.algorithm };

  if (expiresIn) {
    signOptions.expiresIn = expiresIn;
  }

  return jwt.sign(payload, tokenConfig.signingKey, signOptions);
};

export const verifyJwtToken = (token, { tokenType = 'access' } = {}) => {
  const tokenConfig = resolveTokenConfig(tokenType);
  return jwt.verify(token, tokenConfig.verifyKey, {
    algorithms: [tokenConfig.algorithm],
  });
};
