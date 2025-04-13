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

export const Test = (item) => {

  const Am_thanh = item.images[0];
  const Dien_thoai_Taplet = item.images[1];
  const Do_gia_dung = item.images[2];
  const Dong_ho_Camera = item.images[3];
  const Laptop = item.images[4];
  const PC_man_hinh_May_in = item.images[5];
  const Phu_kien = item.images[6];
  const Tivi = item.images[7];

  const getImg = (img) => {
    const result = img.filter(ele => {
        const fileName = ele.split('/');
        const pathParts = fileName[fileName.length - 1].split("_");
        return pathParts.includes("0");
    });
    return result;
  };

  return (
    <div>
      <div>
        <p className="text-[30px] font-bold">ĐIỆN THOẠI NỔI BẬT NHẤT</p>
        <Swiper
            slidesPerView={5}
            modules={[Autoplay, Pagination, Navigation]}
            className="w-[1200px]"
        >
            {Dien_thoai_Taplet.map((image, index) => {
              const imgs = getImg(image.img);
              const imgSrc = imgs.length > 0 ? imgs[0] : '';
              return (
              <SwiperSlide key={index}>
                <a className="cursor-pointer">
                  <div className="h-[350px] bg-white rounded-lg mx-2 my-3 relative px-[10px]">
                    <img
                      src={imgSrc}
                      alt="Framed"
                    />
                    <p className="font-bold">{image.name}</p>
                    <div className="relative h-full">
                      <strong className="text-[red] text-[16px]">{image.gia}</strong>
                      <label
                        className="text-gray-400 text-[16px] md:absolute md:right-[10px] line-through"
                        id="original-price"
                      >
                        <strong>{image.gia_goc}</strong>
                      </label>
                      <p className="h-[50px] bg-[#F3F4F6] text-[15px] p-[5px] rounded-2xl overflow-hidden">{image.description}</p>
                    </div>
                  </div>
                </a>
              </SwiperSlide>
              )
            })}
        </Swiper>
      </div>
      <div>
        <p className="text-[30px] font-bold">LAPTOP</p>
        <Swiper
            slidesPerView={5}
            modules={[Autoplay, Pagination, Navigation]}
            className="w-[1200px]"
        >
            {Laptop.map((image, index) => {
              const imgs = getImg(image.img);
              const imgSrc = imgs.length > 0 ? imgs[0] : '';
              return (
              <SwiperSlide key={index}>
                <a className="cursor-pointer">
                  <div className="h-[350px] bg-white rounded-lg mx-2 my-3 relative px-[10px]">
                    <img
                      src={imgSrc}
                      alt="Framed"
                    />
                    <p className="font-bold">{image.name}</p>
                    <div className="relative h-full">
                      <strong className="text-[red] text-[16px]">{image.gia}</strong>
                      <label
                        className="text-gray-400 text-[16px] md:absolute md:right-[10px] line-through"
                        id="original-price"
                      >
                        <strong>{image.gia_goc}</strong>
                      </label>
                      <p className="h-[50px] bg-[#F3F4F6] text-[15px] p-[5px] rounded-2xl overflow-hidden">{image.description}</p>
                    </div>
                  </div>
                </a>
              </SwiperSlide>
              )
            })}
        </Swiper>
      </div>
      <div>
        <p className="text-[30px] font-bold">MÀN HÌNH, MÁY TÍNH ĐỂ BÀN</p>
        <Swiper
            slidesPerView={5}
            modules={[Autoplay, Pagination, Navigation]}
            className="w-[1200px]"
        >
            {PC_man_hinh_May_in.map((image, index) => {
              const imgs = getImg(image.img);
              const imgSrc = imgs.length > 0 ? imgs[0] : '';
              return (
              <SwiperSlide key={index}>
                <a className="cursor-pointer">
                  <div className="h-[350px] bg-white rounded-lg mx-2 my-3 relative px-[10px]">
                    <img
                      src={imgSrc}
                      alt="Framed"
                    />
                    <p className="font-bold">{image.name}</p>
                    <div className="relative h-full">
                      <strong className="text-[red] text-[16px]">{image.gia}</strong>
                      <label
                        className="text-gray-400 text-[16px] md:absolute md:right-[10px] line-through"
                        id="original-price"
                      >
                        <strong>{image.gia_goc}</strong>
                      </label>
                      <p className="h-[50px] bg-[#F3F4F6] text-[15px] p-[5px] rounded-2xl overflow-hidden">{image.description}</p>
                    </div>
                  </div>
                </a>
              </SwiperSlide>
              )
            })}
        </Swiper>
      </div>
      <div>
        <p className="text-[30px] font-bold">ÂM THANH</p>
        <Swiper
            slidesPerView={5}
            modules={[Autoplay, Pagination, Navigation]}
            className="w-[1200px]"
        >
            {Am_thanh.map((image, index) => {
              const imgs = getImg(image.img);
              const imgSrc = imgs.length > 0 ? imgs[0] : '';
              return (
              <SwiperSlide key={index}>
                <a className="cursor-pointer">
                  <div className="h-[350px] bg-white rounded-lg mx-2 my-3 relative px-[10px]">
                    <img
                      src={imgSrc}
                      alt="Framed"
                    />
                    <p className="font-bold">{image.name}</p>
                    <div className="relative h-full">
                      <strong className="text-[red] text-[16px]">{image.gia}</strong>
                      <label
                        className="text-gray-400 text-[16px] md:absolute md:right-[10px] line-through"
                        id="original-price"
                      >
                        <strong>{image.gia_goc}</strong>
                      </label>
                      <p className="h-[50px] bg-[#F3F4F6] text-[15px] p-[5px] rounded-2xl overflow-hidden">{image.description}</p>
                    </div>
                  </div>
                </a>
              </SwiperSlide>
              )
            })}
        </Swiper>
      </div>
      <div>
        <p className="text-[30px] font-bold">ĐỒNG HỒ THÔNG MINH</p>
        <Swiper
            slidesPerView={5}
            modules={[Autoplay, Pagination, Navigation]}
            className="w-[1200px]"
        >
            {Dong_ho_Camera.map((image, index) => {
              const imgs = getImg(image.img);
              const imgSrc = imgs.length > 0 ? imgs[0] : '';
              return (
              <SwiperSlide key={index}>
                <a className="cursor-pointer">
                  <div className="h-[350px] bg-white rounded-lg mx-2 my-3 relative px-[10px]">
                    <img
                      src={imgSrc}
                      alt="Framed"
                    />
                    <p className="font-bold">{image.name}</p>
                    <div className="relative h-full">
                      <strong className="text-[red] text-[16px]">{image.gia}</strong>
                      <label
                        className="text-gray-400 text-[16px] md:absolute md:right-[10px] line-through"
                        id="original-price"
                      >
                        <strong>{image.gia_goc}</strong>
                      </label>
                      <p className="h-[50px] bg-[#F3F4F6] text-[15px] p-[5px] rounded-2xl overflow-hidden">{image.description}</p>
                    </div>
                  </div>
                </a>
              </SwiperSlide>
              )
            })}
        </Swiper>
      </div>
      <div>
        <p className="text-[30px] font-bold">ĐỒ GIA DỤNG</p>
        <Swiper
            slidesPerView={5}
            modules={[Autoplay, Pagination, Navigation]}
            className="w-[1200px]"
        >
            {Do_gia_dung.map((image, index) => {
              const imgs = getImg(image.img);
              const imgSrc = imgs.length > 0 ? imgs[0] : '';
              return (
              <SwiperSlide key={index}>
                <a className="cursor-pointer">
                  <div className="h-[350px] bg-white rounded-lg mx-2 my-3 relative px-[10px]">
                    <img
                      src={imgSrc}
                      alt="Framed"
                    />
                    <p className="font-bold">{image.name}</p>
                    <div className="relative h-full">
                      <strong className="text-[red] text-[16px]">{image.gia}</strong>
                      <label
                        className="text-gray-400 text-[16px] md:absolute md:right-[10px] line-through"
                        id="original-price"
                      >
                        <strong>{image.gia_goc}</strong>
                      </label>
                      <p className="h-[50px] bg-[#F3F4F6] text-[15px] p-[5px] rounded-2xl overflow-hidden">{image.description}</p>
                    </div>
                  </div>
                </a>
              </SwiperSlide>
              )
            })}
        </Swiper>
      </div>
      <div>
        <p className="text-[30px] font-bold">TIVI</p>
        <Swiper
            slidesPerView={5}
            modules={[Autoplay, Pagination, Navigation]}
            className="w-[1200px]"
        >
            {Tivi.map((image, index) => {
              const imgs = getImg(image.img);
              const imgSrc = imgs.length > 0 ? imgs[0] : '';
              return (
              <SwiperSlide key={index}>
                <a className="cursor-pointer">
                  <div className="h-[350px] bg-white rounded-lg mx-2 my-3 relative px-[10px]">
                    <img
                      src={imgSrc}
                      alt="Framed"
                    />
                    <p className="font-bold">{image.name}</p>
                    <div className="relative h-full">
                      <strong className="text-[red] text-[16px]">{image.gia}</strong>
                      <label
                        className="text-gray-400 text-[16px] md:absolute md:right-[10px] line-through"
                        id="original-price"
                      >
                        <strong>{image.gia_goc}</strong>
                      </label>
                      <p className="h-[50px] bg-[#F3F4F6] text-[15px] p-[5px] rounded-2xl overflow-hidden">{image.description}</p>
                    </div>
                  </div>
                </a>
              </SwiperSlide>
              )
            })}
        </Swiper>
      </div>
      <div>
        <p className="text-[30px] font-bold">PHỤ KIỆN</p>
        <Swiper
            slidesPerView={5}
            modules={[Autoplay, Pagination, Navigation]}
            className="w-[1200px]"
        >
            {Phu_kien.map((image, index) => {
              const imgs = getImg(image.img);
              const imgSrc = imgs.length > 0 ? imgs[0] : '';
              return (
              <SwiperSlide key={index}>
                <a className="cursor-pointer">
                  <div className="h-[350px] bg-white rounded-lg mx-2 my-3 relative px-[10px]">
                    <img
                      src={imgSrc}
                      alt="Framed"
                    />
                    <p className="font-bold">{image.name}</p>
                    <div className="relative h-full">
                      <strong className="text-[red] text-[16px]">{image.gia}</strong>
                      <label
                        className="text-gray-400 text-[16px] md:absolute md:right-[10px] line-through"
                        id="original-price"
                      >
                        <strong>{image.gia_goc}</strong>
                      </label>
                      <p className="h-[50px] bg-[#F3F4F6] text-[15px] p-[5px] rounded-2xl overflow-hidden">{image.description}</p>
                    </div>
                  </div>
                </a>
              </SwiperSlide>
              )
            })}
        </Swiper>
      </div>
    </div>
  );
};
