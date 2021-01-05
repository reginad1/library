<template>
  <v-app id="data">
    <v-row justify="center">
      <v-col
        cols="12"
        sm="8"
        md="4"
      >
        <v-card class="elevation-12">
          <v-toolbar
            color="primary"
            dark
            flat
          >
            <v-toolbar-title>Sign In</v-toolbar-title>
          </v-toolbar>
        <v-card-text>
          <form
            ref="form"
            lazy-validation
          >
              <!-- <v-text-field
              v-model="firstName"
              label="First Name"
              required
            ></v-text-field>

            <v-text-field
              v-model="lastName"
              label="Last Name"
              required
            ></v-text-field> -->

            <v-text-field
              v-model="email"
              label="Email"
              required
            ></v-text-field>

             <v-text-field
              v-model="password"
              label="Password"
              :type="'password'"
              required
            ></v-text-field>
            <!-- <v-btn
            elevation="2"
            small
            class="mr-4"
            @click="createAccount">
              Create Account
            </v-btn> -->
            <v-btn
            elevation="2"
            small
            class="mr-4"
            @click="signIn">
              Sign In
            </v-btn>

          </form>
        </v-card-text>
      </v-card>
    </v-col>
   </v-row>
  </v-app>
</template>


<script>
  import axios from "axios";
  export default {
    data: () => ({
      firstName: null,
      lastName: null,
      email: null,
      password: null,
      error_messages: null
    }),
    methods: {
      // createAccount() {
      //   return axios
      //   .post("/users", {
      //       first_name: this.firstName,
      //       last_name: this.lastName,
      //       password: this.password,
      //       email: this.email
      //     }
      //   ).then(response => {
      //     if(response.status == 204){
      //       this.$router.push('/');
      //     }
      //   })
      // },
      signIn() {
        return axios
        .post("/sign_in", {
            password: this.password,
            email: this.email
          }
        ).then(response => {
          if(response.status == 204){
            this.$router.push('/');
          }
        })
      }
    }
  };
</script>
