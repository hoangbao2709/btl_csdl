import { BrowserRouter, Routes, Route } from "react-router-dom";
import Admin from './components/app/pages/Admin/index';
import Product from "./components/app/pages/Product/product";
import Main from './components/app/pages/main';
import React from 'react';
import "./App.css";
import SignupForm from "./components/app/pages/header/sign_up";
import SigninForm from "./components/app/pages/header/sign_in";
import { GlobalProvider } from './GlobalContext'; 
import SelectMethodPage from "./components/app/pages/payment/page";

function App() {
  return (
    <GlobalProvider> 
      <BrowserRouter>
        <Routes>
          <Route index element={<Main />} />
          <Route path="/admin*" element={<Admin />} />
          <Route path="/main*" element={<Main />} />
          <Route path="/Product/:page?/:name?" element={<Product />} />
          <Route path="/Products/:name?" element={<Product />} />
          <Route path="/sign_up" element={<SignupForm />} />
          <Route path="/sign_in" element={<SigninForm />} />
          <Route path="/Payment/:value?" element={<SelectMethodPage/>} />

        </Routes>
      </BrowserRouter>
    </GlobalProvider>
  )
}

export default App;