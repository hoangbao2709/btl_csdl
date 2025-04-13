import Header from "./header/header";
import Images from "./review/image";
import Trang_Chu  from "./total/Trang_chu";
import Dien_thoai_Taplet  from "./total/Dien_thoai_Taplet";
import Laptop  from "./total/Laptop";
import Am_thanh  from "./total/Am_thanh";
import Dong_ho_Camera  from "./total/Dong_ho_Camera";
import Do_gia_dung  from "./total/Do_gia_dung";
import Phu_kien  from "./total/Phu_kien";
import PC_man_hinh_May_in  from "./total/PC_man_hinh_May_in";
import Tivi  from "./total/Tivi";
import Favorite  from "./total/Favorite";
import { Routes, Route, useLocation } from 'react-router-dom';
import React, { useEffect, useRef, useState } from 'react';
import bg from './images/nen2.jpg';

const Main = () => {
  const location = useLocation();
  const pathParts = location.pathname;
  const headerRef = useRef(null);

  let resultLocation = "";

  if (location.pathname !== '/') {
    resultLocation = location.pathname;
  } else {
    resultLocation = "/Trang_Chu";
  }
  const [scrollPosition, setScrollPosition] = useState(0);

  const handleScroll = () => {
    setScrollPosition(window.scrollY);
  };

  useEffect(() => {
    window.addEventListener('scroll', handleScroll);
    return () => {
      window.removeEventListener('scroll', handleScroll);
    };
  }, []);

    const parentRef = useRef(null);
    const [childWidth, setChildWidth] = useState(0);
  
    const updateChildWidth = () => {
      if (parentRef.current) {
        const parentWidth = parentRef.current.offsetWidth;
        setChildWidth(parentWidth); 
      }
    };
  
    useEffect(() => {
      updateChildWidth(); 
  
      window.addEventListener('resize', updateChildWidth); 
  
      return () => {
        window.removeEventListener('resize', updateChildWidth);
      };
    }, []);
  

  return (
    <div 
      ref={parentRef}
      className=""
      style={{
        backgroundImage: `url(${bg})`,
        backgroundAttachment: 'fixed',
      }}
    >
      <Header childWidth={childWidth}/>
      <a className="flex pt-[140px]">
        <Images />
      </a>
      <div className={`main flex w-[100%] justify-center mt-[50px] `}>
        <div className='w-[1200px] flex'>
          <div className='w-[100%] container mx-auto px-10 '>
            <Routes>
              <Route path="/" element={<Trang_Chu Width={childWidth}/>} />
              <Route path="/Trang_Chu/:pageNumber?" element={<Trang_Chu resultLocation="/main/Trang_Chu" Width={childWidth} />} />
              <Route path="/Dien_thoai_Taplet/:pageNumber?" element={<Dien_thoai_Taplet resultLocation="/main/Kien_thuc_khoa_hoc" Width={childWidth} />} />
              <Route path="/Laptop/:pageNumber?" element={<Laptop resultLocation="/main/Lich_su_truyen_thong" Width={childWidth} />} />
              <Route path="/Am_thanh/:pageNumber?" element={<Am_thanh resultLocation="/main/Truyen_tranh" Width={childWidth} />} />
              <Route path="/Dong_ho_Camera/:pageNumber?" element={<Dong_ho_Camera resultLocation="/main/Van_hoc_nuoc_ngoai" Width={childWidth} />} />
              <Route path="/Do_gia_dung/:pageNumber?" element={<Do_gia_dung resultLocation="/main/Van_hoc_Viet_Nam" Width={childWidth} />} />
              <Route path="/Phu_kien/:pageNumber?" element={<Phu_kien resultLocation="/main/Van_hoc_Viet_Nam" Width={childWidth} />} />
              <Route path="/PC_man_hinh_May_in/:pageNumber?" element={<PC_man_hinh_May_in resultLocation="/main/Van_hoc_Viet_Nam" Width={childWidth} />} />
              <Route path="/Tivi/:pageNumber?" element={<Tivi resultLocation="/main/Van_hoc_Viet_Nam" Width={childWidth} />} />
              <Route path="/Favorite/:pageNumber?" element={<Favorite resultLocation="/main/Favorite" Width={childWidth} />} />
            </Routes>
          </div>
        </div>
      </div>
    </div>
  );
}

export default Main