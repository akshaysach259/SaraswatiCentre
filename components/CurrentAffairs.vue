<template>
  <div class="nc-container">
    <div class="row">
      <div class="col-lg-8">
        <h1 class="text-center current-affairs-heading">Current Affairs</h1>
        <ul class="capsule-pill" id="style-2">
          <nuxt-link to="/current-affairs">
            <span class="see-more">See More</span>
          </nuxt-link>
          <div class="current-affairs">
            <div
              class="capsule-container"
              v-for="currentaffair in CurrentAffairs"
              :key="currentaffair.id"
            >
              <a :href="`current-affair-details/${currentaffair.id}`">
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
      <div class="col-lg-4 notification-container">
        <h1 class="text-center notification-heading">Notifications</h1>
        <ul class="notification-pill" id="style-2">
          <div class="current-affairs blink">
            <div
              class="capsule-container"
              v-for="Notification in Notifications"
              :key="Notification.id"
            >
              <a :href="`${Notification.Link}`">
                <li>
                  <div class="capsule">
                    <div class="mr-4 ml-4 capusle-date">
                      <span class="day">{{ Notification.Day }}</span>
                      <span class="month">{{ Notification.Month }}</span>
                    </div>
                    <div class="capsule-text">
                      <span class="news">{{
                        Notification.NotificationText
                      }}</span>
                      <div class="button-pill">
                        <div class="pill-date">
                          posted on: {{ Notification.NotificationDate }}
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
      Notifications: [],
    };
  },
  mounted() {
    this.loadCurrentAffairs();
    this.loadNotifications();
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
    async loadNotifications() {
      axios
        .get(`${this.URL}/notifications?_sort=published_at:DESC`)
        .then((response) => {
          const data = response.data;
          data.forEach((element) => {
            this.Notifications.push(element);
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
  color: #dce9f1;
  margin: 3rem 1px;
}
.see-more {
  color: #dce9f1;
  padding: 5px 10px;
  font-weight: 600;
  font-size: 1rem;
  cursor: pointer;
  background-color: #012237;
}
.notification-heading {
  color: #012237;
  margin: 3rem 1px;
  font-weight: bold;
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

@keyframes blink {
  0% {
    opacity: 1;
  }
  50% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}

.blink {
  animation: blink 1s infinite;
}
.nc-heading {
  margin-bottom: 1.5rem;
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

.capsule-text span,
p {
  display: block;
  line-height: 1.2;
  font-size: 1rem;
  font-weight: 600;
  color: #012237;
}

.capusle-date span {
  margin-top: 4px;
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
  max-height: 400px;
  background-color: #dce9f1;
}
.notification-pill {
  margin: 2rem 4rem 4rem 4rem;
  overflow-y: scroll;
  color: black;
  opacity: 0.95;
  padding: 1rem;
  background-position: center center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
  max-height: 400px;
  background-color: #ececec;
}
@media screen and (max-width: 500px) {
  .capsule-pill {
    margin: 1rem;
    max-height: 450px;
    padding: 1rem 0;
  }
  .notification-pill {
    margin: 1rem;
    max-height: 350px;
    padding: 1rem 0;
  }
}
li {
  list-style: none;
}
.notification-container {
  background-color: #fff;
  color: #012237;
  opacity: 0.97;
}
</style>
