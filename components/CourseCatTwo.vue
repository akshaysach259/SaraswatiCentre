<template>
  <section class="course-category-two">
    <div class="container text-center">
      <div class="inner-container">
        <marquee>{{ MarqueeText }}<a href="ran"> Learn more</a></marquee>
        <div class="course-category-two__carousel owl-carousel owl-theme">
          <div class="item">
            <div class="course-category-two__single color-1">
              <div class="course-category-two__icon">
                <i class="kipso-icon-desktop"></i
                ><!-- /.kipso-icon-camera -->
              </div>
              <!-- /.course-category-two__icon -->
              <h3 class="course-category-two__title">
                <a href="#">Banking</a>
              </h3>
              <!-- /.course-category-two__title -->
            </div>
            <!-- /.course-category-two__single -->
          </div>
          <!-- /.item -->
          <div class="item">
            <div class="course-category-two__single color-2">
              <div class="course-category-two__icon">
                <i class="kipso-icon-web-programming"></i
                ><!-- /.kipso-icon-camera -->
              </div>
              <!-- /.course-category-two__icon -->
              <h3 class="course-category-two__title"><a href="#">SSC</a></h3>
              <!-- /.course-category-two__title -->
            </div>
            <!-- /.course-category-two__single -->
          </div>
          <!-- /.item -->
          <div class="item">
            <div class="course-category-two__single color-3">
              <div class="course-category-two__icon">
                <i class="kipso-icon-music-player"></i
                ><!-- /.kipso-icon-camera -->
              </div>
              <!-- /.course-category-two__icon -->
              <h3 class="course-category-two__title"><a href="#">UPSC</a></h3>
              <!-- /.course-category-two__title -->
            </div>
            <!-- /.course-category-two__single -->
          </div>
          <!-- /.item -->
          <div class="item">
            <div class="course-category-two__single color-4">
              <div class="course-category-two__icon">
                <i class="kipso-icon-camera"></i
                ><!-- /.kipso-icon-camera -->
              </div>
              <!-- /.course-category-two__icon -->
              <h3 class="course-category-two__title">
                <a href="#">Banking</a>
              </h3>
              <!-- /.course-category-two__title -->
            </div>
            <!-- /.course-category-two__single -->
          </div>
          <!-- /.item -->
          <div class="item">
            <div class="course-category-two__single color-5">
              <div class="course-category-two__icon">
                <i class="kipso-icon-targeting"></i
                ><!-- /.kipso-icon-camera -->
              </div>
              <!-- /.course-category-two__icon -->
              <h3 class="course-category-two__title"><a href="#">SSC</a></h3>
              <!-- /.course-category-two__title -->
            </div>
            <!-- /.course-category-two__single -->
          </div>
          <!-- /.item -->
          <div class="item">
            <div class="course-category-two__single color-6">
              <div class="course-category-two__icon">
                <i class="kipso-icon-health"></i
                ><!-- /.kipso-icon-camera -->
              </div>
              <!-- /.course-category-two__icon -->
              <h3 class="course-category-two__title">
                <a href="#">English</a>
              </h3>
              <!-- /.course-category-two__title -->
            </div>
            <!-- /.course-category-two__single -->
          </div>
          <!-- /.item -->
          <div class="item">
            <div class="course-category-two__single color-1">
              <div class="course-category-two__icon">
                <i class="kipso-icon-desktop"></i
                ><!-- /.kipso-icon-camera -->
              </div>
              <!-- /.course-category-two__icon -->
              <h3 class="course-category-two__title"><a href="#">Other</a></h3>
              <!-- /.course-category-two__title -->
            </div>
            <!-- /.course-category-two__single -->
          </div>
          <!-- /.item -->
          <div class="item">
            <div class="course-category-two__single color-2">
              <div class="course-category-two__icon">
                <i class="kipso-icon-web-programming"></i
                ><!-- /.kipso-icon-camera -->
              </div>
              <!-- /.course-category-two__icon -->
              <h3 class="course-category-two__title"><a href="#">Other</a></h3>
              <!-- /.course-category-two__title -->
            </div>
            <!-- /.course-category-two__single -->
          </div>
          <!-- /.item -->

          <!-- /.item -->
        </div>
        <!-- /.course-category-two__carousel owl-carousel owl-theme -->
      </div>
      <!-- /.inner-container -->
    </div>
    <!-- /.container -->
  </section>
</template>

<script>
import axios from "axios";
export default {
  name: "CourseCatTwo",
  data() {
    return {
      URL: "http://localhost:1337",
      MarqueeText: "",
      Link: "",
      courses: null,
    };
  },
  mounted() {
    this.loadMarqueeText();
    this.loadCourses();
  },
  methods: {
    async loadMarqueeText() {
      axios.get(this.URL + "/Moving-Texts").then((response) => {
        this.MarqueeText = response.data[0].Text;
        this.Link = response.data[0].Link;
      });
    },
    async loadCourses() {
      axios
        .get(`${this.URL}/Courses`)
        .then((response) => {
          this.courses = response.data;
          console.log(this.courses[0].Title);
        })
        .catch((error) => {
          console.log(error);
          this.errored = true;
        });
    },
  },
};
</script>

<style scoped>
</style>
