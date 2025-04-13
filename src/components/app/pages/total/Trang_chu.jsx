import React, { useState, useEffect } from "react";
import { useLocation } from "react-router-dom";
import { Test } from "../helper/pagination_Trang_Chu";
import { useData } from "../helper/getData";

export default function Kien_thuc_khoa_hoc(item) {
  const [img, setImages] = useState([]);

  useEffect(() => {
    async function loadImages() {
      const imagePaths = import.meta.glob(
        "../../BackEnd/php/images/Trang_Chu/**/*.{jpg,jpeg,png,gif,svg,webp}"
      );
      const imagePromises = Object.values(imagePaths).map((importer) =>
        importer()
      );
      const loadedImages = await Promise.all(imagePromises);
      setImages(loadedImages.map((module) => module.default));
    }

    loadImages();
  }, []);
  const Am_thanh = useData(img, "Am_thanh", "");
  const Dien_thoai_Taplet = useData(img, "Dien_thoai_Taplet");
  const Do_gia_dung = useData(img, "Do_gia_dung");
  const Dong_ho_Camera = useData(img, "Dong_ho_Camera");
  const Laptop = useData(img, "Laptop");
  const PC_man_hinh_May_in = useData(img, "PC_man_hinh_May_in");
  const Phu_kien = useData(img, "Phu_kien");
  const Tivi = useData(img, "Tivi");

  const location = useLocation();
  const pathParts = location.pathname;
  const pageNumber = pathParts.includes(item.resultLocation)
    ? pathParts.replace(item.resultLocation + "/", "")
    : pathParts.replace(item.resultLocation, "1");
  const resultLocation = pathParts.replace("/" + pageNumber, "");
  let itemNumber = "";
  if (String(pageNumber) === String(resultLocation)) {
    itemNumber = "1";
  } else itemNumber = String(pageNumber);

  const images = [Am_thanh, Dien_thoai_Taplet, Do_gia_dung, Dong_ho_Camera, Laptop, PC_man_hinh_May_in, Phu_kien, Tivi];

  return (
    <div>
      <div className="flex relative">
        <Test
          currentPage={Number(itemNumber)}
          location={resultLocation}
          images={images}
          childWidth={item.Width}
        />
      </div>
    </div>
  );
}
