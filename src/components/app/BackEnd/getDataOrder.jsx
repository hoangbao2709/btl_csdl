import React, { useState, useEffect } from 'react';

export function Data(variable) {  
  const [data, setData] = useState([]);
  useEffect(() => {
    fetch(`http://localhost/btl_csdl/src/components/app/BackEnd/php/uploads/getOrder.php?variable=${encodeURIComponent(variable)}`)
      .then((response) => response.json())
      .then((data) => {
        setData(data);
      })
      .catch((error) => {
        console.error("Error fetching data:", error);
      });
  }, ); 
  return data;
}
