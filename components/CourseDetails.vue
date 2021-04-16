<template>
  <section class="course-details">
    <div class="container">
      <div class="row">
        <div class="col-lg-8">
          <div class="course-details__content">
            <p class="course-details__author">
              <img src="/assets/images/icons/admin.jpg" alt="" />
              by <a href="#">{{ course.Teacher }}</a>
            </p>
            <!-- /.course-details__author -->

            <div class="course-details__top">
              <div class="course-details__top-left">
                <h2 class="course-details__title">{{ course.Title }}</h2>
                <!-- /.course-details__title -->
                <div class="course-one__stars">
                  <span class="course-one__stars-wrap">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i> </span
                  ><!-- /.course-one__stars-wrap -->
                  <span class="course-one__count">4.8</span
                  ><!-- /.course-one__count -->
                  <span class="course-one__stars-count">250</span
                  ><!-- /.course-one__stars-count -->
                </div>
                <!-- /.course-one__stars -->
              </div>
              <!-- /.course-details__top-left -->
              <div class="course-details__top-right">
                <a href="#" class="course-one__category">{{
                  course.Category
                }}</a
                ><!-- /.course-one__category -->
              </div>
              <!-- /.course-details__top-right -->
            </div>
            <!-- /.course-details__top -->
            <div class="course-one__image">
              <img
                :src="`https://admin.saraswaticentre.com${courseImageURL}`"
                alt=""
              />
              <i class="far fa-heart"></i
              ><!-- /.far fa-heart -->
            </div>
            <!-- /.course-one__image -->

            <ul
              class="course-details__tab-navs list-unstyled nav nav-tabs"
              role="tablist"
            >
              <li>
                <a class="active" role="tab" data-toggle="tab" href="#overview"
                  >Overview</a
                >
              </li>
              <li>
                <a class="" role="tab" data-toggle="tab" href="#Eligibility"
                  >Eligibility</a
                >
              </li>
              <li>
                <a class="" role="tab" data-toggle="tab" href="#examPattern"
                  >Exam Pattern
                </a>
              </li>
              <li>
                <a class="" role="tab" data-toggle="tab" href="#testPaper"
                  >Test Paper</a
                >
              </li>
            </ul>
            <!-- /.course-details__tab-navs list-unstyled -->
            <div class="tab-content course-details__tab-content">
              <div
                class="tab-pane show active animated fadeInUp"
                role="tabpanel"
                id="overview"
              >
                <p class="course-details__tab-text">
                  {{ course.Overview }}
                </p>
                <!-- /.course-details__tab-text -->
                <br />

                <!-- /.course-details__tab-text -->
                <br />

                <!-- /.list-unstyled course-details__overview-list -->
              </div>
              <div
                class="tab-pane show active animated fadeInUp"
                role="tabpanel"
                id="examPattern"
              >
                <p class="course-details__tab-text">
                  {{ course.Pattern }}
                </p>
                <!-- /.course-details__tab-text -->
                <br />

                <!-- /.course-details__tab-text -->
                <br />

                <!-- /.list-unstyled course-details__overview-list -->
              </div>
              <!-- /.course-details__tab-content -->
              <div
                class="tab-pane animated fadeInUp"
                role="tabpanel"
                id="Eligibility"
              >
                <!-- /.course-details__title -->
                <br />
                <p class="course-details__tab-text">
                  {{ course.Eligibility }}
                </p>
                <!-- /.course-details__tab-text -->
                <br />
                <!-- <ul class="course-details__Eligibility-list list-unstyled">
                  <li>
                    <div class="course-details__Eligibility-list-left">
                      <div class="course-details__meta-icon video-icon">
                        <i class="fas fa-play"></i
                        >
                      </div>
                      
                      <a href="#">Introduction to Editing</a>
                      <span>Preview</span>
                    </div>
                    
                    <div class="course-details__Eligibility-list-right">
                      16 minutes
                    </div>
                    
                  </li>
                  <li>
                    <div class="course-details__Eligibility-list-left">
                      <div class="course-details__meta-icon video-icon">
                        <i class="fas fa-play"></i
                        >
                      </div>
                      
                      <a href="#">Overview of Editing</a> <span>Preview</span>
                    </div>
                    
                    <div class="course-details__Eligibility-list-right">
                      10 minutes
                    </div>
                    
                  </li>
                  <li>
                    <div class="course-details__Eligibility-list-left">
                      <div class="course-details__meta-icon file-icon">
                        <i class="fas fa-folder"></i
                        >
                      </div>
                      
                      <a href="#">Basic Editing Technology</a>
                    </div>
                    
                    
                  </li>
                  <li>
                    <div class="course-details__Eligibility-list-left">
                      <div class="course-details__meta-icon quiz-icon">
                        <i class="fas fa-comment"></i
                        >
                      </div>
                    
                      <a href="#">Quiz</a>
                    </div>
                    
                    <div class="course-details__Eligibility-list-right">
                      6 questions
                    </div>
                
                  </li>
                </ul> -->

                <br /><br />

                <!-- /.course-details__Eligibility-list -->
              </div>
              <!-- /.course-details__tab-content -->
              <div
                class="tab-pane animated fadeInUp"
                role="tabpanel"
                id="testPaper"
              >
                <div>
                  <h1>Test Papers</h1>
                </div>
                <div
                  class="course-details__comment"
                  v-for="testPaper in course.TestPapers"
                  :key="testPaper.id"
                >
                  <div class="col-xl-4 testPaper">
                    <i class="far fa-folder-open"></i>
                    <a
                      :href="
                        `https://admin.saraswaticentre.com` + testPaper.url
                      "
                      >{{ testPaper.name }}</a
                    >
                  </div>

                  <!-- /.col-lg-8 -->
                  <div
                    class="col-xl-5 justify-content-xl-end justify-content-sm-center d-flex"
                  ></div>
                  <!-- /.col-lg-4 -->
                </div>
                <!-- /.row -->

                <!-- /.course-details__comment -->

                <!-- /.course-details__comment-form -->
              </div>
              <!-- /.course-details__tab-content -->
            </div>
            <!-- /.tab-content -->
          </div>
          <!-- /.course-details__content -->
        </div>
        <!-- /.col-lg-8 -->
        <div class="col-lg-4">
          <div class="course-details__price">
            <p class="course-details__price-text">Course price</p>
            <!-- /.course-details__price-text -->
            <p class="course-details__price-amount">Rs.{{ course.Price }}</p>
            <!-- /.course-details__price-amount -->
            <a
              href="https://saraswati.trigrexam.com/"
              class="thm-btn course-details__price-btn"
              >Buy This Course</a
            ><!-- /.thm-btn -->
          </div>
          <!-- /.course-details__price -->

          <div class="course-details__meta">
            <a href="#" class="course-details__meta-link">
              <span class="course-details__meta-icon">
                <i class="far fa-clock"></i
                ><!-- /.far fa-clock --> </span
              ><!-- /.course-details__icon -->
              Durations: <span>{{ course.Duration }} hours</span> </a
            ><!-- /.course-details__meta-link -->
            <a href="#" class="course-details__meta-link">
              <span class="course-details__meta-icon">
                <i class="far fa-folder-open"></i
                ><!-- /.far fa-folder-open --> </span
              ><!-- /.course-details__icon -->
              Lectures: <span>{{ course.Lectures }}</span> </a
            ><!-- /.course-details__meta-link -->
            <a href="#" class="course-details__meta-link">
              <span class="course-details__meta-icon">
                <i class="far fa-user-circle"></i
                ><!-- /.far fa-user-circle --> </span
              ><!-- /.course-details__icon -->
              Ebooks: <span>{{ course.Ebooks }}</span> </a
            ><!-- /.course-details__meta-link -->
            <a href="#" class="course-details__meta-link">
              <span class="course-details__meta-icon">
                <i class="fas fa-play"></i
                ><!-- /.fas fa-play --> </span
              ><!-- /.course-details__icon -->
              Assignment: <span>{{ course.Assignment }}</span> </a
            ><!-- /.course-details__meta-link -->
            <a href="#" class="course-details__meta-link">
              <span class="course-details__meta-icon">
                <i class="far fa-flag"></i
                ><!-- /.far fa-flag --> </span
              ><!-- /.course-details__icon -->
              Mock Test: <span>{{ course.MockTest }}</span> </a
            ><!-- /.course-details__meta-link -->
            <a href="#" class="course-details__meta-link">
              <span class="course-details__meta-icon">
                <i class="far fa-bell"></i
                ><!-- /.far fa-bell --> </span
              ><!-- /.course-details__icon -->
              Language: <span>{{ course.Language }}</span> </a
            ><!-- /.course-details__meta-link -->
          </div>
          <!-- /.course-details__meta -->

          <!-- /.course-details__list -->
        </div>
        <!-- /.col-lg-4 -->
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container -->
  </section>
</template>

<script>
export default {
  name: "CourseDetails",
  props: ["course", "courseImageURL"],
};
</script>

<style>
.testPaper a {
  color: black;
}
</style>
