<template>
  <section class="blog-details">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="blog-one__single">
            <div class="blog-one__image">
              <img
                :src="`https://admin.saraswaticentre.com${currentAffairImageURL}`"
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
                  data-original-title="`${currentAffair.published_at}`"
                  ><i class="fa fa-calendar-alt"></i
                ></a>
                <a
                  data-toggle="tooltip"
                  data-placement="top"
                  data-original-title="No Comments"
                  ><i class="fa fa-comments"></i
                ></a>
                <a
                  data-toggle="tooltip"
                  data-placement="top"
                  data-original-title="Posted By Admin"
                  ><i class="fa fa-user"></i
                ></a>
              </div>
              <!-- /.blog-one__meta -->
              <h2 class="blog-one__title">
                {{ currentAffair.Title }}
              </h2>
              <!-- /.blog-one__title -->
              <p class="blog-one__text">
                {{ currentAffair.CurrentAffairBody }}
              </p>
              <!-- /.blog-one__text -->
            </div>
            <!-- /.blog-one__content -->
          </div>
          <!-- /.blog-one__single -->
          <div class="share-block">
            <!-- /.left-block -->
            <div class="social-block text-center">
              <a
                href="	https://www.youtube.com/channel/UCKnIejuld8lPedL4ZvH5RvQ"
                target="_blank"
                ><i class="fab fa-youtube"></i
              ></a>
              <a
                href="https://www.facebook.com/Saraswati-Centre-Gurgaon-107313917896620"
                target="_blank"
                ><i class="fab fa-facebook-square"></i
              ></a>
              <a href="https://saraswaticentre.blogspot.com/" target="_blank"
                ><i class="fab fa-blogger"></i
              ></a>
              <a href="https://t.me/saraswaticentre" target="_blank"
                ><i class="fab fa-telegram"></i
              ></a>
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
  name: "CurrentAffairDetails",
  props: ["currentAffair", "currentAffairImageURL"],
  mounted() {
    this.printLog();
  },
  methods: {
    printLog() {
      console.log(this.$props.currentAffair);
    },
  },
};
</script>

<style scoped>
.tooltip {
  position: relative;
  display: inline-block;
  border-bottom: 1px dotted black;
}

.tooltip .tooltiptext {
  visibility: hidden;
  width: 120px;
  background-color: black;
  color: #fff;
  text-align: center;
  border-radius: 6px;
  padding: 5px 0;

  /* Position the tooltip */
  position: absolute;
  z-index: 1;
}

.tooltip:hover .tooltiptext {
  visibility: visible;
}
</style>