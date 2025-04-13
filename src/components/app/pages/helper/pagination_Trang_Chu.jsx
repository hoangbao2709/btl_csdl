import React, { useState, useEffect, useRef } from "react";
import { useLocation } from "react-router-dom";
import { useData } from "./getData";
import Frame from "./frame";
import FFrame from "./frameFavorite";
import Select from "react-select";
import { faList } from "@fortawesome/free-solid-svg-icons";
import { faChevronDown } from "@fortawesome/free-solid-svg-icons";
import { faMinus } from "@fortawesome/free-solid-svg-icons";
import { faPlus } from "@fortawesome/free-solid-svg-icons";
import "./style/style.css";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { Navigation, Pagination, Scrollbar, A11y, Autoplay } from 'swiper/modules';
import { Swiper, SwiperSlide } from 'swiper/react';
import 'swiper/css';
import 'swiper/css/navigation';
import 'swiper/css/pagination';
import 'swiper/css/scrollbar';
import ip1 from "./../images/iphone-16-pro-max.webp";
import ip2 from "./../images/iphone-16-pro-max.webp";
import ip3 from "./../images/iphone-16-pro-max.webp";
import ip4 from "./../images/iphone-16-pro-max.webp";
import ip5 from "./../images/iphone-16-pro-max.webp";
import ip6 from "./../images/iphone-16-pro-max.webp";
import ip7 from "./../images/iphone-16-pro-max.webp";
import ip8 from "./../images/iphone-16-pro-max.webp";
import ip9 from "./../images/iphone-16-pro-max.webp";
import ip10 from "./../images/iphone-16-pro-max.webp";

