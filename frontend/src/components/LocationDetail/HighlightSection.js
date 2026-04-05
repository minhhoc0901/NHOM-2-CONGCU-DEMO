import React from "react";

const HighlightSection = ({ location, imageMapper }) => {
  const architecture = location.whyVisit?.architecture;

  const renderArchitecture = () => {
    if (!architecture) return <p>Không có thông tin kiến trúc.</p>;

    return (
      <div>
        <h3 className="text-xl font-medium">{architecture.title || "Không có tiêu đề"}</h3>
        <p>{architecture.text || "Không có thông tin"}</p>
        {architecture.image && (
          <img
            src={imageMapper(architecture.image)}
            alt={architecture.title || "Kiến trúc"}
            className="w-full h-48 object-cover rounded-lg mt-2"
            onError={(e) => {
              e.target.src = "https://via.placeholder.com/300x200?text=No+Image";
            }}
          />
        )}
      </div>
    );
  };

  return (
    <section id="highlight-location" className="highlight-location mb-8">
      <h2 className="text-2xl font-semibold mb-4">Vì sao bạn nên ghé thăm?</h2>
      <div className="highlight-location-grid grid grid-cols-1 md:grid-cols-2 gap-4">
        {renderArchitecture()}
      </div>
      <p className="mt-4">{location.whyVisit?.culture || "Không có thông tin về văn hóa"}</p>
    </section>
  );
};

export default HighlightSection;