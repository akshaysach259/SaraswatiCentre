<template>
  <section class="course-one course-page">
    <div class="container">
      <div class="row">
        <div class="col-lg-4" v-for="course in courses" :key="course.id">
          <div class="course-one__single">
            <div class="course-one__image">
              <img src="/assets/images/course-1-1.jpg" alt="" />
              <i class="far fa-heart"></i
              ><!-- /.far fa-heart -->
            </div>
            <!-- /.course-one__image -->
            <div class="course-one__content">
              <a href="#" class="course-one__category">{{ course.Category }}</a
              ><!-- /.course-one__category -->
              <div class="course-one__admin">
                <img src="/assets/images/team-1-1.jpg" alt="" />
                by
                <nuxt-link to="/teacher-details">{{
                  course.TeacherName
                }}</nuxt-link>
              </div>
              <!-- /.course-one__admin -->
              <h2 class="course-one__title">
                <nuxt-link to="/course-details">{{ course.Title }}</nuxt-link>
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
                <nuxt-link to="/course-details"
                  ><i class="fas fa-book-reader"></i> Ebooks
                </nuxt-link>
                <nuxt-link to="/course-details"
                  ><i class="far fa-folder-open"></i> Mock Test</nuxt-link
                >
              </div>
              <!-- /.course-one__meta -->
              <nuxt-link
                :to="{
                  name: 'course-details-id',
                  params: { id: course.id },
                }"
                ><a href="#" class="course-one__link">See Preview</a></nuxt-link
              ><!-- /.course-one__link -->
            </div>
            <!-- /.course-one__content -->
          </div>
          <!-- /.course-one__single -->
        </div>
        <!-- /.col-lg-4 -->

        <!-- /.col-lg-4 -->
      </div>
      <!-- /.row -->
      <div class="post-pagination">
        <a href="#"
          ><i class="fa fa-angle-double-left"></i
          ><!-- /.fa fa-angle-double-left --></a
        >
        <a class="active" href="#">1</a>
        <a href="#"
          ><i class="fa fa-angle-double-right"></i
          ><!-- /.fa fa-angle-double-left --></a
        >
      </div>
      <!-- /.post-pagination -->
    </div>
    <!-- /.container -->
  </section>
</template>

<script>
import axios from "axios";
export default {
  name: "Course",
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
          console.log(this.courses);
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
