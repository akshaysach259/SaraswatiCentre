<template>
    <div>
       <NavOne/>
        <PageHeader title="Testimonials" img="assets/images/contactus.png" />
       <TestimonialPage />
       <Footer />
    </div>
</template>


<script>
import NavOne from "../components/NavOne";
import Footer from '../components/Footer';
import TestimonialPage from '../components/TestimonialPage';
import PageHeader from '../components/PageHeader';
export default {
    components:{
        NavOne,
        Footer,
        TestimonialPage,
        PageHeader
    },
    head() {
    return {
      title: "SaraswatiCentre | Testimonials",
    };
  },
    name : 'Testimonials'

}
</script>