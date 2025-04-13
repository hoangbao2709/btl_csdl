import {BrowserRouter, Routes, Route} from "react-router-dom"
import Admin from './components/app/pages/Admin/index';
import Product  from "./components/app/pages/Product/product";
import Main from './components/app/pages/main';
import React from 'react';
import "./App.css"
import SignupForm  from "./components/app/pages/header/sign_up";
import SigninForm  from "./components/app/pages/header/sign_in";

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route index element={<Main />} />
        <Route path="/admin*" element={<Admin />} />
        <Route path="/main*" element={<Main />} />
        <Route path="/Product/:page?/:name?" element={<Product />} />
        <Route path="/Products/:name?" element={<Product />} />
        <Route path="/sign_up" element={<SignupForm />} />
        <Route path="/sign_in" element={<SigninForm />} />
      </Routes>
    </BrowserRouter>
  )
}

export default App
