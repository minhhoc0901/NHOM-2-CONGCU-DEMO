import React from "react";
import { Routes, Route } from "react-router-dom";
import HomePage from "./pages/HomePage";
import LocationListPage from "./pages/LocationListPage";
import LocationDetailPage from "./pages/LocationDetailPage";
import LoginPage from "./pages/auth/LoginPage";
import RegisterPage from "./pages/auth/RegisterPage";
import ForgotPasswordPage from "./pages/auth/ForgotPasswordPage";
import ProfilePage from "./pages/auth/ProfilePage";
import AboutPage from "./pages/AboutPage";
import ContactPage from "./pages/ContactPage";
import CreateItinerary from "./pages/CreateItinerary";
import UserTours from "./components/users/Tour/UserTours";
import TourPreview from "./components/users/Tour/TourPreview";
import EditTour from "./components/users/Tour/EditTour";
import PlanPage from "./pages/PlanPage";
import PrivateRoute from "./components/auth/PrivateRoute";
import TourListPage from "./pages/TourListPage";
import BookingPage from "./pages/BookingPage";
import PaymentPage from "./pages/PaymentPage";
import PaymentResultPage from "./pages/PaymentResultPage";
import MyBookingsPage from "./pages/MyBookingsPage";
import InvoicePage from "./pages/InvoicePage";
import VerifyInvoicePage from "./pages/VerifyInvoicePage.js";
import ItineraryDetail from "./components/ItineraryDetail/ItineraryDetail.js";
const AppRouter = () => {
  return (
    <Routes>
      <Route path="/" element={<HomePage />} />
      <Route path="/locations" element={<LocationListPage />} />
      <Route path="/locations/:id" element={<LocationDetailPage />} />
      <Route path="/login" element={<LoginPage />} />
      <Route path="/register" element={<RegisterPage />} />
      <Route path="/forgot-password" element={<ForgotPasswordPage />} />
      <Route path="/about" element={<AboutPage />} />
      <Route path="/contact" element={<ContactPage />} />
      <Route
        path="/profile"
        element={
          <PrivateRoute>
            <ProfilePage />
          </PrivateRoute>
        }
      />
      <Route path="/plan" element={<PlanPage />} />

      <Route path="/tours" element={<TourListPage />} />
      <Route path="/tours/:id" element={<ItineraryDetail />} />

      {/* ===== BOOKING & PAYMENT ROUTES ===== */}
      <Route path="/booking/:tourId" element={<BookingPage />} />
      <Route path="/payment/:bookingId" element={<PaymentPage />} />
      <Route path="/bookings/invoice/:bookingId" element={<InvoicePage />} />
      <Route path="/payment/result" element={<PaymentResultPage />} />
      <Route path="/verify-invoice/:token" element={<VerifyInvoicePage />} />

      {/* ===== TOUR & ITINERARY ROUTES ===== */}
      <Route path="/create-itinerary" element={<CreateItinerary />} />

      <Route
        path="/user/my-tours"
        element={
          <PrivateRoute>
            <UserTours />
          </PrivateRoute>
        }
      />
      <Route
        path="/user/tour-preview/:id"
        element={
          <PrivateRoute>
            <TourPreview />
          </PrivateRoute>
        }
      />
      <Route
        path="/user/edit-tour/:id"
        element={
          <PrivateRoute>
            <EditTour />
          </PrivateRoute>
        }
      />
      <Route
        path="/profile/my-bookings"
        element={
          <PrivateRoute>
            <MyBookingsPage />
          </PrivateRoute>
        }
      />
    </Routes>
  );
};

export default AppRouter;
