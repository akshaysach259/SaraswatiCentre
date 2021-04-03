<template>
  <div>
    <NavOne />
    <PageHeader title="Course Details" />
    <CourseDetails :course="course" />
    <Footer />
  </div>
</template>
<script>
import PageHeader from "../components/PageHeader";
import NavOne from "../components/NavOne";
import Footer from "../components/Footer";
import CourseDetails from "../components/CourseDetails";
import axios from "axios";
export default {
  data() {
    return {
      URL: "http://localhost:1337",
      course: "",
    };
  },
  mounted() {
    this.loadCourse();
  },
  methods: {
    async loadCourse() {
      axios
        .get(`${this.URL}/Courses/${this.$route.params.id}`)
        .then((response) => {
          this.course = response.data;
          console.log(this.course);
          console.log(`${this.URL}/Courses/${this.$route.params.id}`);
        })
        .catch((error) => {
          console.log(error);
          this.errored = true;
        });
    },
  },

  components: { CourseDetails, Footer, NavOne, PageHeader },
  head() {
    return {
      title: "Kipso | Course Details",
    };
  },
};
</script>
