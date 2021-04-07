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
              action="/assets/inc/sendemail.php"
              class="become-teacher__form-content contact-form-validated"
            >
              <input type="text" placeholder="Your Name" name="name" />
              <input type="text" placeholder="Email Address" name="email" />
              <input type="text" placeholder="Phone Number" name="phone" />
              <input type="text" placeholder="Comment" name="message" />
              <button type="submit" class="thm-btn become-teacher__form-btn">
                Apply For It
              </button>
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
export default {
  name: "CountdownOne",
};
</script>

<style scoped>
</style>
