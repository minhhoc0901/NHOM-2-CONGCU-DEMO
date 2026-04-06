import axios from "axios";
import { useState, useEffect } from "react";
import { useParams, Link } from "react-router-dom";
import { CONFIG } from "../config";
import { getDisplayImageUrl } from "../utils/imageUtils";
import "../styles/LocationCSS/LocationDetailPage.css";

// Components
import WeatherSection from "../components/LocationDetail/WeatherSection";
import MapSection from "../components/LocationDetail/MapSection";
import IntroSection from "../components/LocationDetail/IntroSection";
import HighlightSection from "../components/LocationDetail/HighlightSection";
import TimingSection from "../components/LocationDetail/TimingSection";
import TravelSection from "../components/LocationDetail/TravelSection";
import GallerySection from "../components/LocationDetail/GallerySection";
import FoodSection from "../components/LocationDetail/FoodSection";
import TipsSection from "../components/LocationDetail/TipsSection";
import Sidebar from "../components/LocationDetail/Sidebar";
import CommentSection from "../components/LocationDetail/CommentSection";

const LocationDetailPage = () => {
  const { id } = useParams();

  const [location, setLocation] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  const [weatherData, setWeatherData] = useState(null);
  const [weatherError, setWeatherError] = useState(null);

  const [viewport, setViewport] = useState({
    latitude: 13.5,
    longitude: 109.3,
    zoom: 10,
    width: "100%",
    height: "400px",
  });

  const OPENWEATHER_API_KEY =
    process.env.REACT_APP_OPENWEATHER_API_KEY || "095cde61e730fd9406235de1237e97c1";

  // Fetch location data
  useEffect(() => {
    const fetchLocation = async () => {
      try {
        setLoading(true);
        const { data } = await axios.get(`${CONFIG.API_API_URL}/locations/${id}`, {
          timeout: 5000,
          headers: { "Content-Type": "application/json" },
        });
        setLocation(data);
      } catch (err) {
        setError("Không thể lấy dữ liệu địa điểm: " + err.message);
        console.error("Chi tiết lỗi:", err);
      } finally {
        setLoading(false);
      }
    };

    fetchLocation();
  }, [id]);

  // Fetch weather data
  useEffect(() => {
    const fetchWeather = async () => {
      if (!location?.coordinates) return;

      try {
        const { latitude, longitude } = location.coordinates;
        const { data } = await axios.get(
          `https://api.openweathermap.org/data/2.5/weather?lat=${latitude}&lon=${longitude}&units=metric&appid=${OPENWEATHER_API_KEY}`
        );
        setWeatherData(data);
        setWeatherError(null);
      } catch (err) {
        console.error("Error fetching weather data:", err);
        setWeatherError("Không thể tải dữ liệu thời tiết. Vui lòng thử lại sau.");
        setWeatherData(null);
      }
    };

    fetchWeather();
  }, [location, OPENWEATHER_API_KEY]);

  // Update map viewport when coordinates change
  useEffect(() => {
    if (location?.coordinates) {
      const { latitude, longitude } = location.coordinates;
      setViewport((prev) => ({ ...prev, latitude, longitude, zoom: 12 }));
    }
  }, [location]);

  // Scroll helper
  const scrollToSection = (sectionId) => {
    document.getElementById(sectionId)?.scrollIntoView({ behavior: "smooth" });
  };

  // Handle loading and errors
  if (loading) return <div className="container mx-auto p-4">Đang tải dữ liệu...</div>;
  if (error) return <div className="container mx-auto p-4">Lỗi: {error}</div>;
  if (!location) return <div className="container mx-auto p-4">Không tìm thấy địa điểm!</div>;

  const getImageUrl = (imagePath) => getDisplayImageUrl(imagePath);

  return (
    <div className="location-detail-page container mx-auto p-4">
      <div className="main-location-content flex flex-col md:flex-row gap-8">
        {/* Main Content */}
        <div className="content-left flex-1">
          <h1 className="text-3xl font-bold mb-2">{location.title}</h1>
          <p className="text-lg text-gray-600 mb-4">{location.subtitle || "Không có phụ đề"}</p>

          <IntroSection
            location={{ introduction: location.introduction }}
            imageMapper={getImageUrl}
          />

          <HighlightSection
            location={{ whyVisit: location.whyVisit }}
            imageMapper={getImageUrl}
          />

          <TimingSection location={{ bestTime: location.bestTimes || [] }} />

          <WeatherSection weatherData={weatherData} weatherError={weatherError} location={location} />

          <TravelSection location={{ travel: location.travelMethods, ticketPrice: location.travelInfo?.ticketPrice, tip: location.travelInfo?.tip }} />

          {location.coordinates ? (
            <MapSection viewport={viewport} setViewport={setViewport} />
          ) : (
            <div>Không có dữ liệu bản đồ cho địa điểm này.</div>
          )}

          <GallerySection location={{ experiences: location.experiences || [] }} imageMapper={getImageUrl} />

          <FoodSection location={{ cuisine: location.cuisine || [] }} imageMapper={getImageUrl} />

          <TipsSection location={{ tips: location.tips || [] }} />

          <CommentSection locationId={id} />

          <Link to="/locations" className="text-blue-500 hover:underline mb-4 inline-block">
            Quay lại danh sách
          </Link>
        </div>

        {/* Sidebar */}
        <Sidebar
          location={{
            nearby: location.nearby || [],
            nearbyHotels: location.nearbyHotels || [],
          }}
          scrollToSection={scrollToSection}
        />
      </div>
    </div>
  );
};

export default LocationDetailPage;