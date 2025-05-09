import React, { useState, useEffect } from 'react';

export function useData(img = [], url, variable) {
  const [data, setData] = useState([]);
  const [images, setImages] = useState([]);

  useEffect(() => {
    const fetchData = async () => {
        try {
            const response = await fetch(`https://localhost/btl_csdl/src/components/app/BackEnd/php/uploads/Data.php?&url=${encodeURIComponent(url)}&variable=${encodeURIComponent(variable)}`);
            const result = await response.json();
            setData(result);
        } catch (error) {
            console.error("Error fetching data: ", error);
        }
    };
    fetchData();
}, [url, variable]);

  function getTampNumber(item) {
    const fileName = item.split('/').pop();
    return fileName.split('_')[0];
  }

  useEffect(() => {
    if (data.length > 0 && img.length > 0) {
      const items = [];
      for (let i = 0; i < img.length; i++) {
        const fileName = img[i].split('/').pop();
        const tempNumber = fileName.split('_')[0];
        let tempImg = [];

        tempImg.push(img[i]);
        while (i < img.length - 1 && getTampNumber(img[i]) === getTampNumber(img[i + 1])) {
          i++;
          tempImg.push(img[i]);
        }
        let tempItem = {
          img: tempImg,
          id: data[0].id,
          gia_goc: data[0].gia_goc,
          gia: data[0].gia,
          giam_gia: data[0].giam_gia,
          name: data[0].name,
          trong_luong: data[0].trong_luong,
          page: data[0].Page,
          description: data[0].description,
        };
        items.push(tempItem);
        tempImg = [];
      }
      if (JSON.stringify(images) !== JSON.stringify(items)) {
        setImages(items);
      }
    }
  }, [data, img]);

  return images;
}