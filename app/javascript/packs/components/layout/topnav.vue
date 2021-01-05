<template>
  <div>
    <v-app-bar style="position: fixed; z-index:10000">
      <v-toolbar-title>
        Boston Public Library
      </v-toolbar-title>
      <v-spacer></v-spacer>

      <v-btn
      depressed
      color="primary"
      style="background-color:blue;color:white;"
    >
      {{ currentUser }}
    </v-btn>
    </v-app-bar>
  </div>
</template>

<script>
import axios from "axios";
export default {
   data () {
    return {
      currentUser: ''
    }
  },
  created() {
    this.initialize();
  },
  methods: {
    initialize(){
      return axios
      .get("/user")
      .then(response => {
        this.currentUser = response.data
      })
    },
    signOut(){
      return axios
        .delete("/users/sign_out")
        .then(response => {
          this.$router.push('/sign_in');
        })
        .catch(e => {
          console.log(e);
        });
    }
  }
}
</script>
