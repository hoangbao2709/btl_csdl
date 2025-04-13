import React from "react";
import Header from "./header";
import logo from "./../images/chibi2.webp";
const SigninForm = () => {
  return (
    <div>
      <Header></Header>
      <div className="bg-white flex items-center justify-center min-h-screen">
        <div className="bg-white p-8 rounded-lg border border-gray-200 shadow-2xl w-[700px]">
          <div className="text-center mb-6">
            <img src={logo} alt="Logo" className="mx-auto mb-4" />
          </div>
          <form>
            <div class="relative">
              <input
                type="text"
                class="peer py-4 px-[10px] block w-full bg-transparent border-t-transparent border-b-2 border-x-transparent border-b-gray-200 sm:text-sm placeholder:text-transparent focus:border-t-transparent focus:border-x-transparent focus:border-b-blue-500 focus:ring-0 disabled:opacity-50 disabled:pointer-events-none
                                focus:pt-6
                                focus:pb-2
                                not-placeholder-shown:pt-6
                                not-placeholder-shown:pb-2
                                autofill:pt-6
                                autofill:pb-2"
                placeholder="Nhập số điện thoại"
              />
              <label
                for="hs-floating-underline-input-email"
                class="absolute top-0 start-0 py-4 px-0 h-full sm:text-sm truncate pointer-events-none transition ease-in-out duration-100 border border-transparent  origin-[0_0] peer-disabled:opacity-50 peer-disabled:pointer-events-none
                                peer-focus:scale-90
                                peer-focus:translate-x-0.5
                                peer-focus:-translate-y-1.5
                                peer-focus:text-[red]
                                peer-not-placeholder-shown:scale-90
                                peer-not-placeholder-shown:translate-x-0.5
                                peer-not-placeholder-shown:-translate-y-1.5
                                peer-not-placeholder-shown:text-[red]"
              >
                Nhập số điện thoại
              </label>
            </div>
            <div class="relative">
              <input
                type="text"
                class="peer py-4 px-[10px] block w-full bg-transparent border-t-transparent border-b-2 border-x-transparent border-b-gray-200 sm:text-sm placeholder:text-transparent focus:border-t-transparent focus:border-x-transparent focus:border-b-blue-500 focus:ring-0 disabled:opacity-50 disabled:pointer-events-none
                                focus:pt-6
                                focus:pb-2
                                not-placeholder-shown:pt-6
                                not-placeholder-shown:pb-2
                                autofill:pt-6
                                autofill:pb-2"
                placeholder="Nhập mật khẩu"
              />
              <label
                for="hs-floating-underline-input-email"
                class="absolute top-0 start-0 py-4 px-0 h-full sm:text-sm truncate pointer-events-none transition ease-in-out duration-100 border border-transparent  origin-[0_0] peer-disabled:opacity-50 peer-disabled:pointer-events-none
                                peer-focus:scale-90
                                peer-focus:translate-x-0.5
                                peer-focus:-translate-y-1.5
                                peer-focus:text-[red]
                                peer-not-placeholder-shown:scale-90
                                peer-not-placeholder-shown:translate-x-0.5
                                peer-not-placeholder-shown:-translate-y-1.5
                                peer-not-placeholder-shown:text-[red]"
              >
                Nhập mật khẩu
              </label>
            </div>

            <div className="h-[40px] w-full flex justify-end items-center">
              <a href="">Quên mật khẩu?</a>
            </div>
            <div
              type="submit"
              class="w-full cursor-pointer bg-red-500 hover:bg-red-600 font-bold text-white px-4 py-2 rounded-lg flex items-center justify-center"
            >
              Đăng ký
            </div>
          </form>
          <p className="mt-4 text-center">
            Bạn chưa có tài khoản?{" "}
            <a href="/sign_up" className="text-red-500">
              Đăng ký ngay
            </a>
          </p>
        </div>
      </div>
    </div>
  );
};

export default SigninForm;
