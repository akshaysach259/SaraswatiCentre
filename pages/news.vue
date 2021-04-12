<template>
  <div>
    <NavOne />
    <PageHeader title="Blog" img="../assets/images/blog.jpg" />
    <News />
    <Footer />
  </div>
</template>
<script>
import PageHeader from "../components/PageHeader";
import NavOne from "../components/NavOne";
import Footer from "../components/Footer";
import News from "../components/News";
export default {
  components: { Footer, NavOne, PageHeader, News },
  head() {
    return {
      title: "SaraswatiCentre | News",
    };
  },
};
</script>
