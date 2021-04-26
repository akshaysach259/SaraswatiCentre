<template>
  <div class="testimonials">
    <div class="container">
      <div class="testimonial-heading text-center countdown-one__title">
        <p>Reviews</p>
      </div>
      <div class="row" v-for="testimonial in Testimonials" :key="testimonial.id">
        <div class="col-lg-7 testimonial">
      			<div class="quote">
        				<p>{{testimonial.TestimonialText}}</p>
			     </div>
			     <div class="student">
				     <p class="course-details__author">
              <img src="/assets/images/icons/user.png" alt="" />
               <span>
               <p class="author">{{testimonial.AuthorName}}</p>
				       <p class="author_tag">{{testimonial.Designation}}</p></span>
            </p>
			     </div>
           </div>
        <div class="col-lg-5">
          <div class="testimonial-video container">
            <iframe
              width="370"
              height="250"
              :src="`${testimonial.YoutubeVideoLink}`"
              title="YouTube video player"
              frameborder="0"
              allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
              allowfullscreen
            ></iframe>
          </div>
        </div>
      </div>
      
      <Testimonial/>
    </div>
  </div>
</template>

<script>
import Testimonial from "../components/Testimonial";
import axios from "axios";

export default {
  components:{
    Testimonial
  },
  data(){
    return {
       URL: "http://admin.saraswaticentre.com",
       Testimonials: [],
    }
  },
  mounted() {
    this.loadTestimonials();
  },
  methods:{
    async loadTestimonials(){
      axios.get(`${this.URL}/testimonials-pages`)
      .then((response)=>{
        this.Testimonials = response.data;
        console.log(this.Testimonials)
      });
    }
  }
};
</script>

<style>
.countdown-one__title{
  font-weight:bold;
}
.testimonial-video{
  padding: 5px;
  border-radius: 20px;
}
.author{
  font-size: 15px;
  line-height: 0.2;
}
.author_tag{
  font-size: 12px;
  line-height: 0.2;
}
.testimonial-heading {
  font-size: 3rem;
  line-height: 1.2;
  margin-top: 5rem;
  margin-bottom: 5rem;
  font-weight: bold;
  
}
.testimonial-comment {
  
}

.centered-text {
  text-align: center;
}

.quote {
  background: #ebf3f5;
  padding: 15px 20px 5px 15px;
  border-radius: 5px;
  margin-bottom: 15px;
}
.quote:after {
  content: '';
  width: 0px;
  height: 0px;
  border-style: solid;
  border-width: 20px 18px 0 18px;
  border-color: #ebf3f5 transparent transparent transparent;
  position: relative;
  top: 45px;
  left: 20px;
}

.student {
  margin-left: 25px;
  margin-bottom: 80px;
}
.student .photo {
  background-color: #ccc;
  border-radius: 100px;
  width: 60px;
  height: 60px;
  float: left;
  margin-right: 10px;
}
.student p {
  text-transform: uppercase;
}
.student p:nth-child(2) {
  font-size: 13px;
  font-weight: 200;
  margin-bottom: 0;
}
.student p:nth-child(3) {
  font-size: 14px;
  color: #777;
}
</style>
