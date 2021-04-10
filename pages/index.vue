<template>
  <div>
    <NavOne />
    <BannerThree />
    <CourseCatTwo />
    <AboutTwo />
    <CourseOne />
    <CountdownOne />
    <BannerThreeSecond />
    <BlogCarousel />
    <!-- <CourseCategory /> -->
    <Testimonial />
    <CallToActionFive />
    <Footer />
  </div>
</template>
<script>
import NavOne from "../components/NavOne";
import Footer from "../components/Footer";
import BannerThreeSecond from "../components/BannerThreeSecond";
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
    Footer,
    NavOne,
    CourseCategory,
    BannerThreeSecond,
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
  head() {
    return {
      title: "SaraswatiCentre | Home 3",
    };
  },
};
</script>

<style scoped>
</style>