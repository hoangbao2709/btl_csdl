import { X } from "react-feather"

export default function Modal({ open, onClose, children }) {
  return (
    <div
      onClick={onClose}
      className={`
        fixed inset-0 flex z-50 justify-center items-center transition-colors
        ${open ? "visible bg-black/60" : "invisible"}
      `}
    >
      <div
        onClick={(e) => e.stopPropagation()}
        className={`
          ${open ? "scale-100 opacity-100" : "scale-125 opacity-0"}
        `}
      >
        <div
          onClick={onClose}
          className="absolute cursor-pointer top-2 right-2 p-1 rounded-lg text-gray-400 bg-white hover:bg-gray-50 hover:text-gray-600"
        >
          <X />
        </div>
        {children}
      </div>
    </div>
  )
}