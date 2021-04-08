<template>
  <section class="blog-details">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="blog-one__single">
            <div class="blog-one__image">
              <img
                :src="`https://admin.saraswaticentre.com${blogImageURL}`"
                alt=""
              />
            </div>
            <!-- /.blog-one__image -->
            <div class="blog-one__content text-center">
              <div class="blog-one__meta">
                <a
                  data-toggle="tooltip"
                  data-placement="top"
                  title=""
                  href="#"
                  data-original-title="`${blog.published_at}`"
                  ><i class="fa fa-calendar-alt"></i
                ></a>
                <a
                  data-toggle="tooltip"
                  data-placement="top"
                  title=""
                  href="#"
                  data-original-title="No Comments"
                  ><i class="fa fa-comments"></i
                ></a>
                <a
                  data-toggle="tooltip"
                  data-placement="top"
                  title=""
                  href="#"
                  data-original-title="Posted By Admin"
                  ><i class="fa fa-user"></i
                ></a>
              </div>
              <!-- /.blog-one__meta -->
              <h2 class="blog-one__title">
                {{ blog.Title }}
              </h2>
              <!-- /.blog-one__title -->
              <p class="blog-one__text">
                {{ blog.BlogBody }}
              </p>
              <!-- /.blog-one__text -->
            </div>
            <!-- /.blog-one__content -->
          </div>
          <!-- /.blog-one__single -->
          <div class="share-block">
            <!-- /.left-block -->
            <div class="social-block">
              <a href="#"><i class="fab fa-twitter"></i></a>
              <a href="#"><i class="fab fa-facebook-f"></i></a>
              <a href="#"><i class="fab fa-instagram"></i></a>
              <a href="#"><i class="fab fa-dribbble"></i></a>
            </div>
            <!-- /.social-block -->
          </div>
          <!-- /.share-block -->

          <!-- /.blog-details__author -->

          <!-- /.blog-details__content-title -->

          <!-- /.sidebar__single -->

          <!-- /.sidebar__single -->
        </div>
        <!-- /.sidebar -->
      </div>
      <!-- /.col-lg-4 -->
    </div>
    <!-- /.container -->
  </section>
</template>

<script>
export default {
  name: "NewsDetails",
  props: ["blog", "blogImageURL"],
  mounted() {
    this.printLog();
  },
  methods: {
    printLog() {
      console.log(this.$props.blog);
    },
  },
};
</script>
