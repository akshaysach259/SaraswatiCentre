<template>
  <header class="site-header site-header__home-three">
    <div class="topbar-one">
      <div class="container">
        <div class="topbar-one__left">
          <a href="#">info@saraswati.com</a>
          <a href="#">+91 909090908</a>
        </div>
        <!-- /.topbar-one__left -->
        <div class="topbar-one__right">
          <a href="#">Register</a>
        </div>
        <!-- /.topbar-one__right -->
      </div>
      <!-- /.container -->
    </div>
    <!-- /.topbar-one -->
    <nav class="navbar navbar-expand-lg navbar-light header-navigation stricky">
      <div class="container clearfix">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="logo-box clearfix">
          <a class="navbar-brand" href="/">
            <img
              src="/assets/images/logo.png"
              class="main-logo"
              width="50"
              alt="Awesome Image"
            />
          </a>
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
              <!-- /.sub-menu -->
              <!-- </li>
              </ul> -->
              <!-- /.sub-menu -->
            </li>
            <li>
              <a href="#">Courses</a>
              <ul class="sub-menu">
                <li v-for="course in courses" :key="course.id">
                  <nuxt-link to="/course-details">{{ course.Name }}</nuxt-link>
                </li>
              </ul>
              <!-- /.sub-menu -->
            </li>
            <li>
              <nuxt-link to="/courses">Resources</nuxt-link>
              <!-- <ul class="sub-menu">
                <li><nuxt-link to="/courses">Courses</nuxt-link></li>
                <li>
                  <nuxt-link to="/course-details">Course Details</nuxt-link>
                </li>
              </ul> -->
              <!-- /.sub-menu -->
            </li>
            <li>
              <nuxt-link to="/contact">Test Series</nuxt-link>
            </li>
            <li>
              <nuxt-link to="/teachers">Store</nuxt-link>
              <!-- <ul class="sub-menu">
                <li><nuxt-link to="/teachers">Store</nuxt-link></li>
                <li>
                  <nuxt-link to="/teacher-details">Teachers Details</nuxt-link>
                </li>
                <li>
                  <nuxt-link to="/become-teacher">Become Teacher</nuxt-link>
                </li>
              </ul> -->
              <!-- /.sub-menu -->
            </li>
            <li>
              <nuxt-link to="/news">Blog</nuxt-link>
              <ul class="sub-menu">
                <li><nuxt-link to="/news">Blog Page</nuxt-link></li>
                <li><nuxt-link to="/news-details">Blog Details</nuxt-link></li>
              </ul>
              <!-- /.sub-menu -->
            </li>
            <li>
              <nuxt-link to="/contact">Contact</nuxt-link>
            </li>
          </ul>
        </div>
        <!-- /.navbar-collapse -->
        <div class="right-side-box">
          <div class="header__social">
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-facebook-square"></i></a>
            <a href="#"><i class="fab fa-pinterest-p"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
          </div>
          <!-- /.header__social -->
        </div>
        <!-- /.right-side-box -->
      </div>
      <!-- /.container -->
    </nav>
  </header>
</template>

<script>
export default {
  name: "NavThree",
  props: ["courses"],
  data() {
    return {
      data: "Value",
    };
  },
};
</script>

<style scoped>
</style>
