<template>
  <div>
    <NavOne />
    <PageHeader title="News Details" img="../assets/images/blog.jpg" />
    <NewsDetails :blog="blog" :blogImageURL="blogImageURL" />
    <Footer />
  </div>
</template>
<script>
import PageHeader from "../../components/PageHeader";
import NavOne from "../../components/NavOne";
import Footer from "../../components/Footer";
import NewsDetails from "../../components/NewsDetails";
import axios from "axios";
export default {
  components: { NewsDetails, Footer, NavOne, PageHeader },
  head() {
    return {
      title: "SaraswatiCentre  | News Details",
    };
  },
  data() {
    return {
      URL: "https://admin.saraswaticentre.com",
      blog: "",
      blogImageURL: "",
    };
  },
  mounted() {
    this.loadCourse();
  },
  methods: {
    async loadCourse() {
      axios
        .get(`${this.URL}/blogs/${this.$route.params.id}`)
        .then((response) => {
          this.blog = response.data;
          this.blogImageURL = this.blog.Image770X427.url;
        })
        .catch((error) => {
          console.log(error);
          this.errored = true;
        });
    },
  },
};
</script>
