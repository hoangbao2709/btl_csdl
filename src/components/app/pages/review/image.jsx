import React from 'react';
import { Swiper, SwiperSlide } from 'swiper/react';
import 'swiper/swiper-bundle.css';
import image1 from './../images/iphone-16-pro-max-thu-cu-moi-home.webp';
import image2 from './../images/khai-truong-binh-duong-home.webp';
import image3 from './../images/oppo-find-n5-dat-truoc-home.webp';
import image4 from './../images/tecno-camon-40-home.webp';
import image5 from './../images/philips-ppm3522.webp';

import image6 from './../images/dien-thoai-samsung-galaxy-m55-8190-right-banner-.webp';
import image7 from './../images/a16-home-ipad-9-4.webp';
import image8 from './../images/s-edu-2-0-right-laptop.webp';
import { Autoplay, Pagination, Navigation } from 'swiper/modules';

import 'swiper/css';
import 'swiper/css/pagination';

let images = [
    image1,
    image2,
    image3,
    image4,
    image5,
];

export default function Images() {
    return (
        <header className='w-full flex justify-center items-center'>
            <div className='w-[1200px] flex'>
                <Swiper
                    spaceBetween={30}
                    centeredSlides={true}
                    autoplay={{
                    delay: 5000,
                    disableOnInteraction: false,
                    }}
                    navigation={true}
                    modules={[Autoplay, Pagination, Navigation]}
                    className="w-[73%] justify-center items-center rounded-2xl"
                >
                    {images.map((image, index) => (
                        <SwiperSlide key={index}>
                            <img className="w-full rounded-lg" src={image} alt={`Slide ${index + 1}`} />
                        </SwiperSlide>
                    ))}
                </Swiper>
                <div className='w-[23%]'>
                    <img className="rounded-2xl mb-[10px]" src={image6} />
                    <img className="rounded-2xl mb-[10px]" src={image7} />
                    <img className="rounded-2xl mb-[10px]" src={image8} />
                </div>
            </div>
        </header>
    );
}