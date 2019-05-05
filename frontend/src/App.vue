<template>
  <div id="app">
    <div id="nav">
      <div class="nav-block">
        <router-link to="/">SNUIFHUIS</router-link>
      </div>
      <div class="nav-block">
        <router-link to="/about">BEWONERS</router-link>
      </div>
      <div class="nav-block">
        <router-link to="/" title="Food Wall of Shame">FWOS</router-link>
      </div>
      <div class="nav-block">
        <router-link to="/">FOTO'S</router-link>
      </div>
      <div class="nav-block">
        <router-link to="/">TITELS</router-link>
      </div>
      <div class="burger">
        <i class="fas fa-hamburger" onclick="showNav()"></i>
      </div>
    </div>
    <router-view />
  </div>
</template>

<script>
  export default {
    name: "App",
    methods: {
      showNav() {

      }
    }
  };
</script>

<style lang="scss">
  * {
    padding: 0;
    margin: 0;
  }

  @media screen and (max-width: 600px){
    #nav {
      z-index: 1000;
      height: 60px;
      width: 100%;
      position: absolute;
      background-color: rgba(0, 0, 0, 0.6);

      .nav-block:not(:first-child) {
        display: none;
      }
    }

    .nav-block {
      float: left;
      padding-left: 20px;
      font-size: 18px;
      a {
        color: white;
        text-decoration: none;
        line-height: 60px;
      }
    }

    .burger {
      color: white;
      line-height: 60px;
      font-size: 24px;
      float: right;
      padding-right: 20px;
    }
  }

  @media screen and (min-width: 601px){
    #nav {
      height: 60px;
      margin-top: 55vh;
      width: 100%;
      box-sizing: border-box;
      z-index: 1000;
      position: absolute;
      display: flex;
      align-content: center;
      justify-content: center;
      flex-flow: row nowrap;
      font-family: segoe UI;
      a {
        font-weight: bold;
      }
    }

    .nav-block {
      width: 150px;
      height: 40px;
      margin-left: 0.5%;
      margin-right: 0.5%;
      margin-top: 10px;
      background-color: rgba(255, 255, 255, 0.6);

      a {
        font-size: 18px;
        line-height: 40px;
        color: white !important;
        text-decoration: none;
        &.router-link-exact-active {
          color: #2E0E02 !important;
        }
      }
    }

    .burger {
      display: none;
    }
  }

#app {
  font-family: "Segoe UI", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
}


</style>
