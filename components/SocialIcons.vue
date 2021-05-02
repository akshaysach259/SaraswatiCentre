<template>
  <div class="container">
    <div class="social-icons-container text-center">
      <h1 class="heading-social">Start your Free Learing</h1>
      <div class="row">
        <div class="col">
          <a
            href="https://www.youtube.com/channel/UCKnIejuld8lPedL4ZvH5RvQ"
            target="_blank"
          >
            <div class="icon-container">
              <div class="youtube">
                <img src="/assets/images/icons/youtube.png" alt="" srcset="" />
              </div>
            </div>
          </a>
        </div>
        <div class="col">
          <a
            href="https://www.facebook.com/groups/403656961051968"
            target="_blank"
          >
            <div class="icon-container">
              <div class="facebook">
                <img src="/assets/images/icons/facebook.png" alt="" srcset="" />
              </div>
            </div>
          </a>
        </div>
        <div class="col">
          <a href="https://saraswaticentre.blogspot.com/" target="_blank">
            <div class="icon-container">
              <div class="blogger">
                <img src="/assets/images/icons/blogger.png" alt="" srcset="" />
              </div>
            </div>
          </a>
        </div>
        <div class="col">
          <a href="https://t.me/saraswaticentre " target="_blank">
            <div class="icon-container">
              <div class="telegram">
                <img src="/assets/images/icons/telegram.png" alt="" srcset="" />
              </div>
            </div>
          </a>
        </div>
      </div>
      <div class="row">
        <div class="col">
          <a href="https://twitter.com/SBIPOcoaching" target="_blank">
            <div class="icon-container">
              <div class="twitter">
                <img src="/assets/images/icons/twitter.png" alt="" srcset="" />
              </div>
            </div>
          </a>
        </div>

        <div class="col">
          <a
            href="https://www.linkedin.com/in/saraswati-centre-aab72b208/"
            target="_blank"
          >
            <div class="icon-container">
              <div class="linkedin">
                <img src="/assets/images/icons/linkedin.png" alt="" srcset="" />
              </div>
            </div>
          </a>
        </div>
        <div class="col">
          <a
            href="https://www.instagram.com/saraswaticen/?r=nametag"
            target="_blank"
          >
            <div class="icon-container">
              <div class="instagram">
                <img
                  src="/assets/images/icons/instagram.png"
                  alt=""
                  srcset=""
                />
              </div>
            </div>
          </a>
        </div>
        <div class="col">
          <a
            href="https://sbipocoaching.business.site/?utm_source=gmb&utm_medium=referral"
          >
            <div class="icon-container">
              <div class="gmail">
                <img src="/assets/images/icons/gmail.png" alt="" srcset="" />
              </div>
            </div>
          </a>
        </div>
      </div>
    </div>
    <Contact />
  </div>
</template>

<script>
import Contact from "../components/Contact";
export default {
  components: { Contact },
};
</script>

<style scoped>
.heading-social {
  margin-bottom: 3rem;
  color: #022c46;
  font-weight: bold;
}
.social-icons-container {
  margin-top: 3rem;
  margin-bottom: 3rem;
}
.icon-container {
  margin-bottom: 3rem;
}
.icon-container img {
  max-height: 10rem;
  padding: 1rem;
}

.icon-container :hover {
  opacity: 0.8;
  cursor: pointer;
}

@media only screen and (max-width: 500px) {
  .heading-social {
    margin-bottom: 3rem;
    color: #022c46;
    font-size: 2.5rem;
    font-weight: bold;
  }
}

.facebook {
  background-color: #1976d2;
}
.gmail {
  background-color: #cfd8dc;
}
.youtube {
  background-color: #eceff1;
}
.linkedin {
  background-color: #eceff1;
}
.twitter {
  background-color: #00ade8;
}
.telegram {
  background-color: #61a8de;
}
.instagram {
  background-color: #ff9f4b;
}
.blogger {
  background-color: #ff8000;
}
</style>