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
                Lorem ipsum is simply free text <br />
                available in the market to use <br />
                deliver satisfaction.
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
                info.saraswaticentre@gmail.com <br />
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
        <!-- /.contact-one__title -->
        <form
          action="/assets/inc/sendemail.php"
          class="contact-one__form contact-form-validated"
          novalidate="novalidate"
        >
          <div class="row low-gutters">
            <div class="col-lg-6">
              <input type="text" name="name" placeholder="Your Name" />
            </div>
            <!-- /.col-lg-6 -->
            <div class="col-lg-6">
              <input type="text" placeholder="Email Address" name="email" />
            </div>
            <!-- /.col-lg-6 -->
            <div class="col-lg-12">
              <textarea placeholder="Write Message" name="message"></textarea>
              <div class="text-center">
                <button type="submit" class="contact-one__btn thm-btn">
                  Submit Comment
                </button>
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
export default {
  name: "Contact",
};
</script>

<style scoped>
</style>
