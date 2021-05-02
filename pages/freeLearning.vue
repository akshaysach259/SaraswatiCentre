<template>
  <div>
    <NavOne />
    <PageHeader title="Learning" img="assets/images/contactus.png" />
    <SocialIcons />
    <Footer />
  </div>
</template>

<script>
import NavOne from "../components/NavOne";
import Footer from "../components/Footer";
import PageHeader from "../components/PageHeader";
import SocialIcons from "../components/SocialIcons";
export default {
  components: { Footer, NavOne, PageHeader, SocialIcons },
};
</script>