export const Test = (item) => {
  const ipArray = [ip1, ip2, ip3, ip4, ip5, ip6, ip7, ip8, ip9, ip10];
  return (
    <div>
      <div>
        <p className="text-[30px] font-bold">ĐIỆN THOẠI NỔI BẬT NHẤT</p>
        <Swiper
            slidesPerView={5}
            modules={[Autoplay, Pagination, Navigation]}
            className="w-[1200px]"
        >
            {ipArray.map((image, index) => (
                <SwiperSlide key={index}>
                  <a className="cursor-pointer">
                    <div className="h-[400px] bg-white rounded-lg mx-2 my-3 relative px-[10px]">
                      <img className="rounded-lg" src={image} alt={`Slide ${index + 1}`} />
                      <p className="font-bold">iPhone 16 Pro Max 256GB | Chính hãng VN/A</p>
                      <div className="relative h-full">
                        <strong className="text-[red] text-[16px]">34.990.000</strong>
                        <label
                          className="text-gray-400 text-[16px] md:absolute md:right-[10px] line-through"
                          id="original-price"
                        >
                          <strong>34.990.000</strong>
                        </label>
                        <p className="h-[50px] bg-[#F3F4F6] text-[15px] p-[5px] rounded-2xl overflow-hidden">Máy mới 100% , chính hãng Apple Việt Nam.
                        CellphoneS hiện là đại lý bán lẻ uỷ quyền iPhone chính hãng VN/A của Apple Việt Nam</p>
                      </div>
                    </div>
                  </a>
                  <a className="cursor-pointer">
                    <div className="h-[400px] bg-white rounded-2xl mx-2 my-3 relative px-[10px]">
                      <img className="rounded-lg" src={image} alt={`Slide ${index + 1}`} />
                      <p className="font-bold">iPhone 16 Pro Max 256GB | Chính hãng VN/A</p>
                      <div className="relative h-full">
                        <strong className="text-[red] text-[16px]">34.990.000</strong>
                        <label
                          className="text-gray-400 text-[16px] md:absolute md:right-[10px] line-through"
                          id="original-price"
                        >
                          <strong>34.990.000</strong>
                        </label>
                        <p className="h-[50px] bg-[#F3F4F6] text-[15px] p-[5px] rounded-lg overflow-hidden">
                          Máy mới 100% , chính hãng Apple Việt Nam. CellphoneS hiện là đại lý bán lẻ uỷ quyền iPhone chính hãng VN/A của Apple Việt Nam
                        </p>
                      </div>
                    </div>
                  </a>
                </SwiperSlide>
            ))}
        </Swiper>
      </div>
      <div>
        <p className="text-[30px] font-bold">LAPTOP</p>
        <Swiper
            slidesPerView={5}
            modules={[Autoplay, Pagination, Navigation]}
            className="w-[1200px]"
        >
            {ipArray.map((image, index) => (
                <SwiperSlide key={index}>
                  <a className="cursor-pointer">
                    <div className="h-[400px] bg-white rounded-lg mx-2 my-3 relative px-[10px]">
                      <img className="rounded-lg" src={image} alt={`Slide ${index + 1}`} />
                      <p className="font-bold">iPhone 16 Pro Max 256GB | Chính hãng VN/A</p>
                      <div className="relative h-full">
                        <strong className="text-[red] text-[16px]">34.990.000</strong>
                        <label
                          className="text-gray-400 text-[16px] md:absolute md:right-[10px] line-through"
                          id="original-price"
                        >
                          <strong>34.990.000</strong>
                        </label>
                        <p className="h-[50px] bg-[#F3F4F6] text-[15px] p-[5px] rounded-2xl overflow-hidden">Máy mới 100% , chính hãng Apple Việt Nam.
                        CellphoneS hiện là đại lý bán lẻ uỷ quyền iPhone chính hãng VN/A của Apple Việt Nam</p>
                      </div>
                    </div>
                  </a>
                  <a className="cursor-pointer">
                    <div className="h-[400px] bg-white rounded-2xl mx-2 my-3 relative px-[10px]">
                      <img className="rounded-lg" src={image} alt={`Slide ${index + 1}`} />
                      <p className="font-bold">iPhone 16 Pro Max 256GB | Chính hãng VN/A</p>
                      <div className="relative h-full">
                        <strong className="text-[red] text-[16px]">34.990.000</strong>
                        <label
                          className="text-gray-400 text-[16px] md:absolute md:right-[10px] line-through"
                          id="original-price"
                        >
                          <strong>34.990.000</strong>
                        </label>
                        <p className="h-[50px] bg-[#F3F4F6] text-[15px] p-[5px] rounded-lg overflow-hidden">
                          Máy mới 100% , chính hãng Apple Việt Nam. CellphoneS hiện là đại lý bán lẻ uỷ quyền iPhone chính hãng VN/A của Apple Việt Nam
                        </p>
                      </div>
                    </div>
                  </a>
                </SwiperSlide>
            ))}
        </Swiper>
      </div>
      <div>
        <p className="text-[30px] font-bold">MÀN HÌNH, MÁY TÍNH ĐỂ BÀN</p>
        <Swiper
            slidesPerView={5}
            modules={[Autoplay, Pagination, Navigation]}
            className="w-[1200px]"
        >
            {ipArray.map((image, index) => (
                <SwiperSlide key={index}>
                  <a className="cursor-pointer">
                    <div className="h-[400px] bg-white rounded-lg mx-2 my-3 relative px-[10px]">
                      <img className="rounded-lg" src={image} alt={`Slide ${index + 1}`} />
                      <p className="font-bold">iPhone 16 Pro Max 256GB | Chính hãng VN/A</p>
                      <div className="relative h-full">
                        <strong className="text-[red] text-[16px]">34.990.000</strong>
                        <label
                          className="text-gray-400 text-[16px] md:absolute md:right-[10px] line-through"
                          id="original-price"
                        >
                          <strong>34.990.000</strong>
                        </label>
                        <p className="h-[50px] bg-[#F3F4F6] text-[15px] p-[5px] rounded-2xl overflow-hidden">Máy mới 100% , chính hãng Apple Việt Nam.
                        CellphoneS hiện là đại lý bán lẻ uỷ quyền iPhone chính hãng VN/A của Apple Việt Nam</p>
                      </div>
                    </div>
                  </a>
                  <a className="cursor-pointer">
                    <div className="h-[400px] bg-white rounded-2xl mx-2 my-3 relative px-[10px]">
                      <img className="rounded-lg" src={image} alt={`Slide ${index + 1}`} />
                      <p className="font-bold">iPhone 16 Pro Max 256GB | Chính hãng VN/A</p>
                      <div className="relative h-full">
                        <strong className="text-[red] text-[16px]">34.990.000</strong>
                        <label
                          className="text-gray-400 text-[16px] md:absolute md:right-[10px] line-through"
                          id="original-price"
                        >
                          <strong>34.990.000</strong>
                        </label>
                        <p className="h-[50px] bg-[#F3F4F6] text-[15px] p-[5px] rounded-lg overflow-hidden">
                          Máy mới 100% , chính hãng Apple Việt Nam. CellphoneS hiện là đại lý bán lẻ uỷ quyền iPhone chính hãng VN/A của Apple Việt Nam
                        </p>
                      </div>
                    </div>
                  </a>
                </SwiperSlide>
            ))}
        </Swiper>
      </div>
      <div>
        <p className="text-[30px] font-bold">MÁY TÍNH BẢNG</p>
        <Swiper
            slidesPerView={5}
            modules={[Autoplay, Pagination, Navigation]}
            className="w-[1200px]"
        >
            {ipArray.map((image, index) => (
                <SwiperSlide key={index}>
                  <a className="cursor-pointer">
                    <div className="h-[400px] bg-white rounded-lg mx-2 my-3 relative px-[10px]">
                      <img className="rounded-lg" src={image} alt={`Slide ${index + 1}`} />
                      <p className="font-bold">iPhone 16 Pro Max 256GB | Chính hãng VN/A</p>
                      <div className="relative h-full">
                        <strong className="text-[red] text-[16px]">34.990.000</strong>
                        <label
                          className="text-gray-400 text-[16px] md:absolute md:right-[10px] line-through"
                          id="original-price"
                        >
                          <strong>34.990.000</strong>
                        </label>
                        <p className="h-[50px] bg-[#F3F4F6] text-[15px] p-[5px] rounded-2xl overflow-hidden">Máy mới 100% , chính hãng Apple Việt Nam.
                        CellphoneS hiện là đại lý bán lẻ uỷ quyền iPhone chính hãng VN/A của Apple Việt Nam</p>
                      </div>
                    </div>
                  </a>
                  <a className="cursor-pointer">
                    <div className="h-[400px] bg-white rounded-2xl mx-2 my-3 relative px-[10px]">
                      <img className="rounded-lg" src={image} alt={`Slide ${index + 1}`} />
                      <p className="font-bold">iPhone 16 Pro Max 256GB | Chính hãng VN/A</p>
                      <div className="relative h-full">
                        <strong className="text-[red] text-[16px]">34.990.000</strong>
                        <label
                          className="text-gray-400 text-[16px] md:absolute md:right-[10px] line-through"
                          id="original-price"
                        >
                          <strong>34.990.000</strong>
                        </label>
                        <p className="h-[50px] bg-[#F3F4F6] text-[15px] p-[5px] rounded-lg overflow-hidden">
                          Máy mới 100% , chính hãng Apple Việt Nam. CellphoneS hiện là đại lý bán lẻ uỷ quyền iPhone chính hãng VN/A của Apple Việt Nam
                        </p>
                      </div>
                    </div>
                  </a>
                </SwiperSlide>
            ))}
        </Swiper>
      </div>
      <div>
        <p className="text-[30px] font-bold">ÂM THANH</p>
        <Swiper
            slidesPerView={5}
            modules={[Autoplay, Pagination, Navigation]}
            className="w-[1200px]"
        >
            {ipArray.map((image, index) => (
                <SwiperSlide key={index}>
                  <a className="cursor-pointer">
                    <div className="h-[400px] bg-white rounded-lg mx-2 my-3 relative px-[10px]">
                      <img className="rounded-lg" src={image} alt={`Slide ${index + 1}`} />
                      <p className="font-bold">iPhone 16 Pro Max 256GB | Chính hãng VN/A</p>
                      <div className="relative h-full">
                        <strong className="text-[red] text-[16px]">34.990.000</strong>
                        <label
                          className="text-gray-400 text-[16px] md:absolute md:right-[10px] line-through"
                          id="original-price"
                        >
                          <strong>34.990.000</strong>
                        </label>
                        <p className="h-[50px] bg-[#F3F4F6] text-[15px] p-[5px] rounded-2xl overflow-hidden">Máy mới 100% , chính hãng Apple Việt Nam.
                        CellphoneS hiện là đại lý bán lẻ uỷ quyền iPhone chính hãng VN/A của Apple Việt Nam</p>
                      </div>
                    </div>
                  </a>
                </SwiperSlide>
            ))}
        </Swiper>
      </div>
      <div>
        <p className="text-[30px] font-bold">ĐỒNG HỒ THÔNG MINH</p>
        <Swiper
            slidesPerView={5}
            modules={[Autoplay, Pagination, Navigation]}
            className="w-[1200px]"
        >
            {ipArray.map((image, index) => (
                <SwiperSlide key={index}>
                  <a className="cursor-pointer">
                    <div className="h-[400px] bg-white rounded-lg mx-2 my-3 relative px-[10px]">
                      <img className="rounded-lg" src={image} alt={`Slide ${index + 1}`} />
                      <p className="font-bold">iPhone 16 Pro Max 256GB | Chính hãng VN/A</p>
                      <div className="relative h-full">
                        <strong className="text-[red] text-[16px]">34.990.000</strong>
                        <label
                          className="text-gray-400 text-[16px] md:absolute md:right-[10px] line-through"
                          id="original-price"
                        >
                          <strong>34.990.000</strong>
                        </label>
                        <p className="h-[50px] bg-[#F3F4F6] text-[15px] p-[5px] rounded-2xl overflow-hidden">Máy mới 100% , chính hãng Apple Việt Nam.
                        CellphoneS hiện là đại lý bán lẻ uỷ quyền iPhone chính hãng VN/A của Apple Việt Nam</p>
                      </div>
                    </div>
                  </a>
                </SwiperSlide>
            ))}
        </Swiper>
      </div>
      <div>
        <p className="text-[30px] font-bold">ĐỒ GIA DỤNG</p>
        <Swiper
            slidesPerView={5}
            modules={[Autoplay, Pagination, Navigation]}
            className="w-[1200px]"
        >
            {ipArray.map((image, index) => (
                <SwiperSlide key={index}>
                  <a className="cursor-pointer">
                    <div className="h-[400px] bg-white rounded-lg mx-2 my-3 relative px-[10px]">
                      <img className="rounded-lg" src={image} alt={`Slide ${index + 1}`} />
                      <p className="font-bold">iPhone 16 Pro Max 256GB | Chính hãng VN/A</p>
                      <div className="relative h-full">
                        <strong className="text-[red] text-[16px]">34.990.000</strong>
                        <label
                          className="text-gray-400 text-[16px] md:absolute md:right-[10px] line-through"
                          id="original-price"
                        >
                          <strong>34.990.000</strong>
                        </label>
                        <p className="h-[50px] bg-[#F3F4F6] text-[15px] p-[5px] rounded-2xl overflow-hidden">Máy mới 100% , chính hãng Apple Việt Nam.
                        CellphoneS hiện là đại lý bán lẻ uỷ quyền iPhone chính hãng VN/A của Apple Việt Nam</p>
                      </div>
                    </div>
                  </a>
                </SwiperSlide>
            ))}
        </Swiper>
      </div>
      <div>
        <p className="text-[30px] font-bold">TIVI</p>
        <Swiper
            slidesPerView={5}
            modules={[Autoplay, Pagination, Navigation]}
            className="w-[1200px]"
        >
            {ipArray.map((image, index) => (
                <SwiperSlide key={index}>
                  <a className="cursor-pointer">
                    <div className="h-[400px] bg-white rounded-lg mx-2 my-3 relative px-[10px]">
                      <img className="rounded-lg" src={image} alt={`Slide ${index + 1}`} />
                      <p className="font-bold">iPhone 16 Pro Max 256GB | Chính hãng VN/A</p>
                      <div className="relative h-full">
                        <strong className="text-[red] text-[16px]">34.990.000</strong>
                        <label
                          className="text-gray-400 text-[16px] md:absolute md:right-[10px] line-through"
                          id="original-price"
                        >
                          <strong>34.990.000</strong>
                        </label>
                        <p className="h-[50px] bg-[#F3F4F6] text-[15px] p-[5px] rounded-2xl overflow-hidden">Máy mới 100% , chính hãng Apple Việt Nam.
                        CellphoneS hiện là đại lý bán lẻ uỷ quyền iPhone chính hãng VN/A của Apple Việt Nam</p>
                      </div>
                    </div>
                  </a>
                </SwiperSlide>
            ))}
        </Swiper>
      </div>
      <div>
        <p className="text-[30px] font-bold">PHỤ KIỆN</p>
        <Swiper
            slidesPerView={5}
            modules={[Autoplay, Pagination, Navigation]}
            className="w-[1200px]"
        >
            {ipArray.map((image, index) => (
                <SwiperSlide key={index}>
                  <a className="cursor-pointer">
                    <div className="h-[400px] bg-white rounded-lg mx-2 my-3 relative px-[10px]">
                      <img className="rounded-lg" src={image} alt={`Slide ${index + 1}`} />
                      <p className="font-bold">iPhone 16 Pro Max 256GB | Chính hãng VN/A</p>
                      <div className="relative h-full">
                        <strong className="text-[red] text-[16px]">34.990.000</strong>
                        <label
                          className="text-gray-400 text-[16px] md:absolute md:right-[10px] line-through"
                          id="original-price"
                        >
                          <strong>34.990.000</strong>
                        </label>
                        <p className="h-[50px] bg-[#F3F4F6] text-[15px] p-[5px] rounded-2xl overflow-hidden">Máy mới 100% , chính hãng Apple Việt Nam.
                        CellphoneS hiện là đại lý bán lẻ uỷ quyền iPhone chính hãng VN/A của Apple Việt Nam</p>
                      </div>
                    </div>
                  </a>
                </SwiperSlide>
            ))}
        </Swiper>
      </div>
      <div>
        <p className="text-[30px] font-bold">LINH KIỆN MÁY TÍNH</p>
        <Swiper
            slidesPerView={5}
            modules={[Autoplay, Pagination, Navigation]}
            className="w-[1200px]"
        >
            {ipArray.map((image, index) => (
                <SwiperSlide key={index}>
                  <a className="cursor-pointer">
                    <div className="h-[400px] bg-white rounded-lg mx-2 my-3 relative px-[10px]">
                      <img className="rounded-lg" src={image} alt={`Slide ${index + 1}`} />
                      <p className="font-bold">iPhone 16 Pro Max 256GB | Chính hãng VN/A</p>
                      <div className="relative h-full">
                        <strong className="text-[red] text-[16px]">34.990.000</strong>
                        <label
                          className="text-gray-400 text-[16px] md:absolute md:right-[10px] line-through"
                          id="original-price"
                        >
                          <strong>34.990.000</strong>
                        </label>
                        <p className="h-[50px] bg-[#F3F4F6] text-[15px] p-[5px] rounded-2xl overflow-hidden">Máy mới 100% , chính hãng Apple Việt Nam.
                        CellphoneS hiện là đại lý bán lẻ uỷ quyền iPhone chính hãng VN/A của Apple Việt Nam</p>
                      </div>
                    </div>
                  </a>
                </SwiperSlide>
            ))}
        </Swiper>
      </div>
    </div>
  );
};
