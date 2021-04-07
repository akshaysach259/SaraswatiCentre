<template>
  <div>
    <div class="topbar-one">
      <div class="container">
        <div class="topbar-one__left">
          <a href="#">info@saraswati.com</a>
          <a href="#">+91 909090908</a>
        </div>
        <!-- /.topbar-one__left -->
        <div class="topbar-one__right">
          <a href="#Register">Register</a>
        </div>
        <!-- /.topbar-one__right -->
      </div>
      <!-- /.container -->
    </div>
    <!-- /.topbar-one -->
    <header class="site-header site-header__header-one">
      <nav class="navbar navbar-expand-lg navbar-light header-navigation">
        <div class="container clearfix">
          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="logo-box clearfix">
            <a class="navbar-brand" href="/">
              <img
                src="/assets/images/logo.png"
                class="main-logo"
                width="70"
                alt="Awesome Image"
              />
            </a>
            <div class="header__social">
              <a href="#"><i class="fab fa-twitter"></i></a>
              <a href="#"><i class="fab fa-facebook-square"></i></a>
              <a href="#"><i class="fab fa-pinterest-p"></i></a>
              <a href="#"><i class="fab fa-instagram"></i></a>
            </div>
            <!-- /.header__social -->
            <button class="menu-toggler" data-target=".main-navigation">
              <span class="kipso-icon-menu"></span>
            </button>
          </div>
          <!-- /.logo-box -->
          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="main-navigation">
            <ul class="navigation-box">
              <li class="current">
                <a href="/">Home</a>
                <!-- <ul class="sub-menu">
                  <li><a href="/">Home 01</a></li>
                  <li><a href="/index-2">Home 02</a></li>
                  <li><a href="/index-3">Home 03</a></li>
                  <li>
                    <a href="#">Header Versions</a>
                    <ul class="sub-menu">
                      <li><a href="/">Header 01</a></li>
                      <li><a href="/index-2">Header 02</a></li>
                      <li><a href="/index-3">Header 03</a></li>
                    </ul> -->
                <!-- .sub-menu -->
                <!-- </li>
                </ul> -->

                <!-- /.sub-menu -->
              </li>
              <li>
                <a href="#">Courses</a>
                <ul class="sub-menu">
                  <li v-for="course in courses" :key="course.id">
                    <nuxt-link
                      :to="{
                        name: 'course-details',
                        params: { id: course.id },
                      }"
                      >{{ course.Title }}</nuxt-link
                    >
                  </li>
                </ul>
                <!-- /.sub-menu -->
              </li>
              <li>
                <nuxt-link to="/courses">Test Series</nuxt-link>
                <!-- /.sub-menu -->
              </li>
              <li>
                <nuxt-link to="/teachers">Store</nuxt-link>
                <!-- <ul class="sub-menu">
                  <li><nuxt-link to="/teachers">Teachers</nuxt-link></li>
                  <li>
                    <nuxt-link to="/teacher-details"
                      >Teachers Details</nuxt-link
                    >
                  </li>
                  <li>
                    <nuxt-link to="/become-teacher">Become Teacher</nuxt-link>
                  </li>
                </ul> -->
                <!-- /.sub-menu -->
              </li>
              <li>
                <nuxt-link to="/news">Blog</nuxt-link>
                <!-- <ul class="sub-menu">
                  <li><nuxt-link to="/news">News Page</nuxt-link></li>
                  <li>
                    <nuxt-link to="/news-details">News Details</nuxt-link>
                  </li>
                </ul> -->
                <!-- /.sub-menu -->
              </li>
              <li>
                <nuxt-link to="/contact">Contact</nuxt-link>
              </li>
            </ul>
          </div>
          <!-- /.navbar-collapse -->
          <!-- /.right-side-box -->
        </div>
        <!-- /.container -->
      </nav>
      <div class="site-header__decor">
        <div class="site-header__decor-row">
          <div class="site-header__decor-single">
            <div class="site-header__decor-inner-1"></div>
            <!-- /.site-header__decor-inner -->
          </div>
          <!-- /.site-header__decor-single -->
          <div class="site-header__decor-single">
            <div class="site-header__decor-inner-2"></div>
            <!-- /.site-header__decor-inner -->
          </div>
          <!-- /.site-header__decor-single -->
          <div class="site-header__decor-single">
            <div class="site-header__decor-inner-3"></div>
            <!-- /.site-header__decor-inner -->
          </div>
          <!-- /.site-header__decor-single -->
        </div>
        <!-- /.site-header__decor-row -->
      </div>
      <!-- /.site-header__decor -->
    </header>
  </div>
</template>

<script>
import axios from "axios";

export default {
  validate({ params }) {
    return true;
  },
  data() {
    return {
      URL: "http://localhost:1337",
      courses: null,
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
          this.courses = response.data;
        })
        .catch((error) => {
          console.log(error);
          this.errored = true;
        });
    },
  },
  name: "NavOne",
};
</script>

<style>
.moadalImg {
  width: 100%;
  height: auto;
}
</style>
