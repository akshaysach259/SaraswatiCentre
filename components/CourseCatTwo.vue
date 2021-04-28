<template>
  <section class="course-category-two">
    <div class="container text-center">
      <div class="inner-container">
        <marquee>
          <span v-for="Marquee in Marquees" :key="Marquee.id">
            <a class="marqueeText" :href="`${Marquee.Link}`">{{
              Marquee.Text
            }}</a>
          </span>
        </marquee>
        <div class="course-category-two__carousel owl-carousel owl-theme">
          <div class="item" href="/courses">
            <a href="/courses">
              <div class="course-category-two__single color-1">
                <div class="course-category-two__icon">
                  <img
                    src="/assets/images/icons/sbi.png"
                  /><!-- /.kipso-icon-camera -->
                </div>
                <!-- /.course-category-two__icon -->
                <h3 class="course-category-two__title">
                  <a href="/courses">SBI Clerk</a>
                </h3>
                <!-- /.course-category-two__title -->
              </div>
            </a>
            <!-- /.course-category-two__single -->
          </div>
          <div class="item" href="/courses">
            <a href="/courses">
              <div class="course-category-two__single color-4">
                <div class="course-category-two__icon">
                  <img src="/assets/images/icons/ibps.png" />
                </div>
                <!-- /.course-category-two__icon -->
                <h3 class="course-category-two__title">
                  <a href="/courses">IBPS Clerk</a>
                </h3>
                <!-- /.course-category-two__title -->
              </div>
            </a>
            <!-- /.course-category-two__single -->
          </div>

          <!-- /.item -->
          <div class="item" href="/courses">
            <a href="/courses">
              <div class="course-category-two__single color-3">
                <div class="course-category-two__icon">
                  <img
                    src="/assets/images/icons/sbi.png"
                  /><!-- /.kipso-icon-camera -->
                </div>
                <!-- /.course-category-two__icon -->
                <h3 class="course-category-two__title">
                  <a href="/courses">SBI PO</a>
                </h3>
                <!-- /.course-category-two__title -->
              </div>
            </a>
            <!-- /.course-category-two__single -->
          </div>
          <!-- /.item -->
          <div class="item" href="/courses">
            <a href="/courses">
              <div class="course-category-two__single color-3">
                <div class="course-category-two__icon">
                  <img
                    src="/assets/images/icons/ibps.png"
                  /><!-- /.kipso-icon-camera -->
                  <!-- /.kipso-icon-camera -->
                </div>
                <!-- /.course-category-two__icon -->
                <h3 class="course-category-two__title">
                  <a href="/courses">IBPS PO</a>
                </h3>
                <!-- /.course-category-two__title -->
              </div>
            </a>
            <!-- /.course-category-two__single -->
          </div>
          <div class="item" href="/courses">
            <a href="/courses">
              <div class="course-category-two__single color-5">
                <div class="course-category-two__icon">
                  <img src="/assets/images/icons/gdpi.png" />
                  <!-- /.kipso-icon-camera -->
                </div>
                <!-- /.course-category-two__icon -->
                <h3 class="course-category-two__title">
                  <a href="/courses">GDPI</a>
                </h3>
                <!-- /.course-category-two__title -->
              </div>
            </a>
            <!-- /.course-category-two__single -->
          </div>
          <!-- /.item -->
          <div class="item">
            <a href="/courses">
              <div class="course-category-two__single color-4">
                <div class="course-category-two__icon">
                  <img src="/assets/images/icons/ibps.png" />
                </div>
                <!-- /.course-category-two__icon -->
                <h3 class="course-category-two__title">
                  <a href="/courses">IBPS Clerk</a>
                </h3>
                <!-- /.course-category-two__title -->
              </div>
            </a>
            <!-- /.course-category-two__single -->
          </div>
          <!-- /.item -->
          <div class="item">
            <a href="/courses">
              <div class="course-category-two__single color-5">
                <div class="course-category-two__icon">
                  <img src="/assets/images/icons/gdpi.png" />
                  <!-- /.kipso-icon-camera -->
                </div>
                <!-- /.course-category-two__icon -->
                <h3 class="course-category-two__title">
                  <a href="/courses">GDPI</a>
                </h3>
                <!-- /.course-category-two__title -->
              </div>
            </a>
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
      Marquees: [],
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
        this.Marquees = response.data;
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
.marqueeText {
  color: #606366;
  margin-right: 40px;
}
</style>
