import React, { createContext, useContext, useState } from 'react';

const GlobalContext = createContext();

export const GlobalProvider = ({ children }) => {
    const [globalVar, setGlobalVar] = useState('Giá trị ban đầu');

    return (
        <GlobalContext.Provider value={{ globalVar, setGlobalVar }}>
            {children}
        </GlobalContext.Provider>
    );
};

export const useGlobalContext = () => {
    return useContext(GlobalContext);
};