<template>
  <div class="col-lg-12">
    <div>
      <h3 class="previous-year-question__main-heading">
        Previous Year Question Papers
      </h3>
    </div>
    <div class="course-details__meta">
      <!-- /.previous-year__meta-link -->
      <div
        class="previous-year__meta-link"
        v-for="questionpaper in questionPapers"
        :key="questionpaper.id"
      >
        <span class="previous-year__heading">{{
          questionpaper.SubjectTitle
        }}</span>
        <ul class="previous_year_questiosns_li_box">
          <li v-for="paper in questionpaper.questionpapers" :key="paper.id">
            <a
              target="_blank"
              class="previous-year__meta-link-a"
              :href="
                `https://admin.saraswaticentre.com` + paper.QuestionPaper.url
              "
              >{{ paper.Name }}</a
            >
          </li>
        </ul>
      </div>
      <!-- /.previous-year__meta-link -->
    </div>
    <!-- /.previous-year__meta -->

    <!-- /.previous-year__list -->
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "PreviousYearQuestions",
  data() {
    return {
      URL: "https://admin.saraswaticentre.com",
      questionPapers: null,
    };
  },
  mounted() {
    this.loadQuestionPapers();
  },
  methods: {
    async loadQuestionPapers() {
      axios
        .get(`${this.URL}/previous-year-question-papers`)
        .then((response) => {
          this.questionPapers = response.data;
        })
        .catch((error) => {
          console.log(error);
          this.errored = true;
        });
    },
  },
};
</script>

<style>
.previous_year_questiosns_li_box {
  margin-left: 18px;
  margin-top: 15px;
}
.previous-year__heading {
  margin-bottom: 20px;
}
.previous-year-questions {
  margin-left: 30px;
  margin-top: 20px;
}
.previous-year-questions__heading {
  color: black;
  font-weight: 700;
}
previous-year-questions__ul {
  margin-top: 10px;
}
.previous-year__meta-link {
  display: -webkit-box;
  display: -ms-flexbox;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: left;
  color: #81868a;
  font-size: 18px;
  font-weight: 500;
  padding: 22px 50px;
  -webkit-transition: all 0.4s ease;
  transition: all 0.4s ease;
}
.previous-year__meta-link-a {
  color: #f16101;
}
.previous-year__meta-link-a:hover {
  color: #81868a;
}
.previous-year__meta-link:hover .previous-year__meta-icon::before {
  left: 0;
}
.previous-year__meta-link span {
  color: #012237;
  margin-left: 15px;
  margin-bottom: 25px;
  font-size: 24px;
  font-weight: 600;
  padding-bottom: 32px;
}
.previous-year__meta-link:nth-child(1) .previous-year__meta-icon {
  background-color: #1888c9;
}
.previous-year__meta-link:nth-child(1) .previous-year__meta-icon::before {
  border-color: #1888c9;
}
.previous-year__meta-link:nth-child(2) .previous-year__meta-icon {
  background-color: #7c4bc0;
}
.previous-year__meta-link:nth-child(2) .previous-year__meta-icon::before {
  border-color: #7c4bc0;
}
.previous-year__meta-link:nth-child(3) .previous-year__meta-icon {
  background-color: #f16101;
}
.previous-year__meta-link:nth-child(3) .previous-year__meta-icon::before {
  border-color: #f16101;
}
.previous-year__meta-link:nth-child(4) .previous-year__meta-icon {
  background-color: #2da397;
}
.previous-year__meta-link:nth-child(4) .previous-year__meta-icon::before {
  border-color: #2da397;
}
.previous-year__meta-link:nth-child(5) .previous-year__meta-icon {
  background-color: #d23f3f;
}
.previous-year__meta-link:nth-child(5) .previous-year__meta-icon::before {
  border-color: #d23f3f;
}
.previous-year__meta-link:nth-child(6) .previous-year__meta-icon {
  background-color: #33a9bb;
}
.previous-year__meta-link:nth-child(6) .previous-year__meta-icon::before {
  border-color: #33a9bb;
}
.previous-year__meta-link + .previous-year__meta-link {
  border-top: 2px solid #f1f1f1;
}
.previous-year-question__main-heading {
  color: black;
  padding: 30px;
  font-weight: 700;
}
</style>