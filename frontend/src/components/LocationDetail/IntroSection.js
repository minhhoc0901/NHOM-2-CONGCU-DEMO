import React from "react";

const IntroSection = ({ location, imageMapper }) => {
  const { introduction } = location;

  const renderImage = () => {
    if (!introduction?.image) return null;
    return (
      <img
        src={imageMapper(introduction.image)}
        alt="Toàn cảnh"
        className="w-full h-64 object-cover rounded-lg mb-4"
        onError={(e) => {
          e.target.src = "https://via.placeholder.com/300x200?text=No+Image";
        }}
      />
    );
  };

  return (
    <section id="intro" className="intro mb-8">
      <h2 className="text-2xl font-semibold mb-4">Giới thiệu</h2>
      {renderImage()}
      <p>{introduction?.text || "Không có thông tin"}</p>
    </section>
  );
};

export default IntroSection;