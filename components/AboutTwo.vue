<template>
  <section class="about-two">
    <div class="container">
      <modal name="my-first-modal">
        <img class="moadalImg" src="/assets/images/modalimg.png" />
      </modal>
      <div class="row">
        <div class="col-xl-6">
          <div class="about-two__content">
            <div class="block-title text-left">
              <h2 class="block-title__title">
                Welcome to <br />Saraswati Centre
              </h2>
              <!-- /.block-title__title -->
            </div>
            <!-- /.block-title -->
            <p class="about-two__text">
              Welcome to Saraswati World of Banking Education - Get the 'Star
              Banker of India' tag Start your star performance. Join us to grow
              from an aspirant to a national achiever.
            </p>
            <!-- /.about-two__text -->
            <div class="about-two__single-wrap">
              <div class="about-two__single">
                <div class="about-two__single-icon">
                  <i class="kipso-icon-professor"></i
                  ><!-- /.kipso-icon-professor -->
                </div>
                <!-- /.about-two__single-icon -->
                <div class="about-two__single-content">
                  <p class="about-two__single-text">
                    Start learning from our experts
                  </p>
                  <!-- /.about-two__single-text -->
                </div>
                <!-- /.about-two__single-content -->
              </div>
              <!-- /.about-two__single -->
              <div class="about-two__single">
                <div class="about-two__single-icon">
                  <i class="kipso-icon-knowledge"></i
                  ><!-- /.kipso-icon-professor -->
                </div>
                <!-- /.about-two__single-icon -->
                <div class="about-two__single-content">
                  <p class="about-two__single-text">
                    Enhance your skills with us now
                  </p>
                  <!-- /.about-two__single-text -->
                </div>
                <!-- /.about-two__single-content -->
              </div>
              <!-- /.about-two__single -->
            </div>
            <!-- /.about-two__single-wrap -->
            <a href="https://saraswati.trigrexam.com/" class="thm-btn"
              >Learn More</a
            ><!-- /.thm-btn -->
          </div>
          <!-- /.about-two__content -->
        </div>
        <!-- /.col-lg-6 -->
        <div
          class="col-xl-6 d-flex justify-content-xl-end justify-content-sm-center"
        >
          <div class="about-two__image">
            <span class="about-two__image-dots"></span
            ><!-- /.about-two__image-dots -->
            <img src="/assets/images/about-us.png" alt="" />
            <!-- <div class="about-two__count"> -->
            <!-- /.about-two__count-text -->
            <!-- </div> -->
            <!-- /.about-two__count -->
          </div>
          <!-- /.about-two__image -->
        </div>
        <!-- /.col-lg-6 -->
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container -->
  </section>
</template>

<script>
export default {
  name: "AboutTwo",
  data() {
    return {
      showModal: false,
    };
  },
  mounted() {
    this.show();
  },
  methods: {
    getCookie() {
      const cookieValue = document.cookie
        .split(";")
        .map((cookie) => cookie.split("="))
        .reduce(
          (accumulator, [key, value]) => ({
            ...accumulator,
            [key.trim()]: decodeURIComponent(value),
          }),
          {}
        );
      this.showModal = cookieValue.modalShow;
      console.log(cookieValue.modalShow);
    },
    show() {
      if (this.showModal) {
        this.$modal.show("my-first-modal");
        document.cookie = "modalShow=false";
        this.hide();
      }
    },
    hide() {
      this.$modal.hide("my-first-modal");
    },
  },
};
</script>

<style scoped>
</style>
