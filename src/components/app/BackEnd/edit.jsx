import { useState, useRef, useEffect } from "react";
import $ from "jquery";
import Modal from "../pages/helper/modal";
import "./css/style.css";
import "swiper/css";
import "swiper/css/pagination";
import { Swiper, SwiperSlide } from "swiper/react";
import "swiper/swiper-bundle.css";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faStar } from "@fortawesome/free-solid-svg-icons";
import { faHeart } from "@fortawesome/free-solid-svg-icons";
import { faMinus } from "@fortawesome/free-solid-svg-icons";
import { Minus } from "react-feather";
import { Data } from "./getData";
import { DndContext, closestCorners } from "@dnd-kit/core";
import {
  SortableContext,
  verticalListSortingStrategy,
  useSortable,
} from "@dnd-kit/sortable";
import Task from "./image";
import {
  KeyboardSensor,
  PointerSensor,
  useSensor,
  useSensors,
} from "@dnd-kit/core";
import { arrayMove, sortableKeyboardCoordinates } from "@dnd-kit/sortable";
import { Navigation, Pagination, Scrollbar, A11y } from "swiper/modules";
import "swiper/css";
import "swiper/css/navigation";
import "swiper/css/pagination";
import "swiper/css/scrollbar";
import { faChevronDown } from "@fortawesome/free-solid-svg-icons";
import { faChevronUp } from "@fortawesome/free-solid-svg-icons";
import { CSS } from "@dnd-kit/utilities";
import "./css/Task.css";
import { useLocation } from "react-router-dom";

