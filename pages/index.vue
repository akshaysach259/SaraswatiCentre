<template>
  <div>
    <NavOne :pageName="pageName" />
    <BannerThree />
    <CourseCatTwo />
    <AboutTwo />
    <CurrentAffairs />
    <CourseOne />
    <CountdownOne />
    <SwipperBanner />
    <BlogCarousel />
    <Testimonial />
    <CallToActionFive />
    <Footer />
  </div>
</template>
<script>
import CurrentAffairs from "../components/CurrentAffairs";
import VideoOne from "../components/VideoOne";
import NavOne from "../components/NavOne";
import Footer from "../components/Footer";
import SwipperBanner from "../components/SwipperBanner";
import AboutTwo from "../components/AboutTwo";
import BannerThree from "../components/BannerThree";
import CourseCatTwo from "../components/CourseCatTwo";
import CountdownOne from "../components/CountdownOne";
import CourseCatThree from "../components/CourseCatThree";
import CallToActionOne from "../components/CallToActionOne";
import TeamTab from "../components/TeamTab";
import CourseOne from "../components/CourseOne";
import BlogCarousel from "../components/BlogCarousel";
import CallToActionSix from "../components/CallToActionSix";
import Testimonial from "../components/Testimonial";
import VideoThree from "../components/VideoThree";
import ClientsLogoOne from "../components/ClientsLogoOne";
import CallToActionFive from "../components/CallToActionFive";
import CourseCategory from "../components/CourseCategory";

export default {
  components: {
    CurrentAffairs,
    VideoOne,
    Footer,
    NavOne,
    CourseCategory,
    SwipperBanner,
    AboutTwo,
    BannerThree,
    CourseOne,
    BlogCarousel,
    CountdownOne,
    CourseCatTwo,
    CourseCatThree,
    CallToActionOne,
    TeamTab,
    CourseOne,
    CallToActionSix,
    Testimonial,
    VideoThree,
    ClientsLogoOne,
    CallToActionFive,
  },
  data() {
    return {
      pageName: "index",
    };
  },
  head() {
    return {
      title: "SaraswatiCentre | Home",
    };
  },
};
</script>

<style scoped>
</style>