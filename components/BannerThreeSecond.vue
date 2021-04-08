<template>
  <section class="slider-three">
    <div class="container desktop-view">
      <!-- /.row -->
    </div>

    <!-- /.container -->
  </section>
</template>

<script>
import axios from "axios";
export default {
  name: "BannerThree",
  data() {
    return {
      URL: "https://admin.saraswaticentre.com",
      carousels: [],
    };
  },
  mounted() {
    this.loadImages();
  },

  // For Details visit https://vegas.jaysalvat.com/documentation/settings/

  methods: {
    async loadImages() {
      if (screen.width > 500) {
        axios
          .get(`${this.URL}/banner-carousels`)
          .then((response) => {
            const carouselData = response.data;
            carouselData.forEach((carousel) => {
              this.carousels.push({
                src: `${this.URL + carousel.CarouselImage.url}`,
              });
            });
            console.log(this.carousels[0].src);
            if ($(".slider-three").length) {
              $(".slider-three").vegas({
                slides: this.carousels,
                transition: "slideRight2",
                timer: false,
                overlay: false,
              });
            }
          })
          .catch((error) => {
            console.log(error);
            this.errored = true;
          });
      } else {
        console.log("Mobile Content");
        axios
          .get(`${this.URL}/banner-carousels`)
          .then((response) => {
            const carouselData = response.data;
            carouselData.forEach((carousel) => {
              if (carousel.MobileImage != null) {
                this.carousels.push({
                  src: `${this.URL + carousel.MobileImage.url}`,
                });
              }
            });
            if ($(".slider-three").length) {
              $(".slider-three").vegas({
                slides: this.carousels,
                transition: "slideRight2",
                timer: false,
                overlay: false,
              });
            }
          })
          .catch((error) => {
            console.log(error);
            this.errored = true;
          });
      }
    },
  },
};
</script>

<style scoped>
@media (min-width: 1200px) {
  .desktop-view {
    display: none;
  }
}
</style>
