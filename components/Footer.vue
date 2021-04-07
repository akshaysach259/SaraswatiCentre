<template>
  <div>
    <footer class="site-footer">
      <div class="site-footer__upper">
        <div class="container">
          <div class="row">
            <div class="col-xl-3 col-lg-6 col-sm-12">
              <div class="footer-widget footer-widget__contact">
                <h2 class="footer-widget__title">Courses</h2>
                <!-- /.footer-widget__title -->
                <ul class="list-unstyled footer-widget__link-list">
                  <li>
                    <nuxt-link
                      :to="{
                        name: 'course-details',
                        params: { id: '1' },
                      }"
                    >
                      <p>SBI Clerk</p></nuxt-link
                    >
                  </li>
                  <li>
                    <nuxt-link
                      :to="{
                        name: 'course-details',
                        params: { id: '2' },
                      }"
                    >
                      <p>IBPS-PO</p></nuxt-link
                    >
                  </li>
                  <li>
                    <nuxt-link
                      :to="{
                        name: 'course-details',
                        params: { id: '2' },
                      }"
                    >
                      <p></p
                    ></nuxt-link>
                  </li>
                  <li>
                    <nuxt-link
                      :to="{
                        name: 'course-details',
                        params: { id: '3' },
                      }"
                    >
                      <p>IBPS Clerk</p></nuxt-link
                    >
                  </li>
                  <li>
                    <nuxt-link
                      :to="{
                        name: 'course-details',
                        params: { id: '4' },
                      }"
                    >
                      <p>SBI PO</p></nuxt-link
                    >
                  </li>
                </ul>

                <!-- /.footer-widget__course-list -->
              </div>
              <!-- /.footer-widget -->
            </div>
            <!-- /.col-lg-3 -->
            <div class="col-xl-3 col-lg-6 col-sm-12">
              <div class="footer-widget footer-widget__link">
                <h2 class="footer-widget__title">Explore</h2>
                <!-- /.footer-widget__title -->
                <div class="footer-widget__link-wrap">
                  <ul class="list-unstyled footer-widget__link-list">
                    <li><a href="#">About</a></li>
                    <li><a href="/courses">Courses</a></li>
                    <li><a href="#">Test Series</a></li>
                    <li><a href="#">Store</a></li>
                    <li><a href="/news">Blog</a></li>
                  </ul>
                  <!-- /.footer-widget__link-list -->
                  <ul class="list-unstyled footer-widget__link-list">
                    <li><a href="#">Help </a></li>
                    <li><a href="#">Contact</a></li>
                    <li><a href="#">Register Now</a></li>
                  </ul>
                  <!-- /.footer-widget__link-list -->
                </div>
                <!-- /.footer-widget__link-wrap -->
              </div>
              <!-- /.footer-widget -->
            </div>
            <!-- /.col-lg-3 -->
            <div class="col-xl-3 col-lg-6 col-sm-12">
              <div class="footer-widget footer-widget__gallery">
                <h2 class="footer-widget__title">App Store</h2>
                <!-- /.footer-widget__title -->
                <a
                  href="https://play.google.com/store/apps/details?id=com.saraswati.trigrexam"
                >
                  <img
                    src="/assets/images/playstore.png"
                    class="footer-playstore"
                  />
                </a>
                <ul class="list-unstyled footer-widget__gallery-list"></ul>
                <!-- /.footer-widget__gallery -->
              </div>
              <!-- /.footer-widget -->
            </div>
            <!-- /.col-lg-3 -->
            <div class="col-xl-3 col-lg-6 col-sm-12">
              <div class="footer-widget footer-widget__about">
                <h2 class="footer-widget__title">About</h2>
                <!-- /.footer-widget__title -->
                <p class="footer-widget__text">
                  Saraswati World of Banking Education - Get the 'Star Banker of
                  India' tag to Start your star performance.
                </p>
                <!-- /.footer-widget__text -->
                <div class="footer-widget__btn-block">
                  <a href="/contact" class="thm-btn">Contact</a
                  ><!-- /.thm-btn -->
                  <a href="https://saraswati.trigrexam.com/" class="thm-btn"
                    >Purchase</a
                  ><!-- /.thm-btn -->
                </div>
                <!-- /.footer-widget__btn-block -->
              </div>
              <!-- /.footer-widget -->
            </div>
            <!-- /.col-lg-3 -->
          </div>
          <!-- /.row -->
        </div>
        <!-- /.container -->
      </div>
      <!-- /.site-footer__upper -->
      <div class="site-footer__bottom">
        <div class="container">
          <p class="site-footer__copy">
            &copy; Copyright 2020 by <a href="#">SaraswatiCntre</a>
          </p>
          <div class="site-footer__social">
            <a
              href="#"
              data-target="html"
              class="scroll-to-target site-footer__scroll-top"
              ><i class="kipso-icon-top-arrow"></i
            ></a>
            <a href="https://twitter.com/SBIPOcoaching" target="_blank"
              ><i class="fab fa-twitter"></i
            ></a>
            <a
              href="https://www.facebook.com/Saraswati-Centre-Gurgaon-107313917896620"
              target="_blank"
              ><i class="fab fa-facebook-square"></i
            ></a>
            <a
              href="https://www.instagram.com/saraswaticen/?r=nametag"
              target="_blank"
              ><i class="fab fa-instagram"></i
            ></a>
            <a
              href="	https://www.youtube.com/channel/UCKnIejuld8lPedL4ZvH5RvQ"
              target="_blank"
              ><i class="fab fa-youtube"></i
            ></a>
          </div>
          <!-- /.site-footer__social -->
          <!-- /.site-footer__copy -->
        </div>
        <!-- /.container -->
      </div>
      <!-- /.site-footer__bottom -->
    </footer>
    <div class="search-popup">
      <div class="search-popup__overlay custom-cursor__overlay">
        <div class="cursor"></div>
        <div class="cursor-follower"></div>
      </div>
      <!-- /.search-popup__overlay -->
      <div class="search-popup__inner">
        <form action="#" class="search-popup__form">
          <input
            type="text"
            name="search"
            placeholder="Type here to Search...."
          />
          <button type="submit">
            <i class="kipso-icon-magnifying-glass"></i>
          </button>
        </form>
      </div>
      <!-- /.search-popup__inner -->
    </div>
  </div>
</template>

<script>
export default {
  name: "Footer",
};
</script>

<style scoped>
.footer-playstore {
  max-width: 14rem;
}
</style>
