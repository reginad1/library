<template>
  <div id="app">
    <topnav></topnav>
     <div style="padding:80px 50px; margin-left: 56px;">
      <v-app>
        <p>{{ message }}</p>
        <router-view></router-view>
      </v-app>
    </div>
  </div>
</template>

<script>
import topnav from "./packs/components/layout/topnav.vue";
export default {
  data: function () {
    return {
      message: ""
    }
  },
  components: {
    topnav: topnav,
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
