<template>
  <div>
    <swiper ref="mySwiper" :options="swiperOptions">
      <swiper-slide v-for="banner in banners" :key="banner.id">
        <div class="" v-if="isMobile">
          <a :href="`${banner.Link}`">
            <img
              :src="
                'https://admin.saraswaticentre.com' + banner.MobileImage.url
              "
              class="banner-slider"
              alt=""
            />
          </a>
        </div>
        <div class="" v-else>
          <a :href="`${banner.Link}`">
            <img
              :src="
                'https://admin.saraswaticentre.com' + banner.CarouselImage.url
              "
              class="banner-slider"
              alt=""
            />
          </a>
        </div>
      </swiper-slide>
    </swiper>
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "carrousel",
  data() {
    return {
      URL: "https://admin.saraswaticentre.com",
      banners: [],
      isMobile: false,
      swiperOptions: {
        pagination: {
          el: ".swiper-pagination",
        },
        // Some Swiper option/callback...
      },
    };
  },
  computed: {
    swiper() {
      return this.$refs.mySwiper.$swiper;
    },
  },
  mounted() {
    console.log("Current Swiper instance object", this.swiper);
    this.loadBannerImages();
    this.isDisplayMobile();
  },
  methods: {
    isDisplayMobile() {
      if (screen.width <= 500) {
        this.isMobile = true;
        console.log(this.isMobile);
      }
    },
    async loadBannerImages() {
      if (screen.width > 500) {
        axios
          .get(`${this.URL}/banner-carousels`)
          .then((response) => {
            const data = response.data;
            data.forEach((element) => {
              this.banners.push(element);
            });
          })
          .catch((error) => {
            console.log(error);
            this.errored = true;
          });
      } else {
        axios
          .get(`${this.URL}/banner-carousels`)
          .then((response) => {
            const data = response.data;
            data.forEach((element) => {
              this.banners.push(element);
            });
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
.banner-slider {
  width: 100%;
  min-height: 100px;
  height: auto;
}
</style>