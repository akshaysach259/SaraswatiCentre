<template>
  <div>
    <section class="course-one__top-title home-one">
      <div class="container">
        <div class="block-title mb-0">
          <h2 class="block-title__title">
            Explore our <br />
            popular courses
          </h2>
          <!-- /.block-title__title -->
        </div>
        <!-- /.block-title -->
      </div>
      <!-- /.container -->
      <div class="course-one__top-title__curve"></div>
      <!-- /.course-one__top-title__curve -->
    </section>
    <section class="course-one course-one__teacher-details home-one">
      <div class="container">
        <div class="course-one__carousel owl-carousel owl-theme">
          <div class="item">
            <div class="course-one__single color-1">
              <div class="course-one__image">
                <img src="/assets/images/courses/clerk.jpg" alt="" />
                <i class="far fa-heart"></i
                ><!-- /.far fa-heart -->
              </div>
              <!-- /.course-one__image -->
              <div class="course-one__content">
                <a href="#" class="course-one__category">SBI</a
                ><!-- /.course-one__category -->
                <div class="course-one__admin">
                  <img src="/assets/images/team-1-1.jpg" alt="" />
                  by <a href="/teacher-details">Admin</a>
                </div>
                <!-- /.course-one__admin -->
                <h2 class="course-one__title">
                  <a href="/course-details">SBI Clerk</a>
                </h2>
                <!-- /.course-one__title -->
                <div class="course-one__stars">
                  <span class="course-one__stars-wrap">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i> </span
                  ><!-- /.course-one__stars-wrap -->
                  <span class="course-one__count">4.8</span
                  ><!-- /.course-one__count -->
                  <span class="course-one__stars-count">250</span
                  ><!-- /.course-one__stars-count -->
                </div>
                <!-- /.course-one__stars -->
                <div class="course-one__meta">
                  <a href="/course-details"
                    ><i class="far fa-folder-open"></i> Ebook</a
                  >
                  <a href="/course-details"
                    ><i class="far fa-folder-open"></i> Mock Test</a
                  >
                </div>
                <!-- /.course-one__meta -->
                <nuxt-link
                  :to="{
                    name: 'course-details',
                    params: { id: '1' },
                  }"
                  ><a href="/course-details" class="course-one__link">
                    See Preview
                  </a>
                </nuxt-link>
                <!-- /.course-one__link -->
              </div>
              <!-- /.course-one__content -->
            </div>
            <!-- /.course-one__single -->
          </div>
          <!-- /.item -->
          <div class="item">
            <div class="course-one__single color-1">
              <div class="course-one__image">
                <img src="/assets/images/courses/ibps_po.jpg" alt="" />
                <i class="far fa-heart"></i
                ><!-- /.far fa-heart -->
              </div>
              <!-- /.course-one__image -->
              <div class="course-one__content">
                <a href="#" class="course-one__category">Banking</a
                ><!-- /.course-one__category -->
                <div class="course-one__admin">
                  <img src="/assets/images/team-1-1.jpg" alt="" />
                  by <a href="/teacher-details">Admin</a>
                </div>
                <!-- /.course-one__admin -->
                <h2 class="course-one__title">
                  <a href="/course-details">IBPS-PO</a>
                </h2>
                <!-- /.course-one__title -->
                <div class="course-one__stars">
                  <span class="course-one__stars-wrap">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i> </span
                  ><!-- /.course-one__stars-wrap -->
                  <span class="course-one__count">4.8</span
                  ><!-- /.course-one__count -->
                  <span class="course-one__stars-count">250</span
                  ><!-- /.course-one__stars-count -->
                </div>
                <!-- /.course-one__stars -->
                <div class="course-one__meta">
                  <a href="/course-details"
                    ><i class="far fa-folder-open"></i> Ebook</a
                  >
                  <a href="/course-details"
                    ><i class="far fa-folder-open"></i> Mock Test</a
                  >
                </div>
                <!-- /.course-one__meta -->
                <nuxt-link
                  :to="{
                    name: 'course-details',
                    params: { id: '2' },
                  }"
                  ><a href="/course-details" class="course-one__link">
                    See Preview
                  </a>
                </nuxt-link>
                <!-- /.course-one__link -->
              </div>
              <!-- /.course-one__content -->
            </div>
            <!-- /.course-one__single -->
          </div>
          <!-- /.item -->
          <div class="item">
            <div class="course-one__single color-1">
              <div class="course-one__image">
                <img src="/assets/images/courses/ibps_clerk.jpg" alt="" />
                <i class="far fa-heart"></i
                ><!-- /.far fa-heart -->
              </div>
              <!-- /.course-one__image -->
              <div class="course-one__content">
                <a href="#" class="course-one__category">Banking</a
                ><!-- /.course-one__category -->
                <div class="course-one__admin">
                  <img src="/assets/images/team-1-1.jpg" alt="" />
                  by <a href="/teacher-details">Admin</a>
                </div>
                <!-- /.course-one__admin -->
                <h2 class="course-one__title">
                  <a href="/course-details">IBPS Clerk</a>
                </h2>
                <!-- /.course-one__title -->
                <div class="course-one__stars">
                  <span class="course-one__stars-wrap">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i> </span
                  ><!-- /.course-one__stars-wrap -->
                  <span class="course-one__count">4.8</span
                  ><!-- /.course-one__count -->
                  <span class="course-one__stars-count">250</span
                  ><!-- /.course-one__stars-count -->
                </div>
                <!-- /.course-one__stars -->
                <div class="course-one__meta">
                  <a href="/course-details"
                    ><i class="far fa-folder-open"></i> Ebook</a
                  >
                  <a href="/course-details"
                    ><i class="far fa-folder-open"></i> Mock Test</a
                  >
                </div>
                <!-- /.course-one__meta -->
                <nuxt-link
                  :to="{
                    name: 'course-details',
                    params: { id: '3' },
                  }"
                  ><a href="/course-details" class="course-one__link">
                    See Preview
                  </a>
                </nuxt-link>
                <!-- /.course-one__link -->
              </div>
              <!-- /.course-one__content -->
            </div>
            <!-- /.course-one__single -->
          </div>
          <!-- /.item -->
          <div class="item">
            <div class="course-one__single color-1">
              <div class="course-one__image">
                <img src="/assets/images/courses/sbi_clerk.jpg" alt="" />
                <i class="far fa-heart"></i
                ><!-- /.far fa-heart -->
              </div>
              <!-- /.course-one__image -->
              <div class="course-one__content">
                <a href="#" class="course-one__category">Banking</a
                ><!-- /.course-one__category -->
                <div class="course-one__admin">
                  <img src="/assets/images/team-1-1.jpg" alt="" />
                  by <a href="/teacher-details">Admin</a>
                </div>
                <!-- /.course-one__admin -->
                <h2 class="course-one__title">
                  <a href="/course-details">SBI-PO</a>
                </h2>
                <!-- /.course-one__title -->
                <div class="course-one__stars">
                  <span class="course-one__stars-wrap">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i> </span
                  ><!-- /.course-one__stars-wrap -->
                  <span class="course-one__count">4.8</span
                  ><!-- /.course-one__count -->
                  <span class="course-one__stars-count">250</span
                  ><!-- /.course-one__stars-count -->
                </div>
                <!-- /.course-one__stars -->
                <div class="course-one__meta">
                  <a href="/course-details"
                    ><i class="far fa-folder-open"></i> Ebook</a
                  >
                  <a href="/course-details"
                    ><i class="far fa-folder-open"></i> Mock Test</a
                  >
                </div>
                <!-- /.course-one__meta -->
                <nuxt-link
                  :to="{
                    name: 'course-details',
                    params: { id: '4' },
                  }"
                  ><a href="/course-details" class="course-one__link">
                    See Preview
                  </a>
                </nuxt-link>
                <!-- /.course-one__link -->
              </div>
              <!-- /.course-one__content -->
            </div>
            <!-- /.course-one__single -->
          </div>
          <!-- /.item -->

          <!-- /.item -->
        </div>
        <!-- /.course-one__carousel -->
      </div>
      <!-- /.container -->
    </section>
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "CourseOne",
  data() {
    return {
      URL: "http://localhost:1337",
      courses: [],
    };
  },
  mounted() {
    this.loadCourses();
  },
  methods: {
    async loadCourses() {
      axios
        .get(`${this.URL}/Courses`)
        .then((response) => {
          const data = response.data;
          data.forEach((element) => {
            this.courses.push(element);
          });
          console.log(this.courses[0].id);
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
