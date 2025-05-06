import logoDark from "./../images/cellphones-logo.webp";
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faList } from '@fortawesome/free-solid-svg-icons';
import { faHeart } from '@fortawesome/free-regular-svg-icons';
import { faBagShopping } from '@fortawesome/free-solid-svg-icons';
import { faBook } from '@fortawesome/free-solid-svg-icons';
import Search from './search'
import React, { useRef, useEffect, useState } from 'react';
import { faUser } from '@fortawesome/free-solid-svg-icons';
import { faChevronDown } from '@fortawesome/free-solid-svg-icons';
import { Navigation, Pagination, Scrollbar, A11y, Autoplay } from 'swiper/modules';
import { Swiper, SwiperSlide } from 'swiper/react';
import image1 from './../images/Top banner_Chinh hang.svg';
import image2 from './../images/Top banner_Giao hang.svg';
import image3 from './../images/Top banner_Smember.svg';
import image4 from './../images/Top banner_Thu cu.svg';
import './css/style.css';
import 'swiper/css';
import 'swiper/css/navigation';
import 'swiper/css/pagination';
import 'swiper/css/scrollbar';
import Modal from "./../helper/modal";
import chibi from "./../images/chibi2.webp";

let category = [
    "Điện thoại, Tablet",
    "Laptop",
    "Âm thanh, Mic thu âm",
    "Đồng hồ, Camera",
    "Đồ gia dụng",
    "Phụ kiện",
    "PC, màn hình, Máy in",
    "Tivi",
];

let linkCategory = [
    "/main/Dien_thoai_Taplet",
    "/main/Laptop",
    "/main/Am_thanh",
    "/main/Dong_ho_Camera",
    "/main/Do_gia_dung",
    "/main/Phu_kien",
    "/main/PC_man_hinh_May_in",
    "/main/Tivi",
];

const listCategory = category.map((element, index) => {
    return (
        <li key={index} className="border-b  border-black pt-[5px] bg-white hover:text-[red]">
            <FontAwesomeIcon icon={faBook} />
            <a className="pl-[5px] ml-[10px]" href={linkCategory[index]}>{element}</a>
        </li>
    );
});


