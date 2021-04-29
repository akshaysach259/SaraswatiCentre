<template>
  <div class="currrent-affairs-container">
    <div class="col-lg-12">
      <h1 class="text-center current-affairs-heading">Current Affairs</h1>
      <ul class="capsule-pill" id="style-2">
        <span class="see-more">Top Current Affairs</span>
        <div class="current-affairs">
          <div
            class="capsule-container"
            v-for="currentaffair in CurrentAffairs"
            :key="currentaffair.id"
          >
            <a :href="`${currentaffair.Link}`" target="_blank">
              <li>
                <div class="capsule">
                  <div class="mr-4 ml-4 capusle-date">
                    <span class="day">{{ currentaffair.day }}</span>
                    <span class="month">{{ currentaffair.month }}</span>
                  </div>
                  <div class="capsule-text">
                    <span class="news">{{
                      currentaffair.CurrentAffairText
                    }}</span>
                    <div class="button-pill">
                      <div class="pill-date">
                        Published at : {{ currentaffair.CurrentAffairDate }}
                      </div>
                    </div>
                  </div>
                </div>
              </li>
            </a>
          </div>
        </div>
      </ul>
    </div>
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "CourseOne",
  data() {
    return {
      URL: "https://admin.saraswaticentre.com",
      CurrentAffairs: [],
    };
  },
  mounted() {
    this.loadCurrentAffairs();
  },
  methods: {
    async loadCurrentAffairs() {
      axios
        .get(`${this.URL}/current-affairs?_sort=published_at:DESC`)
        .then((response) => {
          const data = response.data;
          data.forEach((element) => {
            this.CurrentAffairs.push(element);
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
.current-affairs-heading {
  color: #012237;
  font-weight: bold;
  margin: 3rem 1px;
}
.see-more {
  color: #dce9f1;
  padding: 5px 10px;
  font-weight: 600;
  font-size: 1rem;
  cursor: help;
  background-color: #012237;
  margin-left: -15px;
}

.day .month {
  font-weight: bold;
}
.capsule-date {
  background-color: #ffffff;
  display: flex;
  font-weight: bold;
  flex-wrap: wrap;
}

.button-pill {
  width: 11rem;
  font-size: 12px;
  border: 0.5px solid #f4fbff;
  color: black;
  text-align: center;
  cursor: pointer;
  border-radius: 16px;
  margin-bottom: 8px;
}

.nc-container {
  background-color: #012237;
}
#style-2::-webkit-scrollbar-track {
  border-radius: 20px;
  background-color: #f5f5f5;
}

#style-2::-webkit-scrollbar {
  width: 9px;
  background-color: #f5f5f5;
}

#style-2::-webkit-scrollbar-thumb {
  border-radius: 10px;
  -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
  background-color: rgb(0, 66, 107);
}

.pill-date {
  font-weight: 500;
  color: #012237;
}
.capsule {
  margin-top: 1rem;
  display: flex;
  align-items: flex-start;
  border-bottom: 1px solid #012237;
  cursor: pointer;
  position: relative;
  border-spacing: 10px;
}

li :hover {
  background-color: #eaf3fa;
  border-radius: 10px;
}
.capsule-text span,
p {
  display: block;
  line-height: 1.2;
  font-size: 1rem;
  font-weight: 600;
  color: #012237;
}

.capusle-date span {
  margin-top: 5px;
  line-height: 1.2rem;
  text-align: center;
  display: block;
  font-weight: bold;
  color: #012237;
}
.capsule-pill {
  margin: 2rem 4rem;
  overflow-y: scroll;
  color: black;
  opacity: 0.95;
  padding: 1rem;
  background-position: center center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
  max-height: 700px;
  background-color: #dce9f1;
}
.currrent-affairs-container {
  width: 100%;
  padding-right: 15px;
  padding-left: 15px;
  margin-right: auto;
  margin-left: auto;
  margin-bottom: 2rem;
}
@media screen and (max-width: 500px) {
  .capsule-pill {
    margin: 1px;
    max-height: 600px;
  }
  .currrent-affairs-container {
    width: 100%;
    padding-left: 2px;
    padding-right: 2px;
    margin-right: auto;
    margin-left: auto;
  }
}
li {
  list-style: none;
}
</style>
