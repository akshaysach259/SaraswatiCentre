<template>
  <div class="banner-wrapper">
    <section
      class="banner-two banner-carousel__one no-dots owl-theme owl-carousel"
    >
      <div
        v-for="carousel in carousels"
        :key="carousel.id"
        class="banner-two__slide banner-two__slide-one"
        :style="{ backgroundImage: `url(/assets/images/b1.png)` }"
      >
        <div class="container">
          <!-- /.row -->
        </div>
        <!-- /.container -->
      </div>
      <!-- /.banner-two__slide -->
    </section>
    <!-- /.banner-two -->
    <div class="banner-carousel-btn">
      <a href="#" class="banner-carousel-btn__left-btn"
        ><i class="kipso-icon-left-arrow"></i
      ></a>
      <a href="#" class="banner-carousel-btn__right-btn"
        ><i class="kipso-icon-right-arrow"></i
      ></a>
    </div>
    <!-- /.banner-carousel-btn -->
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "BannerTwo",

  data() {
    return {
      URL: "https://admin.saraswaticentre.com",
      carousels: [],
    };
  },
  mounted() {
    this.loadCarousel();
  },
  methods: {
    async loadCarousel() {
      axios
        .get(`${this.URL}/banner-carousels`)
        .then((response) => {
          const carouselData = response.data;
          carouselData.forEach((carousel) => {
            this.carousels.push(carousel.CarouselImage.url);
          });
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
