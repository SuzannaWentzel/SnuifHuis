<template>
  <div class="homepage">
    <div class="front-banner">
      <div class="black">
        <h1>Welkom!</h1>
        <h2>Op de <span class="highlighted">Snuifhuis</span> website</h2>
      </div>
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

  @media screen and (max-width: 600px){
    .black {
      padding-top: 30vh;
    }
  }

  @media screen and (min-width: 601px){
    .black {
      padding: 30vh 0 0 0;
      height: 70vh;
    }
  }

  .front-banner {
    background-image: url('../../public/images/woonkamer.jpg');
    height: 100vh;
    width: 100vw;
    padding: 0;
    margin: 0;
    position: relative;
    background-position: center;
    background-size: cover;
    display: block;
    color: white;

    h1 {
      font-size: 75px;
    }

    h2 {
      font-size: 26px;

      .highlighted {
        color: var(--yellow);
      }
    }
  }

  .black {
    background-color: rgba(0, 0, 0, 0.5);
  }
</style>
