import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faBook } from "@fortawesome/free-solid-svg-icons";
import { faList } from "@fortawesome/free-solid-svg-icons";
import { faBars } from "@fortawesome/free-solid-svg-icons";
import Modal from "../helper/modal";
import React, { useState } from "react";
import "./style/style.css";
const PaginationHelper = ({
  data = [],
  checkedItems,
  handleCheckboxChange,
  formatPrice,
  handleStatusChange,
  toggleModal,
  open,
  setAllChecked,
  allChecked,
  edit,
  setID,
  results,
  handleCheckAll
}) => {
  const [currentPage, setCurrentPage] = useState(1);
  const pagination = {
    totalItems: data.length,
    totalItemsPerPage: 10,
    pageRanges: 3,
  };

  const totalItems = pagination.totalItems;
  const totalItemsPerPage = pagination.totalItemsPerPage;
  const totalPages = Math.ceil(totalItems / totalItemsPerPage);
  const pageRange = pagination.pageRanges;

  let xhtmlStart = [],
    xhtmlNext = [],
    xhtmlPrevious = [],
    xhtmlEnd = [],
    xhtmlPages = [];

  let min = Math.max(1, currentPage - Math.floor(pageRange / 2));
  let max = Math.min(totalPages, min + pageRange - 1);

  if (max - min < pageRange - 1) {
    min = Math.max(1, max - (pageRange - 1));
  }

  if (min > 1) {
    xhtmlPages.push(
      <li
        key="start-ellipsis"
        className="flex items-center justify-center p-5 m-3 h-8 leading-tight text-gray-500 bg-white border border-gray-300 rounded-lg hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white"
      >
        ...
      </li>
    );
  }

  function handleClickStart() {
    setCurrentPage(1);
  }

  function handleClickPrev() {
    if (currentPage > 1) {
      setCurrentPage(currentPage - 1);
    }
  }
  function handleClickEnd() {
    setCurrentPage(totalPages);
  }

  function handleClickNext() {
    if (currentPage < totalPages) {
      setCurrentPage(currentPage + 1);
    }
  }

  function handleClickI(page) {
    setCurrentPage(page);
  }

  for (let i = min; i <= max; i++) {
    xhtmlPages.push(
      <li key={i}>
        <div
          onClick={() => handleClickI(i)}
          className={`flex items-center justify-center p-5 m-3 h-8 leading-tight ${
            i === currentPage
              ? "text-blue-600 border border-gray-300 rounded-lg bg-blue-50"
              : "text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700"
          } dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white`}
          aria-current={i === currentPage ? "page" : undefined}
        >
          {i}
        </div>
      </li>
    );
  }

  xhtmlStart.push(
    <li onClick={handleClickStart}>
      <div className="flex items-center max-sm:hidden justify-center p-5 m-3 h-8  leading-tight text-gray-500 bg-white border border-e-0 rounded-lg border-gray-300 rounded-s-lg hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">
        Start
      </div>
    </li>
  );
  xhtmlPrevious.push(
    <li onClick={handleClickPrev}>
      <div className="flex items-center justify-center p-5 m-3 h-8  leading-tight text-gray-500 bg-white rounded-lg border border-e-0 border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">
        &#60;
      </div>
    </li>
  );

  xhtmlNext.push(
    <li onClick={handleClickNext}>
      <div className="flex items-center justify-center p-5 m-3 h-8 leading-tight text-white bg-black border rounded-lg border-gray-300hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">
        &#62;
      </div>
    </li>
  );
  xhtmlEnd.push(
    <li onClick={handleClickEnd}>
      <div className="flex max-sm:hidden items-center max-sm:hiden justify-center p-5 m-3 h-8 leading-tight text-white bg-white border border-gray-300 rounded-lg hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">
        End
      </div>
    </li>
  );

  if (max < totalPages) {
    xhtmlPages.push(
      <li
        key="end-ellipsis"
        className="flex items-center justify-center p-5 m-3 h-8 leading-tight text-white bg-white border border-gray-300 rounded-lg hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white"
      >
        ...
      </li>
    );
  }

  let index = (currentPage - 1) * totalItemsPerPage;
  let max_index = totalItemsPerPage;

  let type;

  edit ? (type = "radio") : (type = "checkbox");

  function getData() {
    const itemsToRender = data.slice(index, index + max_index);

    const paddedItems = [
      ...itemsToRender,
      ...Array(Math.max(0, max_index - itemsToRender.length)).fill({}),
    ];

    return paddedItems.map((element, idx) =>
      element.id ? (
        <ul
          className={`flex text-[20px] h-[50px] w-full ${
            idx % 2 === 0 ? "bg-[#E0E3E7]" : ""
          }`}
          key={element.id}
        >
          <li className="w-[4%] flex items-center justify-center">
            <input 
                type="checkbox" 
                className="size-4 rounded-[50%] cursor-pointer"
                onChange={() => handleCheckboxChange(index, results, element.id)}
                checked={checkedItems.includes(element.id)}
            />
          </li>
          <li className="w-[5%] flex items-center justify-center">
            {element.id || ""}
          </li>
          <li className="w-[30%] flex items-center justify-center overflow-hidden">
            {element.name || ""}
          </li>
          <li className={`w-[13%] flex items-center justify-center`}>
            {formatPrice(element.gia_goc || "")}
          </li>
          <li className={`w-[10%] flex items-center justify-center`}>
            {formatPrice(element.gia || "")}
          </li>
          <li className="w-[10%] flex items-center justify-center">
            {element.giam_gia || ""}
          </li>
          <li className="w-[10%] flex items-center justify-center">
            {element.inventory || ""}
          </li>
          <li
            className={`checkbox-wrapper-8 w-[10%] cursor-pointer rounded-lg flex items-center justify-center`}
          >
            <input
              className="tgl tgl-skewed"
              onClick={() => handleStatusChange(element.id || "")}
              id={`checkbox-${idx}`}
              checked={element.Status === "Active"}
              type="checkbox"
            />
            <label
              className="tgl-btn"
              data-tg-off="Inactive"
              data-tg-on="Active"
              htmlFor={`checkbox-${idx}`}
            ></label>
          </li>
          <li
            className={`w-[10%] flex items-center justify-center cursor-pointer`}
            onClick={() => toggleModal(idx)}
          >
            <FontAwesomeIcon className="size-7" icon={faBars} />
          </li>
          {open[idx] && (
            <Modal open={open[idx]} onClose={() => toggleModal(idx)}>
              <ul
                className={`w-[500px] bg-black p-[30px] rounded-2xl text-[30px] text-white`}
              >
                <li className="px-[2%] bg-[#2D2F39]">
                  Mô tả:{" "}
                  <label className="text-[red]">
                    {element.description || ""}
                  </label>
                </li>
                <li className="px-[2%]">
                  Company:{" "}
                  <label className="text-[red]">{element.Page || ""}</label>
                </li>
                <li className="px-[2%] bg-[#2D2F39]">
                  Trọng lượng:{" "}
                  <label className="text-[red]">
                    {element.trong_luong || ""}
                  </label>
                </li>
              </ul>
            </Modal>
          )}
        </ul>
      ) : (
        <ul
          className={`flex text-[20px] h-[50px] w-full ${
            idx % 2 === 0 ? "bg-[#E0E3E7]" : ""
          }`}
          key={element.id}
        >
          {" "}
        </ul>
      )
    );
  }

  const countStatus = results.reduce(
    (accumulator, item) => {
      if (item.Status === "Active") {
        accumulator.active += 1;
      } else if (item.Status === "Inactive") {
        accumulator.inactive += 1;
      }
      return accumulator;
    },
    { active: 0, inactive: 0 }
  );

  return (
    <div>
      <ul className="flex py-[20px] text-[20px] shadow-2xl rounded-t-lg ">
        <li className="w-[4%] flex items-center justify-center">
            <input 
                type="checkbox" 
                disabled={edit} 
                className="size-4 cursor-pointer" 
                checked={allChecked[currentPage - 1] === true   } 
                onChange={() => handleCheckAll(index, currentPage - 1, data)} 
            />
        </li>
        <li className="w-[5%] flex items-center justify-center">ID</li>
        <li className="w-[30%] flex items-center justify-center">Name</li>
        <li className="w-[13%] flex items-center justify-center">Giá gốc</li>
        <li className="w-[10%] flex items-center justify-center">Giá</li>
        <li className="w-[10%] flex items-center justify-center">Giảm giá</li>
        <li className="w-[10%] flex items-center justify-center">
          Hàng tồn kho
        </li>
        <li className="w-[10%] flex items-center justify-center">Status</li>
        <li className="w-[10%] flex items-center justify-center">Thêm</li>
      </ul>
      <div className="shadow-lg rounded-lg">
        {getData()}
        <div className="flex relative h-[70px] w-full border-t border-[#D0D1D3]">
          <div className="flex  relative items-center text-[20px] ">
            <p className="ml-[10px]"> Tổng số : {results.length}</p>
            <p className="ml-[50px]"> Active: {countStatus.active}</p>
            <p className="ml-[50px]"> Inactive: {countStatus.inactive}</p>
          </div>
          <nav className="absolute right-0">
            <ul className="inline-flex text-[30px] max-sm:text-[15px] max-sm:w-[30]">
              {xhtmlStart}
              {xhtmlPrevious}
              {xhtmlPages}
              {xhtmlNext}
              {xhtmlEnd}
            </ul>
          </nav>
        </div>
      </div>
    </div>
  );
};

export default PaginationHelper;
