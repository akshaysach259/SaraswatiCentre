<template>
  <div>
    <NavOne :pageName="pageName" />
    <PageHeader title="Course Details" />
    <CourseDetails :course="course" :courseImageURL="courseImageURL" />
    <Footer />
  </div>
</template>
<script>
import PageHeader from "../../components/PageHeader";
import NavOne from "../../components/NavOne";
import Footer from "../../components/Footer";
import CourseDetails from "../../components/CourseDetails";
import axios from "axios";
export default {
  data() {
    return {
      URL: "https://admin.saraswaticentre.com",
      course: "",
      courseImageURL: "",
      pageName: "course_details",
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
          this.courseImageURL = this.course.Image770X447.url;
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
