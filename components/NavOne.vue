<template>
  <div>
    <div class="topbar-one">
      <div class="container">
        <div class="topbar-one__left">
          <a href="#">info@saraswaticentre.com</a>
        </div>
        <div class="topbar-one__right">
          <a href="https://wa.me/+917428835339" target="_blank"
            ><i class="fab fa-whatsapp ml-3"></i>
            <span class="ml-1">Chat on Whatsapp</span></a
          >
          <a
            href="https://play.google.com/store/apps/details?id=com.saraswati.trigrexam"
            target="_blank"
            ><i class="fab fa-android"></i>
            <span class="ml-1">Download our App</span></a
          >
        </div>
        <!-- /.topbar-one__left -->
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

            <div class="topbar-one__right">
              <div class="header__social">
                <a href="https://t.me/saraswaticentre" target="_blank"
                  ><i class="fab fa-telegram"></i
                ></a>
                <a
                  href="https://www.facebook.com/Saraswati-Centre-Gurgaon-107313917896620"
                  target="_blank"
                  ><i class="fab fa-facebook-square"></i
                ></a>
                <a href="https://saraswaticentre.blogspot.com/" target="_blank"
                  ><i class="fab fa-blogger"></i
                ></a>
                <a
                  href="	https://www.youtube.com/channel/UCKnIejuld8lPedL4ZvH5RvQ"
                  target="_blank"
                  ><i class="fab fa-youtube"></i
                ></a>
              </div>
            </div>

            <!-- /.header__social -->
            <button
              class="menu-toggler topbar-one__right"
              data-target=".main-navigation"
            >
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
                        path: '/course-details/' + course.id,
                      }"
                      >{{ course.Title }}</nuxt-link
                    >
                  </li>
                </ul>
                <!-- /.sub-menu -->
              </li>

              <li>
                <a href="https://saraswati.trigrexam.com/">Store</a>
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
                <a href="#">Resources</a>
                <ul class="sub-menu">
                  <li>
                    <a href="https://saraswati.trigrexam.com/">Test Series</a>
                    <!-- /.sub-menu -->
                  </li>
                  <li>
                    <nuxt-link to="/PreviousQuestions"
                      >Previous Year Questions</nuxt-link
                    >
                  </li>
                </ul>
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
  props: [],
  data() {
    return {
      URL: "https://admin.saraswaticentre.com",
      courses: null,
    };
  },
  props: ["pageName"],
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
    showMenu() {
      if (this.pageName == "index") {
      } else {
        if ($(".main-navigation .navigation-box").length) {
          var subMenu = $(".main-navigation .sub-menu");
          subMenu
            .parent("li")
            .children("a")
            .append(function () {
              return '<button class="sub-nav-toggler"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>';
            });
          var mainNavToggler = $(".header-navigation .menu-toggler");

          var subNavToggler = $(".main-navigation .sub-nav-toggler");
          mainNavToggler.on("click", function () {
            var Self = $(this);
            var menu = Self.data("target");
            $(menu).slideToggle();
            $(menu).toggleClass("showen");
            return false;
          });
          subNavToggler.on("click", function () {
            var Self = $(this);
            Self.parent().parent().children(".sub-menu").slideToggle();
            return false;
          });
        }
      }
    },
  },
  name: "NavOne",
};
</script>

<style>
@media only screen and (max-width: 600px) {
  .topbar-one__left {
    display: none;
  }
}
.moadalImg {
  width: 100%;
  height: auto;
}
.fab {
  color: #515355;
  opacity: 0.9;
}
.fa-whatsapp {
  font-size: 0.9rem;
  color: white;
}
.fa-android {
  font-size: 0.9rem;
  color: white;
}
</style>
