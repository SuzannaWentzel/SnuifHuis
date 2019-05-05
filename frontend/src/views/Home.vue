<template>
  <div class="homepage">
    <div class="front-banner">
      <h1>Welkom!</h1>
      <h2>Op de <span class="highlighted">Snuifhuis</span> website</h2>
    </div>
  </div>
</template>

<script>
// @ is an alias to /src
import HelloWorld from "@/components/HelloWorld.vue";

export default {
  name: "home",
  components: {
    HelloWorld
  }
};
</script>

<style lang="scss" scoped>
  .front-banner {
    background-image: url('../../public/images/woonkamer.jpg');
    height: 100vh;
    width: 100vw;
    padding: 0;
    margin: 0;
    position: relative;
    background-position: center;
    background-size: cover;
  }
</style>
