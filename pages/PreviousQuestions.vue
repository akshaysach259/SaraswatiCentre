<template>
  <div>
    <NavOne />
    <PageHeader title="" />
    <PreviousYearQuestions />
    <Footer />
  </div>
</template>
<script>
import PreviousYearQuestions from "../components/PreviousYearQuestions";
import PageHeader from "../components/PageHeader";
import NavOne from "../components/NavOne";
import Footer from "../components/Footer";
export default {
  name: "PreviousQuestions",
  components: { Footer, NavOne, PageHeader, PreviousYearQuestions },
  head() {
    return {
      title: "SaraswatiCentre | Contact",
    };
  },
};
</script>