export default function Input() {
  const location = useLocation();
  const pathSegments = location.pathname.split("/");
  const value = pathSegments[pathSegments.length - 1];
  const [open, setOpen] = useState(false);
  const [open2, setOpen2] = useState(false);
  const [edit, setEdit] = useState(false);
  const [submittedId, setSubmittedId] = useState("");
  const [submittedName, setSubmittedName] = useState("");
  const [submittedGia_goc, setSubmittedGia_goc] = useState("");
  const [submittedGiam_gia, setSubmittedGiam_gia] = useState("");
  const [submittedCompany, setSubmittedCompany] = useState("");
  const [submittedTrong_luong, setSubmittedTrong_luong] = useState("");
  const [submittedDescription, setSubmittedDescription] = useState("");
  const [data, setData] = useState([]);
  const chillSwiperRef = useRef(null);
  const [from, setFrom] = useState(0);
  const [to, setTo] = useState(3);
  const swiperRef = useRef(null);
  const [index, setIndex] = useState(0);
  const [id, setID] = useState();
  const [files, setFiles] = useState([]);
  const IDRef = useRef(null);
  const NameRef = useRef(null);
  const CompanyRef = useRef(null);
  const DescriptionRef = useRef(null);
  const trong_luongRef = useRef(null);
  const gia_gocRef = useRef(null);
  const giam_giaRef = useRef(null);

  useEffect(() => {
    fetch(
      `https://localhost/btl_csdl/src/components/app/BackEnd/php/uploads/Data.php?&url=${encodeURIComponent(
        "trang_chu"
      )}&variable=${encodeURIComponent(value)}`
    )
      .then((response) => response.json())
      .then((data) => {
        setData(data);
      })
      .catch((error) => {
        console.error("Error fetching data:", error);
      });
  }, [value]);

  useEffect(() => {
    if (data && data.length > 0) {
      const initialValue = data[0].id;
      setSubmittedId(initialValue);
    }
    if (data && data.length > 0) {
      const initialValue = data[0].name;
      setSubmittedName(initialValue);
    }
    if (data && data.length > 0 ) {
      const initialValue = data[0].company;
      setSubmittedCompany(initialValue);
    }
    if (data && data.length > 0 ) {
      const initialValue = data[0].description;
      setSubmittedDescription(initialValue);
    }
    if (data && data.length > 0 ) {
      const initialValue = data[0].giam_gia;
      setSubmittedGiam_gia(initialValue);
    }
    if (data && data.length > 0 ) {
      const initialValue = data[0].trong_luong;
      setSubmittedTrong_luong(initialValue);
    }
    if (data && data.length > 0 ) {
      const initialValue = data[0].gia_goc;
      setSubmittedGia_goc(initialValue);
    }
  }, [data]);

  const rating = 4;
  const [final, setFullfinal] = useState({
    am_thanh: false,
    dien_thoai_taplet: false,
    dong_ho_camera: false,
    do_gia_dung: false,
    laptop: false,
    pc_man_hinh_may_in: false,
    phu_kien: false,
    tivi: false,
  });

  const [item, setFullitem] = useState({
    id: "",
    name: "",
    gia_goc: "",
    gia: "",
    giam_gia: "",
    link: "",
    am_thanh: false,
    dien_thoai_taplet: false,
    dong_ho_camera: false,
    do_gia_dung: false,
    laptop: false,
    pc_man_hinh_may_in: false,
    phu_kien: false,
    tivi: false,
  });

  const handleChangeNew = (event) => {
    const { name, checked } = event.target;
    if (name in item) {
      setFullfinal({
        ...Object.keys(item).reduce((acc, key) => {
          acc[key] = false;
          return acc;
        }, {}),
        [name]: checked,
      });
    }
  };

  const handleEdit = () => {
    setEdit(!edit);
  };

  async function convertPathToFile(path, fileName) {
    try {
        const response = await fetch(path);
        if (!response.ok) throw new Error('Network response was not ok');
        const blob = await response.blob();
        return new File([blob], fileName, { type: blob.type });
    } catch (error) {
        console.error('Error fetching file:', error);
        return null;
    }
}

  async function loadAndProcessImages() {
        try {
            const imagePaths = import.meta.glob('./php/images/trang_chu/**/*.{jpg,jpeg,png,gif,svg,webp}');
            const imagePromises = Object.values(imagePaths).map(importer => importer());
            const loadedImages = await Promise.all(imagePromises);
            const img = loadedImages.map(module => module.default);
            const filesTemp = img.filter(element => {
                const parts = element.split("/");
                if (parts.length > 3) {
                    const subParts = parts[parts.length - 1].split("_");
                    return subParts.length > 0 && subParts[0] === value;
                }
                return false;
            });

            const fileConversionPromises = filesTemp.map((element, index) => 
                convertPathToFile(element, element)
                .then(file => file ? { id: index, title: file } : null)
            );

            const convertedFiles = (await Promise.all(fileConversionPromises)).filter(Boolean);
            console.log(convertedFiles);
            setFiles(convertedFiles);
        } catch (error) {
            console.error('Error in image processing:', error);
        }
    }

    useEffect(() => {
        loadAndProcessImages();
    }, []);

    

  function formatPrice(price) {
    return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + "đ";
  }
  function formatGram(price) {
    return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
  }
  const handleChange = (event) => {
    const { name, value, checked, type } = event.target;
    if (name === "name") setSubmittedName(value);
    if (name === "company") setSubmittedCompany(value);
    if (name === "gia_goc") setSubmittedGia_goc(value);
    if (name === "giam_gia") setSubmittedGiam_gia(value);
    if (name === "trong_luong") setSubmittedTrong_luong(value + " gram");
    if (name === "description") setSubmittedDescription(value);

    if (type === "checkbox") {
      setFullitem((prev) => ({
        ...prev,
        [name]: checked,
      }));
    } else {
      setFullitem((prev) => ({
        ...prev,
        [name]: value,
      }));
    }
  };

  const inputRef = useRef(null);

  const handleSubmit = (e) => {
    e.preventDefault();
    const form = $(e.target);
    const formData = new FormData(form[0]);
    for (let i = 0; i < files.length; i++) {
      formData.append("file[]", files[i].title);
    }

    $.ajax({
      type: "POST",
      url: form.attr("action"),
      data: formData,
      processData: false,
      contentType: false,
      success(data) {
        if (data.success) {
          setID(id + 1);
        } else {
          alert(data.message);
        }
      },
    });
  };

  const handleDrop = (event) => {
    event.preventDefault();
    const droppedFiles = event.dataTransfer.files;
    const fileTemp = Array.from(droppedFiles);

    if (fileTemp.length > 0) {
      const image = [];
      if (fileTemp.length > 0) {
        fileTemp.map((element, index) => {
          setFiles((prevFiles) => [
            ...prevFiles,
            { id: index, title: element },
          ]);
        });
      }
    }
  };

  const handleDragOver = (e) => {
    e.preventDefault();
  };

  const handleBrowseClick = () => {
    inputRef.current.click();
  };

  const handleFileChange = (e) => {
    const selectedFiles = Array.from(e.target.files);
    if (selectedFiles.length > 0) {
      const image = [];
      if (selectedFiles.length > 0) {
        selectedFiles.map((element, index) => {
          setFiles((prevFiles) => [
            ...prevFiles,
            { id: index, title: element },
          ]);
        });
      }
    }
  };

  const handleMinus = (index) => {
    setFiles((prevFiles) => prevFiles.filter((_, i) => i !== index));
  };

  const sensors = useSensors(
    useSensor(PointerSensor),
    useSensor(KeyboardSensor, {
      coordinateGetter: sortableKeyboardCoordinates,
    })
  );

  const getTaskPos = (id) => files.findIndex((task) => task.id === id);

  const handleDragEnd = (event) => {
    const { active, over } = event;

    if (active.id === over.id) return;

    setFiles((tasks) => {
      const originalPos = getTaskPos(active.id);
      const newPos = getTaskPos(over.id);

      return arrayMove(tasks, originalPos, newPos);
    });
  };

  function handleUp() {
    if (files.length > 0 && from + to < files.length) {
      if (chillSwiperRef.current) {
        chillSwiperRef.current.slideTo(from + 1);
      }
      setFrom(from + 1);
    }
  }

  function handleDown() {
    if (from > 0) {
      if (chillSwiperRef.current) {
        chillSwiperRef.current.slideTo(from - 1);
      }
      setFrom(from - 1);
    }
  }

  function HandleClick(index) {
    setIndex(index);
    if (swiperRef.current) {
      swiperRef.current.slideTo(index);
    }
  }

  return (
    <div className="w-[100%] lg justify-center content-center relative flex h-screen">
      <form
        className="w-[20%] z-10 content-center"
        action={"http://localhost:8000/update.php"}
        method="post"
        onSubmit={handleSubmit}
      >
        <div>
          <div className="grid ">
            <div class="max-w-sm mb-[10px]">
              <div class="relative">
                <input
                  type="text"
                  id="id"
                  name="id"
                  defaultValue={submittedId}
                  onChange={handleChange}
                  class="peer py-4 px-[10px] block w-full bg-transparent  border-t-transparent border-b-2 border-x-transparent border-b-gray-200 sm:text-sm placeholder:text-transparent  focus:ring-0 disabled:opacity-50 disabled:pointer-events-none
                            focus:pt-6
                            focus:pb-2
                            not-placeholder-shown:pt-6
                            not-placeholder-shown:pb-2
                            autofill:pt-6
                            autofill:pb-2"
                  placeholder="ID"
                />
                <label
                  for="hs-floating-underline-input-email"
                  class="absolute top-0 start-0 py-4 px-0 h-full border border-transparent sm:text-sm truncate pointer-events-none transition ease-in-out duration-100 origin-[0_0] peer-disabled:opacity-50 peer-disabled:pointer-events-none
                        peer-focus:scale-90
                        peer-focus:translate-x-0.5
                        peer-focus:-translate-y-1.5
                        peer-focus:text-gray-500
                        peer-not-placeholder-shown:scale-90
                        peer-not-placeholder-shown:translate-x-0.5
                        peer-not-placeholder-shown:-translate-y-1.5
                        peer-not-placeholder-shown:text-gray-500"
                >
                  ID
                </label>
              </div>
              <div class="relative">
                <input
                  type="text"
                  id="name"
                  name="name"
                  defaultValue={submittedName}
                  onChange={handleChange}
                  class="peer py-4 px-[10px] block w-full bg-transparent border-t-transparent border-b-2 border-x-transparent border-b-gray-200 sm:text-sm placeholder:text-transparent focus:border-t-transparent focus:border-x-transparent focus:border-b-blue-500 focus:ring-0 disabled:opacity-50 disabled:pointer-events-none
                                focus:pt-6
                                focus:pb-2
                                not-placeholder-shown:pt-6
                                not-placeholder-shown:pb-2
                                autofill:pt-6
                                autofill:pb-2"
                  placeholder="ID"
                />
                <label
                  for="hs-floating-underline-input-email"
                  class="absolute top-0 start-0 py-4 px-0 h-full sm:text-sm truncate pointer-events-none transition ease-in-out duration-100 border border-transparent  origin-[0_0] peer-disabled:opacity-50 peer-disabled:pointer-events-none
                                peer-focus:scale-90
                                peer-focus:translate-x-0.5
                                peer-focus:-translate-y-1.5
                                peer-focus:text-gray-500
                                peer-not-placeholder-shown:scale-90
                                peer-not-placeholder-shown:translate-x-0.5
                                peer-not-placeholder-shown:-translate-y-1.5
                                peer-not-placeholder-shown:text-gray-500"
                >
                  Name
                </label>
              </div>
              <div class="relative">
                <input
                  type="text"
                  id="company"
                  name="company"
                  defaultValue={submittedCompany}
                  onChange={handleChange}
                  class="peer py-4 px-[10px] block w-full bg-transparent border-t-transparent border-b-2 border-x-transparent border-b-gray-200 sm:text-sm placeholder:text-transparent focus:border-t-transparent focus:border-x-transparent focus:border-b-blue-500 focus:ring-0 disabled:opacity-50 disabled:pointer-events-none
                                focus:pt-6
                                focus:pb-2
                                not-placeholder-shown:pt-6
                                not-placeholder-shown:pb-2
                                autofill:pt-6
                                autofill:pb-2"
                  placeholder="company"
                />
                <label
                  for="hs-floating-underline-input-email"
                  class="absolute top-0 start-0 py-4 px-0 h-full sm:text-sm truncate pointer-events-none transition ease-in-out duration-100 border border-transparent  origin-[0_0] peer-disabled:opacity-50 peer-disabled:pointer-events-none
                                peer-focus:scale-90
                                peer-focus:translate-x-0.5
                                peer-focus:-translate-y-1.5
                                peer-focus:text-gray-500
                                peer-not-placeholder-shown:scale-90
                                peer-not-placeholder-shown:translate-x-0.5
                                peer-not-placeholder-shown:-translate-y-1.5
                                peer-not-placeholder-shown:text-gray-500"
                >
                  Company
                </label>
              </div>
            </div>
            <div className="flex z-0">
              <div
                type="button"
                onClick={() => setOpen2(true)}
                className="z-0 cursor-pointer text-[12px] w-[50%] mr-[5px] text-white bg-red-700 hover:bg-red-800 font-medium rounded-lg text-sm text-center px-3 py-2.5"
              >
                Thêm thông tin sản phẩm
              </div>
              <div
                type="button"
                onClick={() => setOpen(true)}
                className="z-0 cursor-pointer text-[12px] w-[50%] flex justify-center content-center ml-[5px] text-white bg-red-700 hover:bg-red-800 font-medium rounded-lg text-sm text-center py-2.5 "
              >
                <p className="h-full flex items-center justify-center">
                  Chọn trang thêm
                </p>
              </div>
            </div>
            <button
              type="submit"
              className="w-full mt-[10px] cursor-pointer text-white bg-blue-700 hover:bg-blue-800 font-medium rounded-lg text-sm px-5 py-2.5 "
            >
              Submit
            </button>
          </div>
          <Modal open={open2} onClose={() => setOpen2(false)}>
            <div className="z-10 bg-black p-[30px] rounded-2xl w-[500px]">
              <div className="mb-2">
                <label
                  htmlFor="description"
                  className="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                >
                  Mô tả
                </label>
                <input
                  type="text"
                  id="description"
                  name="description"
                  defaultValue={submittedDescription}
                  onChange={handleChange}
                  class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                  placeholder="Mô tả"
                />
              </div>
              <div className="mb-2">
                <label
                  htmlFor="trong_luong"
                  className="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                >
                  Trọng lượng
                </label>
                <input
                  type="text"
                  id="trong_luong"
                  name="trong_luong"
                  defaultValue={submittedTrong_luong}
                  onChange={handleChange}
                  class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                  placeholder="Trọng lượng"
                />
              </div>
              <div className="mb-2">
                <label
                  htmlFor="gia_goc"
                  className="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                >
                  Giá gốc
                </label>
                <input
                  type="text"
                  id="gia_goc"
                  name="gia_goc"
                  defaultValue={submittedGia_goc}
                  onChange={handleChange}
                  class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                  placeholder="Giá gốc"
                />
              </div>
              <div className="mb-2">
                <label
                  htmlFor="giam_gia"
                  className="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                >
                  Giảm giá
                </label>
                <input
                  type="text"
                  id="giam_gia"
                  name="giam_gia"
                  defaultValue={submittedGiam_gia}
                  onChange={handleChange}
                  class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                  placeholder="Giảm giá"
                />
              </div>
            </div>
          </Modal>

          <Modal open={open} onClose={() => setOpen(false)}>
            <div className="z-10 bg-black p-[30px] rounded-2xl">
              <div className="content-center z-10 w-[500px] mt-[30px] flex">
                <ul className="w-[500px] text-sm font-medium text-gray-900 bg-white border border-gray-200 rounded-lg dark:bg-gray-700 dark:border-gray-600 dark:text-black">
                  {Object.keys(final)
                    .filter(
                      (key) =>
                        key.startsWith("am_thanh") ||
                        key.startsWith("dien_thoai_taplet") ||
                        key.startsWith("dong_ho_camera") ||
                        key.startsWith("do_gia_dung") ||
                        key.startsWith("laptop") ||
                        key.startsWith("pc_man_hinh_may_in") ||
                        key.startsWith("phu_kien") ||
                        key.startsWith("tivi")
                    )
                    .map((key) => (
                      <li
                        key={key}
                        className="w-full border-b border-gray-200 dark:border-gray-600"
                      >
                        <div className="flex items-center ps-3 h-[50px]">
                          <input
                            type="checkbox"
                            id={key}
                            name={key}
                            checked={final[key]}
                            onChange={handleChangeNew}
                            className="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded-sm focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-700 dark:focus:ring-offset-gray-700 focus:ring-2 dark:bg-gray-600 dark:border-gray-500"
                          />
                          <label
                            htmlFor={key}
                            className="w-[70%] py-3 ms-2 text-[25px] font-medium text-gray-900 dark:text-gray-300"
                          >
                            {key.replace(/_/g, " ").toUpperCase()}
                          </label>
                        </div>
                      </li>
                    ))}
                </ul>
              </div>
              <div className="mt-[20px]">
                <button
                  onClick={() => {
                    setOpen(false);
                    Object.entries(final).forEach(([key, value], index) => {
                      item[key] = final[key];
                    });
                  }}
                  type="button"
                  className="w-full text-white bg-green-700 hover:bg-green-800 font-medium rounded-lg text-sm px-5 py-2.5 mb-5"
                >
                  Accept
                </button>
                <button
                  onClick={() => {
                    setOpen(false);
                    Object.keys(item)
                      .slice(6)
                      .forEach((key, index) => {
                        item[key] = false;
                        final[key] = false;
                      });
                  }}
                  type="button"
                  className="w-full text-white bg-red-700 hover:bg-red-800 font-medium rounded-lg text-sm px-5 py-2.5"
                >
                  Cancel
                </button>
              </div>
            </div>
          </Modal>
          <div
            className="drag-area z-0 text-[12px] shadow-2xl border-2 border-[#DDDDDD] transition delay-150 duration-300 ease-in-out hover:-translate-y-1 hover:scale-110 hover:text-white hover:bg-white"
            onDrop={handleDrop}
            onDragOver={handleDragOver}
          >
            <div className="icon">
              <i className="fas fa-cloud-upload-alt"></i>
            </div>
            <header className="bold text-[12px]">
              Drag & Drop to Upload File
            </header>
            <span className="bold">OR</span>
            <div className="button m-[10px]" onClick={handleBrowseClick}>
              Browse Image
            </div>
            <input
              type="file"
              name="file"
              ref={inputRef}
              onChange={handleFileChange}
              hidden
              multiple
            />
            {files && <p>File: {files.name}</p>}
          </div>
        </div>
      </form>
      <div className="w-[1000px] ml-[2%] z-0 flex justify-center items-center bg-">
        <div>
          <div className="w-[600px] h-[515px]">
            <div className="z-0 relative overflow-hidden p-0 m-0 mx-[25px] bg-white shadow-lg rounded-lg">
              <div className="relative">
                <Swiper
                  spaceBetween={30}
                  centeredSlides={true}
                  navigation={true}
                  modules={[Navigation]}
                  className="w-full h-auto max-w-[273px] mx-auto"
                  onSwiper={(swiper) => (swiperRef.current = swiper)}
                >
                  {files.map((image, index) => (
                    <SwiperSlide
                      key={index}
                      className="flex justify-center items-center"
                    >
                      <div
                        onClick={() => handleMinus(index)}
                        className="z-10 absolute flex items-center justify-center h-[30px] w-[30px] cursor-pointer top-[3%] right-[3%] bg-red-600 rounded-[50%] transition-transform transform hover:scale-110"
                      >
                        <FontAwesomeIcon
                          className="text-white"
                          icon={faMinus}
                        />
                      </div>
                      <img
                        className="w-full h-auto rounded-lg shadow-md object-cover"
                        src={URL.createObjectURL(image.title)}
                        alt={`Slide ${index + 1}`}
                      />
                    </SwiperSlide>
                  ))}
                </Swiper>
              </div>
            </div>
            <DndContext
              sensors={sensors}
              collisionDetection={closestCorners}
              onDragEnd={handleDragEnd}
            >
              <div className="relative mt-[50px]">
                <SortableContext
                  items={files}
                  strategy={verticalListSortingStrategy}
                >
                  <Swiper
                    modules={[Scrollbar]}
                    spaceBetween={10}
                    slidesPerView={7}
                    scrollbar={{ draggable: true }}
                    style={{ height: "100px" }}
                    allowTouchMove={false}
                    onSwiper={(swiper) => (chillSwiperRef.current = swiper)}
                  >
                    {files.map((image, ind) => {
                      return (
                        <SwiperSlide
                          className="cursor-pointer"
                          onClick={() => HandleClick(ind)}
                        >
                          {edit ? (
                            <Task
                              key={image.id}
                              id={image.id}
                              title={image}
                              handleClick={HandleClick}
                              index={ind}
                            />
                          ) : (
                            <img
                              className="w-[100px] rounded-2xl border-gray-400 h-auto border-2 py-[5px] object-contain "
                              src={URL.createObjectURL(image.title)}
                              alt={`Slide ${index + 1}`}
                            />
                          )}
                        </SwiperSlide>
                      );
                    })}
                  </Swiper>
                </SortableContext>
              </div>
            </DndContext>
            {files.length > 0 ? (
              <div
                class={`inline-flex z-50 items-center justify-center rounded-lg mt-[20px] cursor-pointer h-[50px] w-full bg-[#77CBDE] ${
                  edit ? "bg-[#FF5555] text-[white]" : ""
                }`}
                onClick={handleEdit}
              >
                <span class="w-full inline-flex items-center justify-center text-[14px] font-medium ">
                  {edit ? "Edit Image" : "Show Image"}
                </span>
              </div>
            ) : (
              <div></div>
            )}
          </div>
        </div>
        <div className="w-[45%] h-[515px] rounded-3xl block relative">
          <div className="items-center break-words">
            {submittedName && (
              <div className="break-words font-sans-serif">
                <label className="text-[30px] block break-words">
                  {submittedName}
                </label>
                <div className="flex items-center">
                  <div>
                    <label className="text-[25px]">Rating: </label>
                    {Array.from({ length: 5 }, (_, index) => (
                      <span
                        key={index}
                        className={
                          index < rating ? "text-yellow-500" : "text-gray-400"
                        }
                      >
                        <FontAwesomeIcon icon={faStar} />
                      </span>
                    ))}
                    <label className="text-[25px]">
                      {" | " + 10 + " đánh giá"}{" "}
                    </label>
                    <p className="text-[25px]">Đã bán: 100</p>
                  </div>
                  <label className="text-[30px] pr-[50px] absolute right-0">
                    <FontAwesomeIcon icon={faHeart} />
                  </label>
                </div>
              </div>
            )}
          </div>
          {submittedCompany && (
            <label className="text-[20px]">
              Xuất sứ:{" "}
              <strong className="text-[red]">{submittedCompany}</strong>
            </label>
          )}
          {submittedGia_goc && (
            <div>
              <div className="border-t-2 border-black w-full my-2"></div>
              {submittedGiam_gia && (
                <div className="max-md:flex">
                  <div>
                    <label className="text-[red] text-[20px] mr-[30px]">
                      <strong>
                        {formatPrice(
                          parseInt(
                            parseInt(submittedGia_goc) -
                              (parseInt(submittedGia_goc) *
                                parseInt(submittedGiam_gia)) /
                                100
                          )
                        )}
                      </strong>
                    </label>

                    <label
                      className="text-gray-400 text-[20px] md:absolute md:right-0 line-through"
                      id="original-price"
                    >
                      <strong>{formatPrice(parseInt(submittedGia_goc))}</strong>
                    </label>
                  </div>
                  <div>
                    <label
                      className="text-[18px] max-md:absolute right-0"
                      id="original-price"
                    >
                      <strong>
                        Bạn đã tiết kiệm được{" "}
                        {formatPrice(
                          parseInt(
                            (parseInt(submittedGia_goc) *
                              parseInt(submittedGiam_gia)) /
                              100
                          )
                        )}
                      </strong>
                    </label>
                  </div>
                </div>
              )}
              {!submittedGiam_gia && (
                <div>
                  <div className="mt-4">
                    <label className="text-[red] text-[20px]">
                      <strong>{formatPrice(submittedGia_goc)}</strong>
                    </label>
                  </div>
                </div>
              )}
              <div className="border-t-2 border-black w-full mt-2"></div>
            </div>
          )}

          {submittedTrong_luong && (
            <li>
              <label className="text-[20px]">
                Trọng lượng:{" "}
                <strong className="text-[red]">
                  {formatGram(submittedTrong_luong)}
                </strong>
              </label>
            </li>
          )}
        </div>
      </div>
    </div>
  );
}
