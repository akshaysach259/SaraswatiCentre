<template>
  <section class="blog-one blog-page">
    <div class="container">
      <div class="row">
        <div class="col-lg-4" v-for="blog in blogs" :key="blog.id">
          <div class="blog-one__single">
            <div class="blog-one__image">
              <img
                :src="
                  'https://admin.saraswaticentre.com' + blog.Image370X370.url
                "
                alt=""
              />
              <nuxt-link
                class="blog-one__plus"
                :to="{
                  name: 'news-details-id',
                  params: { id: blog.id },
                }"
                ><i class="kipso-icon-plus-symbol"></i>
                <!-- /.kipso-icon-plus-symbol --></nuxt-link
              >
            </div>
            <!-- /.blog-one__image -->
            <div class="blog-one__content text-center">
              <!-- /.blog-one__meta -->
              <h2 class="blog-one__title">
                <nuxt-link
                  :to="{
                    name: 'news-details-id',
                    params: { id: blog.id },
                  }"
                  >{{ blog.Title }}</nuxt-link
                >
              </h2>
              <!-- /.blog-one__title -->
              <p class="blog-one__text">
                {{ blog.Summary }}
              </p>
              <!-- /.blog-one__text -->

              <nuxt-link
                :to="{
                  name: 'news-details-id',
                  params: { id: blog.id },
                }"
                ><a href="#" class="blog-one__link">Read More</a></nuxt-link
              ><!-- /.course-one__link -->
            </div>
            <!-- /.blog-one__content -->
          </div>
          <!-- /.blog-one__single -->
        </div>
        <!-- /.col-lg-4 -->

        <!-- /.col-lg-4 -->
      </div>
      <!-- /.row -->
      <div class="post-pagination">
        <a href="#"
          ><i class="fa fa-angle-double-left"></i
          ><!-- /.fa fa-angle-double-left --></a
        >
        <a class="active" href="#">1</a>

        <a href="#"
          ><i class="fa fa-angle-double-right"></i
          ><!-- /.fa fa-angle-double-left --></a
        >
      </div>
      <!-- /.post-pagination -->
    </div>
    <!-- /.container -->
  </section>
</template>

<script>
import axios from "axios";
export default {
  name: "News",
  data() {
    return {
      URL: "https://admin.saraswaticentre.com",
      blogs: [],
    };
  },
  mounted() {
    this.loadCourses();
  },
  methods: {
    async loadCourses() {
      axios
        .get(`${this.URL}/Blogs`)
        .then((response) => {
          const data = response.data;
          data.forEach((element) => {
            this.blogs.push(element);
          });
        })
        .catch((error) => {
          console.log(error);
          this.errored = true;
        });
    },
  },
};
</script>

<style scoped>
</style>
