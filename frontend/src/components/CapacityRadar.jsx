// src/components/CapacityRadar.jsx
import React from 'react';
import { Radar, RadarChart, PolarGrid, PolarAngleAxis, ResponsiveContainer } from 'recharts';

const CapacityRadar = ({ data }) => {
  // Xử lý dữ liệu để lấy phần trước dấu ":"
  const processedData = data.map(item => {
    const rawName = item.subject || "";
    // Cắt chuỗi tại dấu ":" và lấy phần tử đầu tiên
    const shortName = rawName.includes(':') 
      ? rawName.split(':')[0].trim() 
      : rawName;

    return {
      ...item,
      displayName: shortName
    };
  });

  if (!data || data.length === 0) return <div style={{color: '#000', fontWeight: 600}}>Chưa có dữ liệu</div>;

  return (
    <div style={{ width: '100%', height: '100%' }}>
      <ResponsiveContainer width="100%" height="100%">
        <RadarChart cx="50%" cy="50%" outerRadius="65%" data={processedData}>
          <PolarGrid stroke="#ccc" />
          <PolarAngleAxis 
            dataKey="displayName" 
            tick={{ fill: '#000000', fontSize: 13, fontWeight: 600 }} 
          />
          <Radar
            name="Năng lực"
            dataKey="A"
            stroke="#A4161A"
            fill="#A4161A"
            fillOpacity={0.6}
          />
        </RadarChart>
      </ResponsiveContainer>
    </div>
  );
};

export default CapacityRadar;