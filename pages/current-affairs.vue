<template>
  <div>
    <NavOne />
    <PageHeader title="News" img="assets/images/contactus.png" />
    <CurrentAffairPage />
    <Footer />
  </div>
</template>


<script>
import NavOne from "../components/NavOne";
import CurrentAffairPage from "../components/CurrentAffairPage";
import Footer from "../components/Footer";
import TestimonialPage from "../components/TestimonialPage";
import PageHeader from "../components/PageHeader";
export default {
  components: {
    NavOne,
    Footer,
    TestimonialPage,
    PageHeader,
    CurrentAffairPage,
  },
  head() {
    return {
      title: "SaraswatiCentre | Current Affairs",
    };
  },
  name: "current-affairs",
};
</script>