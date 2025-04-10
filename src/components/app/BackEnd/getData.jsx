import React, { useState, useEffect } from 'react';

export function Data(url, variable) {  
  const [data, setData] = useState([]);
  useEffect(() => {
    fetch(`https://localhost/btl_csdl/src/components/app/BackEnd/php/uploads/getdata.php?&url=${encodeURIComponent(url)}&variable=${encodeURIComponent(variable)}`)
      .then((response) => response.json())
      .then((data) => {
        setData(data);
      })
      .catch((error) => {
        console.error("Error fetching data:", error);
      });
  }, [url, variable]); 
  return data;
}