export default function Header(item) {
    const [isVisible, setIsVisible] = useState(true);
    const lastScrollY = useRef(0);
    const [favourite, setFavourite] = useState([]);
    const [listFavourite, setListFavourite] = useState(false);
    const [store, setStore] = useState([]);
    const [listStore, setListStore] = useState(false);
    const resultsRef1 = useRef();
    const resultsRef2 = useRef();
    const [images, setImages] = useState([]);
    const [open, setOpen] = useState(false);
    const [ID, setID] = useState("");

    useEffect(() => {
      async function loadImages() {
        const imagePaths = import.meta.glob('../../BackEnd/php/images/trang_chu/**/*.{jpg,jpeg,png,gif,svg,webp}');
        const imagePromises = Object.values(imagePaths).map(importer => importer());
        const loadedImages = await Promise.all(imagePromises);
        setImages(loadedImages.map(module => module.default));
      }
      
      loadImages();
    }, []);

    let imageFavorite = useState([]);
    let imageStore = useState([]);
    const [clickFavorite, setClickFavorite] = useState(Array(favourite.length).fill(false));
    const [clickStore, setClickStore] = useState(Array(store.length).fill(false));
    const getImgFavourite = (img) => {
        let result = [];
        if(favourite.length > 0){
            favourite.forEach(element => {
                const filteredImages = img.filter(ele => {
                    const fileName = ele.split('/');
                    const pathParts = fileName[fileName.length - 1].split("_");
                    return pathParts.includes("0") && pathParts.includes(element.id.toString());
                });
                result.push(filteredImages);
            });
        }
        return result;
    };

    const getImgStore = (img) => {
        let result = [];
        if(store.length > 0)
            store.forEach(element => {
                const filteredImages = img.filter(ele => {
                    const fileName = ele.split('/');
                    const pathParts = fileName[fileName.length - 1].split("_");
                    return pathParts.includes("0") && pathParts.includes(element.id.toString());
                });
                result.push(filteredImages);
            });
        return result;
    };

    useEffect(() => {
        const storedData = sessionStorage.getItem('user_id');
        if (storedData) {
            setID(storedData);
        }
    }, []);

    imageFavorite = getImgFavourite(images);
    imageStore = getImgStore(images);
    useEffect(() => {
        const fetchData = async () => {
          try {
            const response = await fetch(`https://localhost/btl_csdl/src/components/app/BackEnd/php/uploads/getAllFavorite.php?phone=${encodeURIComponent(ID)}`);
            const data = await response.json();
            setFavourite(data);
          } catch (error) {
            // console.error("Error fetching favorite status:", error);
          }
        };
        fetchData();
    }, [favourite]);

    useEffect(() => {
        const fetchData = async () => {
          try {
            const response = await fetch(`https://localhost/btl_csdl/src/components/app/BackEnd/php/uploads/getAllStore.php?phone=${encodeURIComponent(ID)}`);
            const data = await response.json();
            setStore(data);
          } catch (error) {
            console.error("Error fetching favorite status:", error);
          }
        };
        fetchData();
    }, [store]);

    useEffect(() => {
        const handleScroll = () => {
            if (window.scrollY > 700) {
                setIsVisible(false);
            } else {
                setIsVisible(true);
            }
            lastScrollY.current = window.scrollY;
        };

        window.addEventListener('scroll', handleScroll);

        return () => {
            window.removeEventListener('scroll', handleScroll);
        };
    }, []);

    useEffect(() => {
        const indexFavorite = clickFavorite.findIndex(value => value === true);
        console.log(indexFavorite);
        if (indexFavorite !== -1) {
            fetch(`https://localhost/btl_csdl/src/components/app/BackEnd/php/uploads/deleteFavorite.php?id=${encodeURIComponent(indexFavorite)}&phone=${encodeURIComponent(ID)}`)
                .then(response => response.json()) 
                .catch(error => console.error('Error fetching data:', error));
                setClickFavorite(prevCheckedItems => {
                    const newCheckedItems = [...prevCheckedItems];
                    newCheckedItems[indexFavorite] = false; 
                    return newCheckedItems;
                });
        }
        const indexStore = clickStore.findIndex(value => value === true);
        if (indexStore !== -1) {
            fetch(`https://localhost/btl_csdl/src/components/app/BackEnd/php/uploads/deleteStore.php?id=${encodeURIComponent(indexStore)}&phone=${encodeURIComponent(ID)}`)
                .then(response => response.json()) 
                .catch(error => console.error('Error fetching data:', error));
                setClickStore(prevCheckedItems => {
                    const newCheckedItems = [...prevCheckedItems];
                    newCheckedItems[indexStore] = false; 
                    return newCheckedItems;
                });
        }
    }, [clickFavorite, clickStore]);

    function handleClickFavorite(id) {
        setClickFavorite(prevCheckedItems => {
            const newCheckedItems = [...prevCheckedItems];
            newCheckedItems[id] = true; 
            return newCheckedItems;
        });
    }

    function handleClickStore(id) {
        setClickStore(prevCheckedItems => {
            const newCheckedItems = [...prevCheckedItems];
            newCheckedItems[id] = true; 
            return newCheckedItems;
        });
    }

    function formatPrice(price) {
        return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',') + 'đ';
    }

    const ListFavourite = () => {
        return (
            <div ref={resultsRef1} className="w-[280px] absolute shadow-2xl p-[4px] mt-[20px] border-2 font-mono border-[#C2C2D9] rounded-sm bg-white text-black right-0 z-50">
            <p className="text-[17px] py-[5px] mb-[5px] flex justify-center items-center bg-[#D51C24] text-white rounded-md"> Danh sách yêu thích của tôi</p>
            <Swiper
                modules={[Navigation, Pagination, Scrollbar, A11y]}
                spaceBetween={0}
                slidesPerView={3}
                scrollbar={{ draggable: true }}
                direction="vertical"
                className={`h-[360px] m-0`}
            >
                {favourite.length > 0 && favourite.map((element, index) => (
                    <SwiperSlide className="m-0" key={index}> 
                        <div className="fit object-cover flex items-center">
                            <a className="fit object-cover flex items-center" href={`/Product/${element.Page}/${element.id}`}>
                                <img className="h-[100px]" src={imageFavorite[index]}></img>
                                <div className="ml-2 w-[160px]">
                                    <p className="text-[14px]">{element.name}</p>
                                    <p className="text-[14px]">Tập: {element.tap}</p>
                                    <p className="text-[14px]">Giá sản phẩm: {formatPrice(element.gia)}</p>
                                </div>
                            </a>
                            <div className="text-[red] cursor-pointer" onClick={() => {handleClickFavorite(element.id)}}>x</div>
                        </div>
                    </SwiperSlide>
                ))}
            </Swiper>
            <a className="text-[17px] py-[5px] mb-[5px] flex justify-center items-center bg-[#17AF91] text-white font-bold rounded-sm" href="/main/Favorite"> Xem thêm</a>
        </div>
        );
    };

    const ListStore = () => {
        return (
            <div ref={resultsRef2} className="w-[280px] absolute shadow-2xl p-[4px] mt-[20px] border-2 font-mono border-[#C2C2D9] rounded-sm bg-white text-black right-0 z-50">
            <p className="text-[14px] py-[5px] mb-[5px] flex bg-[#D51C24] text-white rounded-md p-3"> Giỏ hàng của tôi ({store.length || 0} Sản phẩm)</p>
            <Swiper
                modules={[Navigation, Pagination, Scrollbar, A11y]}
                spaceBetween={0}
                slidesPerView={3}
                scrollbar={{ draggable: true }}
                direction="vertical"
                className={`h-[360px] m-0`}
            >
                {store.length > 0 && store.map((element, index) => (
                    <SwiperSlide className="m-0" key={index}> 
                        <div className="fit object-cover flex items-center" href={`/Product/tat_ca_san_pham/${element.id}`}>
                            <img className="h-[100px]" src={imageStore[index]}></img>
                            <div className="ml-2 w-[160px]">
                                <p className="text-[14px]">{element.name}</p>
                                <p className="text-[14px]">Tập: {element.tap}</p>
                                <p className="text-[14px]">Giá sản phẩm: {formatPrice(element.gia)}</p>
                            </div>
                            <div className="text-[red] cursor-pointer" onClick={() => {handleClickStore(element.id)}}>x</div>
                        </div>
                    </SwiperSlide>
                ))}
            </Swiper>
            <p className="text-[20px]">Tạm tính: <label className="font-bold text-[red]">{formatPrice(store.length > 0 && store.reduce((accumulator, item) => {
                    return accumulator + Number(item.gia);
                }, 0))}</label> 
            </p>
            <div className="flex w-full">
                <a className="text-[17px] w-[50%] m-[5px] py-[5px] mb-[5px] flex justify-center items-center bg-[white] text-[red] border border-[red] rounded-sm" href="/main/Favorite"> Xem giỏ hàng</a>
                <a className="text-[17px] w-[50%] m-[5px] py-[5px] mb-[5px] flex justify-center items-center font-bold bg-[red] text-white rounded-sm" href="/Payment"> Thanh toán</a>
            </div>
        </div>
        );
    };

    const handleClickOutside = (event) => {
        if (resultsRef1.current && !resultsRef1.current.contains(event.target)) {
            setListFavourite(false);
        }
        if (resultsRef2.current && !resultsRef2.current.contains(event.target)) {
            setListStore(false);
        }
    };
    
    useEffect(() => {
        document.addEventListener('mousedown', handleClickOutside);
        return () => {
            document.removeEventListener('mousedown', handleClickOutside);
        };
    }, []);

    function ClickFavorite(){
        setListFavourite(!listFavourite);
    }

    function ClickStore(){
        setListStore(!listStore);
    }

    let image_banner = [
        image1,
        image2,
        image3,
        image4,
    ];
    
    return (
        <div className="z-100">
            <Modal open={open} onClose={() => setOpen(false)}>
                <div className="h-[300px] w-[330px] bg-white shadow-lg rounded-2xl">
                    <p className="w-full flex items-center justify-center text-[red] font-bold text-[40px]">Smember</p>
                    <div className="w-full flex items-center justify-center">
                        <img src={chibi} alt="" />
                    </div>
                    {!ID && 
                        <div>
                            <p className="text-black text-center ">Vui lòng đăng nhập tài khoản Smember để xem ưu đãi và thanh toán dễ dàng hơn.</p>
                            <div className="flex h-[102px] w-full items-center justify-center">
                                <a href="/sign_up" className="cursor-pointer transition-transform transform hover:scale-105 w-[44%] mx-[3%] text-[20px] font-bold text-[red] flex items-center justify-center py-[10px] border-3 rounded-lg border-[red]">Đăng ký</a>
                                <a href="/sign_in" className="cursor-pointer transition-transform transform hover:scale-105 w-[44%] mx-[3%] text-[20px] font-bold text-[white] flex items-center justify-center py-[10px] border-3 bg-[red] rounded-lg border-[red]">Đăng nhập</a>
                            </div>
                        </div>
                    }
                    {ID && 
                        <div>
                            <p className="text-black text-center ">Bạn có muốn đăng xuất ?</p>
                            <div className="flex h-[102px] w-full items-center justify-center">
                                <div onClick={()=>{
                                    sessionStorage.clear(),
                                    setID(""),
                                    window.location.reload()
                                }} className="cursor-pointer bg-[red] transition-transform transform hover:scale-105 w-full mx-[3%] text-[20px] font-bold text-[white] flex items-center justify-center py-[10px] border-3 rounded-lg border-[red]">Đăng xuất</div>
                            </div>
                        </div>
                    }
                </div>
            </Modal>
            <header id="yourElementId" className={`fixed z-50 w-full top-0 left-0 transition-transform duration-700 ${isVisible ? 'translate-y-0' : '-translate-y-full'}`}>
                <div className="flex z-50 h-[40px] pl-[100px] bg-[#E9EFFF] items-center">
                <Swiper
                    autoplay={{
                    delay: 5000,
                    disableOnInteraction: false,
                    }}
                    slidesPerView={3}
                    modules={[Autoplay, Pagination, Navigation]}
                    className="w-[1200px] justify-center items-center rounded-4xl"
                >
                    {image_banner.map((image, index) => (
                        <SwiperSlide key={index}>
                            <img className="size-90 rounded-4xl" src={image} alt={`Slide ${index + 1}`} />
                        </SwiperSlide>
                    ))}
                </Swiper>
                </div>
                <div className="flex z-50 pl-[100px] bg-[#D70018] items-center">
                    <a href="/main/Trang_Chu" className="cursor-pointer logo flex items-center">
                        <img src={logoDark} className="h-[50px] my-[10px] mr-[50px]" alt="Logo" />
                    </a>
                    <ul className={`absolute z-100 block w-[45%] right-[500px]`}>
                        <form className="mr-10 w-full">
                            <Search childWidth={item.childWidth}/>
                        </form>
                    </ul>
                    <div className="flex items-center h-[80px] group relative ">
                        <div className="p-[10px] bg-[#DF3346]  rounded-lg">
                            <FontAwesomeIcon className="text-[white] font-bold" icon={faList} />
                            <label className="text-white font-normal px-[10px]" style={{ fontStyle: 'normal' }}>Danh mục</label>
                        </div>
                        <ul className="absolute rounded-lg py-[10px] top-[70px] bg-white  w-[300px] text-[23px] px-[15px] items-center hidden group-hover:block">
                            {listCategory}
                        </ul>
                    </div>
                    <ul className="absolute flex p-[30px] pt-[10px] pb-[10px] text-white text-[20px] right-[3%]">
                        <li className="text-[30px] px-[20px] hover:text-[red] cursor-pointer mx-[5px] relative rounded-lg transition delay-150 duration-300 ease-in-out hover:bg-[#EEFFF7]">
                            <FontAwesomeIcon onClick={ClickFavorite} icon={faHeart} />
                            <p className="absolute top-[-10px] h-[25px] w-[25px] flex items-center justify-center rounded-[50%] bg-[red] right-0 text-white text-[15px]">{favourite.length || 0}</p>
                            {listFavourite && ListFavourite()}
                        </li>
                        <li className="text-[30px] px-[20px] hover:text-[red] cursor-pointer mx-[5px] relative rounded-lg hover:bg-[#EEFFF7]">
                            <FontAwesomeIcon onClick={ClickStore} icon={faBagShopping} />
                            <p className="absolute top-[-10px] h-[25px] w-[25px] flex items-center justify-center rounded-[50%] bg-[red] right-0 text-white text-[15px]">{store.length || 0}</p>
                            {listStore && ListStore()}
                        </li>
                        <li onClick={() => {setOpen(!open);}} className="text-[30px] relative px-[20px] hover:text-[red] cursor-pointer mx-[5px] rounded-lg hover:bg-[#EEFFF7]">
                            <FontAwesomeIcon icon={faUser} />
                        </li>
                    </ul>
                </div>
            </header>
        </div>
    );
}


