<template>
  <section class="countdown-one" id="Register">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <div class="countdown-one__content">
            <h2 class="countdown-one__title">Register now</h2>
            <!-- /.countdown-one__title -->
            <p class="countdown-one__tag-line">
              Start your 'Star Journey' now!
            </p>
            <!-- /.countdown-one__tag-line -->
            <p class="countdown-one__text">
              Welcome to Saraswati World of Banking Education - Get the 'Star
              Banker of India' tag Start your star performance. Join us to grow
              from an aspirant to a national achiever.
            </p>
            <!-- /.countdown-one__text -->
            <ul class="countdown-one__list list-unstyled">
              <!-- content loading via js -->
            </ul>
            <!-- /.coundown-one__list -->
          </div>
          <!-- /.countdown-one__content -->
        </div>
        <!-- /.col-lg-6 -->
        <div class="col-lg-6">
          <div class="become-teacher__form">
            <div class="become-teacher__form-top">
              <h2 class="become-teacher__form-title">Enroll With Us!</h2>
              <!-- /.become-teacher__form-title -->
            </div>
            <!-- /.become-teacher__top -->
            <form
              class="become-teacher__form-content contact-form-validated"
              v-on:submit.prevent="submitForm"
            >
              <p ref="success" class="success"></p>
              <p ref="error" class="error"></p>
              <input
                type="text"
                v-model="name"
                placeholder="Your Name"
                name="name"
              />
              <input
                type="email"
                v-model="email"
                placeholder="Email Address"
                name="email"
              />
              <input
                type="number"
                v-model="phone"
                placeholder="Phone Number"
                name="phone"
              />
              <input
                type="text"
                v-model="message"
                placeholder="Message"
                name="message"
              />
              <button class="thm-btn become-teacher__form-btn">Submit</button>
            </form>

            <!-- /.become-teacher__form-content -->
            <div class="result text-center"></div>
            <!-- /.result -->
          </div>
          <!-- /.become-teacher__form -->
        </div>
        <!-- /.col-lg-6 -->
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container -->
  </section>
</template>

<script>
import axios from "axios";

export default {
  name: "CountdownOne",
  data() {
    return {
      name: "",
      email: "",
      phone: "",
      message: "",
    };
  },
  methods: {
    async submitForm() {
      axios
        .post("https://admin.saraswaticentre.com/user-data", {
          name: this.name,
          email: this.email,
          phone: this.phone,
          message: this.message,
        })
        .then((response) => {
          if (response.status < 300) {
            this.$refs.success.innerHTML =
              "Thanks! We will Contact you shortly";
            this.name = "";
            this.email = "";
            this.phone = "";
            this.message = "";
          } else {
            this.$refs.error.innerHTML = "Sorry! Please Try Again";
            this.name = "";
            this.email = "";
            this.phone = "";
            this.message = "";
          }
        });
    },
  },
};
</script>

<style scoped>
.success {
  color: #28a745;
}
.error {
  color: red;
}
</style>
