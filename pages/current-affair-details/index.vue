<template>
  <div>
    <NavOne />
    <PageHeader title="Current-Affair" img="../assets/images/blog.jpg" />
    <CurrentAffairsDetails
      :currentAffair="currentAffair"
      :currentAffairImageURL="currentAffairImageURL"
    />
    <Footer />
  </div>
</template>
<script>
import PageHeader from "../../components/PageHeader";
import NavOne from "../../components/NavOne";
import Footer from "../../components/Footer";
import CurrentAffairsDetails from "../../components/CurrentAffairsDetails";
import axios from "axios";
export default {
  components: { CurrentAffairsDetails, Footer, NavOne, PageHeader },
  head() {
    return {
      title: "SaraswatiCentre  | CurrentAffair Details",
    };
  },
  data() {
    return {
      URL: "https://admin.saraswaticentre.com",
      currentAffair: "",
      currentAffairImageURL: "",
    };
  },
  mounted() {
    this.loadCourse();
  },
  methods: {
    async loadCourse() {
      axios
        .get(`${this.URL}/current-affairs/${this.$route.params.id}`)
        .then((response) => {
          this.currentAffair = response.data;
          this.currentAffairImageURL = this.currentAffair.Image770X427.url;
        })
        .catch((error) => {
          console.log(error);
          this.errored = true;
        });
    },
  },
};
</script>
