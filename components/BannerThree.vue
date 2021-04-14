<template>
  <section class="slider-three" ref="carouselsSection" @click="onImageClick()">
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
      carouselLinks: [],
      currentLink: [],
      item: 1,
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
          .get(`${this.URL}/header-carousels`)
          .then((response) => {
            const carouselData = response.data;
            carouselData.forEach((carousel) => {
              this.carouselLinks.push(carousel.Link);
              this.carousels.push({
                src: `${this.URL + carousel.CarouselImage.url}`,
              });
            });
            this.currentLink = this.carouselLinks[0];
            setInterval(this.changeLink, 4300);
            if ($(".slider-three").length) {
              $(".slider-three").vegas({
                slides: this.carousels,
                transition: "slideRight2",
                timer: false,
                overlay: false,
                delay: 4000,
              });
            }
          })
          .catch((error) => {
            console.log(error);
            this.errored = true;
          });
      } else {
        axios
          .get(`${this.URL}/header-carousels`)
          .then((response) => {
            const carouselData = response.data;
            carouselData.forEach((carousel) => {
              this.carouselLinks.push(carousel.Link);
              if (carousel.MobileImage != null) {
                this.carousels.push({
                  src: `${this.URL + carousel.MobileImage.url}`,
                });
              }
            });
            this.currentLink = this.carouselLinks[0];
            setInterval(this.changeLink, 4300);
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
    onImageClick() {
      window.location.href = this.currentLink;
    },
    changeLink() {
      if (this.item >= this.carouselLinks.length) {
        this.item = 0;
        this.currentLink = this.carouselLinks[this.item];
        this.item += 1;
      } else {
        this.currentLink = this.carouselLinks[this.item];
        this.item += 1;
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
