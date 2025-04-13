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

        };
        items.push(tempItem);
        tempImg = [];
      }
      if (JSON.stringify(images) !== JSON.stringify(items)) {
        setImages(items);
      }
    }
  }, [data, img]);
  console.log("images",images);
  return images;
}