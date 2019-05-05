<template>
  <div class="homepage">
    <FrontBanner/>
  </div>
</template>

<script>
  // @ is an alias to /src
  import FrontBanner from "../components/frontpage/FrontBanner";

  export default {
  name: "home",
  components: {
    FrontBanner}
};
</script>

<style lang="scss" scoped>

  @media screen and (max-width: 600px){
  }

  @media screen and (min-width: 601px){
  }

</style>
