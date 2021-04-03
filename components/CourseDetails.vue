<template>
  <section class="course-details">
    <div class="container">
      <div class="row">
        <div class="col-lg-8">
          <div class="course-details__content">
            <p class="course-details__author">
              <img src="/assets/images/team-1-1.jpg" alt="" />
              by <a href="#">{{ course.TeacherName }}</a>
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
              <img src="/assets/images/course-d-1.jpg" alt="" />
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
                <a class="" role="tab" data-toggle="tab" href="#curriculum"
                  >Curriculum</a
                >
              </li>
              <li>
                <a class="" role="tab" data-toggle="tab" href="#review"
                  >Reviews</a
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
                  {{ course.Description }}
                </p>
                <!-- /.course-details__tab-text -->
                <br />
                <p class="course-details__tab-text">
                  {{ course.Description }}
                </p>
                <!-- /.course-details__tab-text -->
                <br />
                <ul class="list-unstyled course-details__overview-list">
                  <li>It has survived not only five centuries</li>
                  <li>Lorem Ipsum is simply dummy text of the new design</li>
                  <li>Printng and type setting ipsum</li>
                  <li>Take a look at our round up of the best shows</li>
                </ul>
                <!-- /.list-unstyled course-details__overview-list -->
              </div>
              <!-- /.course-details__tab-content -->
              <div
                class="tab-pane animated fadeInUp"
                role="tabpanel"
                id="curriculum"
              >
                <!-- /.course-details__title -->
                <br />
                <p class="course-details__tab-text">
                  {{ course.Curriculum }}
                </p>
                <!-- /.course-details__tab-text -->
                <br />
                <!-- <ul class="course-details__curriculum-list list-unstyled">
                  <li>
                    <div class="course-details__curriculum-list-left">
                      <div class="course-details__meta-icon video-icon">
                        <i class="fas fa-play"></i
                        >
                      </div>
                      
                      <a href="#">Introduction to Editing</a>
                      <span>Preview</span>
                    </div>
                    
                    <div class="course-details__curriculum-list-right">
                      16 minutes
                    </div>
                    
                  </li>
                  <li>
                    <div class="course-details__curriculum-list-left">
                      <div class="course-details__meta-icon video-icon">
                        <i class="fas fa-play"></i
                        >
                      </div>
                      
                      <a href="#">Overview of Editing</a> <span>Preview</span>
                    </div>
                    
                    <div class="course-details__curriculum-list-right">
                      10 minutes
                    </div>
                    
                  </li>
                  <li>
                    <div class="course-details__curriculum-list-left">
                      <div class="course-details__meta-icon file-icon">
                        <i class="fas fa-folder"></i
                        >
                      </div>
                      
                      <a href="#">Basic Editing Technology</a>
                    </div>
                    
                    
                  </li>
                  <li>
                    <div class="course-details__curriculum-list-left">
                      <div class="course-details__meta-icon quiz-icon">
                        <i class="fas fa-comment"></i
                        >
                      </div>
                    
                      <a href="#">Quiz</a>
                    </div>
                    
                    <div class="course-details__curriculum-list-right">
                      6 questions
                    </div>
                
                  </li>
                </ul> -->

                <br /><br />
                <h3 class="course-details__tab-title">Intermediate Level</h3>
                <!-- /.course-details__title -->
                <br />
                <p class="course-details__tab-text">
                  Aelltes port lacus quis enim var sed efficitur turpis gilla
                  sed sit Lorem Ipsum is simply dummy text of the printing and
                  typesetting industry. Lorem Ipsum has been the industry’s
                  standard dummy text ever since.
                </p>
                <!-- /.course-details__tab-text -->
                <br />
                <ul class="course-details__curriculum-list list-unstyled">
                  <li>
                    <div class="course-details__curriculum-list-left">
                      <div class="course-details__meta-icon video-icon">
                        <i class="fas fa-play"></i
                        ><!-- /.fas fa-play -->
                      </div>
                      <!-- /.course-details__icon -->
                      <a href="#">Introduction to Editing</a>
                      <span>Preview</span>
                    </div>
                    <!-- /.course-details__curriculum-list-left -->
                    <div class="course-details__curriculum-list-right">
                      16 minutes
                    </div>
                    <!-- /.course-details__curriculum-list-right -->
                  </li>
                  <li>
                    <div class="course-details__curriculum-list-left">
                      <div class="course-details__meta-icon file-icon">
                        <i class="fas fa-folder"></i
                        ><!-- /.far fa-folder -->
                      </div>
                      <!-- /.course-details__icon -->
                      <a href="#">Basic Editing Technology</a>
                    </div>
                    <!-- /.course-details__curriculum-list-left -->
                    <!-- /.course-details__curriculum-list-right -->
                  </li>
                  <li>
                    <div class="course-details__curriculum-list-left">
                      <div class="course-details__meta-icon quiz-icon">
                        <i class="fas fa-comment"></i
                        ><!-- /.fas fa-play -->
                      </div>
                      <!-- /.course-details__icon -->
                      <a href="#">Quiz</a>
                    </div>
                    <!-- /.course-details__curriculum-list-left -->
                    <div class="course-details__curriculum-list-right">
                      6 questions
                    </div>
                    <!-- /.course-details__curriculum-list-right -->
                  </li>
                </ul>
                <!-- /.course-details__curriculum-list -->
              </div>
              <!-- /.course-details__tab-content -->
              <div
                class="tab-pane animated fadeInUp"
                role="tabpanel"
                id="review"
              >
                <div class="row">
                  <div class="col-xl-7 d-flex">
                    <div class="course-details__progress my-auto">
                      <div class="course-details__progress-item">
                        <p class="course-details__progress-text">Excellent</p>
                        <!-- /.course-details__progress-text -->
                        <div class="course-details__progress-bar">
                          <span style="width: 95%"></span>
                        </div>
                        <!-- /.course-details__progress-bar -->
                        <p class="course-details__progress-count">5</p>
                        <!-- /.course-details__progress-count -->
                      </div>
                      <!-- /.course-details__progress-item -->
                      <div class="course-details__progress-item">
                        <p class="course-details__progress-text">Very Good</p>
                        <!-- /.course-details__progress-text -->
                        <div class="course-details__progress-bar">
                          <span style="width: 65%"></span>
                        </div>
                        <!-- /.course-details__progress-bar -->
                        <p class="course-details__progress-count">2</p>
                        <!-- /.course-details__progress-count -->
                      </div>
                      <!-- /.course-details__progress-item -->
                      <div class="course-details__progress-item">
                        <p class="course-details__progress-text">Average</p>
                        <!-- /.course-details__progress-text -->
                        <div class="course-details__progress-bar">
                          <span style="width: 33%"></span>
                        </div>
                        <!-- /.course-details__progress-bar -->
                        <p class="course-details__progress-count">1</p>
                        <!-- /.course-details__progress-count -->
                      </div>
                      <!-- /.course-details__progress-item -->
                      <div class="course-details__progress-item">
                        <p class="course-details__progress-text">Poor</p>
                        <!-- /.course-details__progress-text -->
                        <div class="course-details__progress-bar">
                          <span style="width: 0%" class="no-bubble"></span>
                        </div>
                        <!-- /.course-details__progress-bar -->
                        <p class="course-details__progress-count">0</p>
                        <!-- /.course-details__progress-count -->
                      </div>
                      <!-- /.course-details__progress-item -->
                      <div class="course-details__progress-item">
                        <p class="course-details__progress-text">Terrible</p>
                        <!-- /.course-details__progress-text -->
                        <div class="course-details__progress-bar">
                          <span style="width: 0%" class="no-bubble"></span>
                        </div>
                        <!-- /.course-details__progress-bar -->
                        <p class="course-details__progress-count">0</p>
                        <!-- /.course-details__progress-count -->
                      </div>
                      <!-- /.course-details__progress-item -->
                    </div>
                    <!-- /.course-details__progress -->
                  </div>
                  <!-- /.col-lg-8 -->
                  <div
                    class="col-xl-5 justify-content-xl-end justify-content-sm-center d-flex"
                  >
                    <div class="course-details__review-box">
                      <p class="course-details__review-count">4.6</p>
                      <!-- /.course-details__review-count -->
                      <div class="course-details__review-stars">
                        <i class="fas fa-star"></i
                        ><!-- /.fas fa-star -->
                        <i class="fas fa-star"></i
                        ><!-- /.fas fa-star -->
                        <i class="fas fa-star"></i
                        ><!-- /.fas fa-star -->
                        <i class="fas fa-star"></i
                        ><!-- /.fas fa-star -->
                        <i class="fas fa-star-half"></i
                        ><!-- /.fas fa-star -->
                      </div>
                      <!-- /.course-details__review-stars -->
                      <p class="course-details__review-text">30 reviews</p>
                      <!-- /.course-details__review-text -->
                    </div>
                    <!-- /.course-details__review-box -->
                  </div>
                  <!-- /.col-lg-4 -->
                </div>
                <!-- /.row -->
                <div class="course-details__comment">
                  <div class="course-details__comment-single">
                    <div class="course-details__comment-top">
                      <div class="course-details__comment-img">
                        <img src="/assets/images/team-1-1.jpg" alt="" />
                      </div>
                      <!-- /.course-details__comment-img -->
                      <div class="course-details__comment-right">
                        <h2 class="course-details__comment-name">
                          Steven Meyer
                        </h2>
                        <!-- /.course-details__comment-name -->
                        <div class="course-details__comment-meta">
                          <p class="course-details__comment-date">
                            26 July, 2019
                          </p>
                          <!-- /.course-details__comment-date -->
                          <div class="course-details__comment-stars">
                            <i class="fa fa-star"></i
                            ><!-- /.fa fa-star -->
                            <i class="fa fa-star"></i
                            ><!-- /.fa fa-star -->
                            <i class="fa fa-star"></i
                            ><!-- /.fa fa-star -->
                            <i class="fa fa-star"></i
                            ><!-- /.fa fa-star -->
                            <i class="fa fa-star star-disabled"></i
                            ><!-- /.fa fa-star -->
                          </div>
                          <!-- /.course-details__comment-stars -->
                        </div>
                        <!-- /.course-details__comment-meta -->
                      </div>
                      <!-- /.course-details__comment-right -->
                    </div>
                    <!-- /.course-details__comment-top -->
                    <p class="course-details__comment-text">
                      Lorem ipsum is simply free text used by copytyping
                      refreshing. Neque porro est qui dolorem ipsum quia quaed
                      inventore veritatis et quasi architecto beatae vitae dicta
                      sunt explicabo.
                    </p>
                    <!-- /.course-details__comment-text -->
                  </div>
                  <!-- /.course-details__comment-single -->
                  <div class="course-details__comment-single">
                    <div class="course-details__comment-top">
                      <div class="course-details__comment-img">
                        <img src="/assets/images/team-1-2.jpg" alt="" />
                      </div>
                      <!-- /.course-details__comment-img -->
                      <div class="course-details__comment-right">
                        <h2 class="course-details__comment-name">
                          Lina Kelley
                        </h2>
                        <!-- /.course-details__comment-name -->
                        <div class="course-details__comment-meta">
                          <p class="course-details__comment-date">
                            26 July, 2019
                          </p>
                          <!-- /.course-details__comment-date -->
                          <div class="course-details__comment-stars">
                            <i class="fa fa-star"></i
                            ><!-- /.fa fa-star -->
                            <i class="fa fa-star"></i
                            ><!-- /.fa fa-star -->
                            <i class="fa fa-star"></i
                            ><!-- /.fa fa-star -->
                            <i class="fa fa-star star-disabled"></i
                            ><!-- /.fa fa-star -->
                            <i class="fa fa-star star-disabled"></i
                            ><!-- /.fa fa-star -->
                          </div>
                          <!-- /.course-details__comment-stars -->
                        </div>
                        <!-- /.course-details__comment-meta -->
                      </div>
                      <!-- /.course-details__comment-right -->
                    </div>
                    <!-- /.course-details__comment-top -->
                    <p class="course-details__comment-text">
                      Lorem ipsum is simply free text used by copytyping
                      refreshing. Neque porro est qui dolorem ipsum quia quaed
                      inventore veritatis et quasi architecto beatae vitae dicta
                      sunt explicabo.
                    </p>
                    <!-- /.course-details__comment-text -->
                  </div>
                  <!-- /.course-details__comment-single -->
                </div>
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
            <p class="course-details__price-amount">Rs.{{ course.id }}</p>
            <!-- /.course-details__price-amount -->
            <a href="#" class="thm-btn course-details__price-btn"
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
              Durations: <span>{{ course.id }} hours</span> </a
            ><!-- /.course-details__meta-link -->
            <a href="#" class="course-details__meta-link">
              <span class="course-details__meta-icon">
                <i class="far fa-folder-open"></i
                ><!-- /.far fa-folder-open --> </span
              ><!-- /.course-details__icon -->
              Lectures: <span>{{ course.TotalVideos }}</span> </a
            ><!-- /.course-details__meta-link -->
            <a href="#" class="course-details__meta-link">
              <span class="course-details__meta-icon">
                <i class="far fa-user-circle"></i
                ><!-- /.far fa-user-circle --> </span
              ><!-- /.course-details__icon -->
              Students: <span>{{ course.TotalStudents }}</span> </a
            ><!-- /.course-details__meta-link -->
            <a href="#" class="course-details__meta-link">
              <span class="course-details__meta-icon">
                <i class="fas fa-play"></i
                ><!-- /.fas fa-play --> </span
              ><!-- /.course-details__icon -->
              Video: <span>{{ course.TotalVideos }}</span> </a
            ><!-- /.course-details__meta-link -->
            <a href="#" class="course-details__meta-link">
              <span class="course-details__meta-icon">
                <i class="far fa-flag"></i
                ><!-- /.far fa-flag --> </span
              ><!-- /.course-details__icon -->
              Skill Level: <span>{{ course.SkillLevel }}</span> </a
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
  props: ["course"],
};
</script>

<style scoped>
</style>
