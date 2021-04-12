<template>
  <section class="course-category-two">
    <div class="container text-center">
      <div class="inner-container">
        <marquee>{{ MarqueeText }}<a :href="`${Link}`"> Learn more</a></marquee>
        <div class="course-category-two__carousel owl-carousel owl-theme">
          <div class="item">
            <div class="course-category-two__single color-1">
              <div class="course-category-two__icon">
                <img
                  src="/assets/images/icons/sbi.png"
                /><!-- /.kipso-icon-camera -->
              </div>
              <!-- /.course-category-two__icon -->
              <h3 class="course-category-two__title">
                <a href="#">SBI Clerk</a>
              </h3>
              <!-- /.course-category-two__title -->
            </div>
            <!-- /.course-category-two__single -->
          </div>
          <div class="item">
            <div class="course-category-two__single color-4">
              <div class="course-category-two__icon">
                <img src="/assets/images/icons/ibps.png" />
              </div>
              <!-- /.course-category-two__icon -->
              <h3 class="course-category-two__title">
                <a href="#">IBPS Clerk</a>
              </h3>
              <!-- /.course-category-two__title -->
            </div>
            <!-- /.course-category-two__single -->
          </div>
          <!-- /.item -->
          <div class="item">
            <div class="course-category-two__single color-3">
              <div class="course-category-two__icon">
                <img
                  src="/assets/images/icons/sbi.png"
                /><!-- /.kipso-icon-camera -->
              </div>
              <!-- /.course-category-two__icon -->
              <h3 class="course-category-two__title"><a href="#">SBI PO</a></h3>
              <!-- /.course-category-two__title -->
            </div>
            <!-- /.course-category-two__single -->
          </div>
          <!-- /.item -->
          <div class="item">
            <div class="course-category-two__single color-3">
              <div class="course-category-two__icon">
                <img
                  src="/assets/images/icons/ibps.png"
                /><!-- /.kipso-icon-camera -->
                <!-- /.kipso-icon-camera -->
              </div>
              <!-- /.course-category-two__icon -->
              <h3 class="course-category-two__title">
                <a href="#">IBPS PO</a>
              </h3>
              <!-- /.course-category-two__title -->
            </div>
            <!-- /.course-category-two__single -->
          </div>
          <div class="item">
            <div class="course-category-two__single color-5">
              <div class="course-category-two__icon">
                <img src="/assets/images/icons/gdpi.png" />
                <!-- /.kipso-icon-camera -->
              </div>
              <!-- /.course-category-two__icon -->
              <h3 class="course-category-two__title"><a href="#">GDPI</a></h3>
              <!-- /.course-category-two__title -->
            </div>
            <!-- /.course-category-two__single -->
          </div>
          <!-- /.item -->
          <div class="item">
            <div class="course-category-two__single color-4">
              <div class="course-category-two__icon">
                <img src="/assets/images/icons/ibps.png" />
              </div>
              <!-- /.course-category-two__icon -->
              <h3 class="course-category-two__title">
                <a href="#">IBPS Clerk</a>
              </h3>
              <!-- /.course-category-two__title -->
            </div>
            <!-- /.course-category-two__single -->
          </div>
          <!-- /.item -->
          <div class="item">
            <div class="course-category-two__single color-5">
              <div class="course-category-two__icon">
                <img src="/assets/images/icons/gdpi.png" />
                <!-- /.kipso-icon-camera -->
              </div>
              <!-- /.course-category-two__icon -->
              <h3 class="course-category-two__title"><a href="#">GDPI</a></h3>
              <!-- /.course-category-two__title -->
            </div>
            <!-- /.course-category-two__single -->
          </div>
          <!-- /.item -->

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
      URL: "https://admin.saraswaticentre.com",
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
      axios.get(this.URL + "/Marquees").then((response) => {
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
