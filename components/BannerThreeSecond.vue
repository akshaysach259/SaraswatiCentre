<template>
  <section class="slider-three" ref="bannerSectionn" @click="onImageClick()">
    <div class="container desktop-view">
      <!-- /.row -->
    </div>
    <!-- /.container -->
  </section>
</template>

<script>
import axios from "axios";
export default {
  name: "BannerThreeSecond",
  data() {
    return {
      URL: "https://admin.saraswaticentre.com",
      banners: [],
      bannerLinks: [],
      currentBannerLink: [],
      bannerItem: 1,
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
          .then((bannerResponse) => {
            const bannerData = bannerResponse.data;
            bannerData.forEach((banner) => {
              this.bannerLinks.push(banner.Link);
              itemBanner = `${this.URL + banner.CarouselImage.url}`;
              console.log(itemBanner);
              this.banners.push({
                src: itemBanner,
              });
            });
            this.currentBannerLink = this.bannerLinks[0];
            setInterval(this.changeLink, 4300);
            if ($(".slider-three").length) {
              $(".slider-three").vegas({
                slides: this.banners,
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
          .get(`${this.URL}/banner-carousels`)
          .then((bannerResponse) => {
            const bannerData = bannerResponse.data;
            bannerData.forEach((banner) => {
              this.bannerLinks.push(banner.Link);
              this.banners.push({
                src: `${this.URL + banner.MobileImage.url}`,
              });
            });
            this.currentBannerLink = this.bannerLinks[0];
            setInterval(this.changeLink, 4300);
            if ($(".slider-three").length) {
              $(".slider-three").vegas({
                slides: this.banners,
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
      }
    },
    onImageClick() {
      window.location.href = this.currentLink;
    },
    changeLink() {
      if (this.item >= this.bannerLinks.length) {
        this.item = 0;
        this.currentBannerLink = this.bannerLinks[this.item];
        this.item += 1;
      } else {
        this.currentBannerLink = this.bannerLinks[this.item];
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
