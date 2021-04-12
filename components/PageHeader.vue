<template>
  <section class="inner-banner" :style="`background-image: url(${img});`">
    <div class="container">
      <ul class="list-unstyled thm-breadcrumb">
        <li class="active"></li>
      </ul>
      <!-- /.list-unstyled -->
      <h2 class="inner-banner__title">{{ title }}</h2>
      <!-- /.inner-banner__title -->
    </div>
    <!-- /.container -->
  </section>
</template>

<script>
export default {
  name: "PageHeader",
  props: {
    title: {
      type: String,
    },
    img: {
      type: String,
    },
  },
};
</script>

<style scoped>
</style>
