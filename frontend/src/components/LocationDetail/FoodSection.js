import React from "react";

const FoodSection = ({ location, imageMapper }) => {
  const renderDish = (dish, index) => (
    <div key={index}>
      {dish.image && (
        <img
          src={imageMapper(dish.image)}
          alt={dish.text || `Ẩm thực ${index + 1}`}
          className="w-full h-48 object-cover rounded-lg mb-2"
          onError={(e) => {
            e.target.src = "https://via.placeholder.com/300x200?text=No+Image";
          }}
        />
      )}
      <p>{dish.text || "Không có mô tả"}</p>
    </div>
  );

  if (!location.cuisine || location.cuisine.length === 0) {
    return (
      <section id="food" className="food mb-8">
        <h2 className="text-2xl font-semibold mb-4">Ẩm thực đặc sắc</h2>
        <p>Không có thông tin.</p>
      </section>
    );
  }

  return (
    <section id="food" className="food mb-8">
      <h2 className="text-2xl font-semibold mb-4">Ẩm thực đặc sắc</h2>
      <div className="food-grid grid grid-cols-1 md:grid-cols-3 gap-4">
        {location.cuisine.map(renderDish)}
      </div>
    </section>
  );
};

export default FoodSection;