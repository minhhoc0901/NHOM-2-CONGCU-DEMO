import React from "react";

const GallerySection = ({ location, imageMapper }) => {
  const renderExperience = (exp, index) => (
    <div key={index}>
      {exp.image && (
        <img
          src={imageMapper(exp.image)}
          alt={exp.text || `Trải nghiệm ${index + 1}`}
          className="w-full h-48 object-cover rounded-lg mb-2"
          onError={(e) => {
            e.target.src = "https://via.placeholder.com/300x200?text=No+Image";
          }}
        />
      )}
      <p>{exp.text || "Không có mô tả"}</p>
    </div>
  );

  if (!location.experiences || location.experiences.length === 0) {
    return (
      <section id="gallery-location" className="gallery-location mb-8">
        <h2 className="text-2xl font-semibold mb-4">Trải nghiệm tại địa điểm</h2>
        <p>Không có thông tin.</p>
      </section>
    );
  }

  return (
    <section id="gallery-location" className="gallery-location mb-8">
      <h2 className="text-2xl font-semibold mb-4">Trải nghiệm tại địa điểm</h2>
      <div className="gallery-location-grid grid grid-cols-1 md:grid-cols-3 gap-4">
        {location.experiences.map(renderExperience)}
      </div>
    </section>
  );
};

export default GallerySection;