<template>
  <div>
    <section class="contact-info-one">
      <div class="container">
        <div class="row">
          <div class="col-lg-4">
            <div
              class="contact-info-one__single wow fadeInDown animated"
              data-wow-duration="1500ms"
              style="
                visibility: visible;
                animation-duration: 1500ms;
                animation-name: fadeInDown;
              "
            >
              <div class="contact-info-one__icon">
                <i class="kipso-icon-manager"></i
                ><!-- /.kipso-icon-manager -->
              </div>
              <!-- /.contact-info-one__icon -->
              <h2 class="contact-info-one__title">About Us</h2>
              <!-- /.contact-info-one__title -->
              <p class="contact-info-one__text">
                Saraswati World of Banking Education - Get the 'Star Banker of
                India' tag to Start your star performance.
              </p>
              <!-- /.contact-info-one__text -->
            </div>
            <!-- /.contact-info-one__single -->
          </div>
          <!-- /.col-lg-4 -->
          <div class="col-lg-4">
            <div
              class="contact-info-one__single wow fadeInUp animated"
              data-wow-duration="1500ms"
              style="
                visibility: visible;
                animation-duration: 1500ms;
                animation-name: fadeInUp;
              "
            >
              <div class="contact-info-one__icon">
                <i class="kipso-icon-placeholder"></i>
                <!-- /.kipso-icon-manager -->
              </div>
              <!-- /.contact-info-one__icon -->
              <h2 class="contact-info-one__title">Our Address</h2>
              <!-- /.contact-info-one__title -->
              <p class="contact-info-one__text">
                7517, Block C2<br />
                DLF Phase 4 Gurgaon 122002<br />
                India
              </p>
              <!-- /.contact-info-one__text -->
            </div>
            <!-- /.contact-info-one__single -->
          </div>
          <!-- /.col-lg-4 -->
          <div class="col-lg-4">
            <div
              class="contact-info-one__single wow fadeInDown animated"
              data-wow-duration="1500ms"
              style="
                visibility: visible;
                animation-duration: 1500ms;
                animation-name: fadeInDown;
              "
            >
              <div class="contact-info-one__icon">
                <i class="kipso-icon-contact"></i
                ><!-- /.kipso-icon-manager -->
              </div>
              <!-- /.contact-info-one__icon -->
              <h2 class="contact-info-one__title">Contact Info</h2>
              <!-- /.contact-info-one__title -->
              <p class="contact-info-one__text">
                info@saraswaticentre.com <br />
                +91 74288 35339 <br />
                &nbsp;
              </p>
              <!-- /.contact-info-one__text -->
            </div>
            <!-- /.contact-info-one__single -->
          </div>
          <!-- /.col-lg-4 -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container -->
    </section>
    <section class="contact-one">
      <div class="container">
        <h2 class="contact-one__title text-center">
          Get in touch <br />
          with us
        </h2>
        <p ref="success" class="success"></p>
        <p ref="error" class="error"></p>
        <!-- /.contact-one__title -->
        <form
          v-on:submit.prevent="submitContactForm"
          class="contact-one__form contact-form-validated"
          novalidate="novalidate"
        >
          <div class="row low-gutters">
            <div class="col-lg-6">
              <input
                type="text"
                name="name"
                placeholder="Your Name"
                v-model="name"
              />
            </div>
            <div class="col-lg-6">
              <input
                type="number"
                name="phone"
                placeholder="Your Mobile Number"
                v-model="phone"
              />
            </div>
            <div class="col-lg-6">
              <input
                type="text"
                name="address"
                placeholder="Your Address"
                v-model="address"
              />
            </div>
            <!-- /.col-lg-6 -->
            <div class="col-lg-6">
              <input
                type="email"
                placeholder="Email Address"
                name="email"
                v-model="email"
              />
            </div>
            <!-- /.col-lg-6 -->
            <div class="col-lg-12">
              <textarea
                placeholder="Write Message"
                name="message"
                v-model="message"
              ></textarea>
              <div class="text-center">
                <button class="contact-one__btn thm-btn">Submit Message</button>
              </div>
              <!-- /.text-center -->
            </div>
            <!-- /.col-lg-12 -->
          </div>
          <!-- /.row -->
        </form>
        <!-- /.contact-one__form -->
        <div class="result text-center"></div>
        <!-- /.result -->
      </div>
      <!-- /.container -->
    </section>

    <iframe
      src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14030.392168123322!2d77.0879186!3d28.461531!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x57d310cf7c6de9ca!2sSupermart%202!5e0!3m2!1sen!2sin!4v1617800895591!5m2!1sen!2sin"
      class="google-map__contact"
      allowfullscreen=""
    ></iframe>
  </div>
</template>

<script>
import axios from "axios";
import emailjs from "emailjs-com";
export default {
  name: "Contact",
  data() {
    return {
      name: "",
      email: "",
      phone: "",
      message: "",
      address: "",
    };
  },
  methods: {
    async submitContactForm(e) {
      axios
        .post("https://admin.saraswaticentre.com/contact-forms", {
          name: this.name,
          phone: this.phone,
          address: this.address,
          email: this.email,
          message: this.message,
        })
        .then((response) => {
          this.sendEmailUser(e);
          this.sendEmailSaraswatiCentre(e);
          if (response.status < 300) {
            this.$refs.success.innerHTML =
              "Thanks! We will Contact you shortly";
          } else {
            this.$refs.error.innerHTML = "Sorry! Please Try Again";
          }
        });
    },
    sendEmailUser(e) {
      try {
        console.log();
        emailjs.sendForm(
          "service_var7dv8",
          "template_ydc0l66",
          e.target,
          "user_zHMIs3jW2edcB8M3adYf9",
          {
            phone: this.phone,
            message: this.message,
            from_name: this.name,
            email: this.email,
          }
        );
      } catch (error) {
        console.log({ error });
      }
    },
    sendEmailSaraswatiCentre(e) {
      try {
        console.log();
        emailjs
          .sendForm(
            "service_var7dv8",
            "template_svsjpql",
            e.target,
            "user_zHMIs3jW2edcB8M3adYf9",
            {
              phone: this.phone,
              message: this.message,
              from_name: this.name,
              email: this.email,
            }
          )
          .then((result) => {
            console.log(result, result.status);
          });
        this.name = "";
        this.email = "";
        this.phone = "";
        this.message = "";
        this.address = "";
      } catch (error) {
        console.log({ error });
      }
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