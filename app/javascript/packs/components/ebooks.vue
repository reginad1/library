<template>
  <v-app id="data">
    <v-data-table
      :headers="headers"
      :items="ebooks"
      :items-per-page="5"
      class="elevation-1"
      :search="search"
    >
      <template v-slot:top>
        <v-text-field
          v-model="search"
          label="Search"
          class="mx-4"
        ></v-text-field>
      </template>

      <template v-slot:[`item.links`]="{ item }">
        <v-btn small color="normal" v-if="item.attributes.available_copies > 0" @click="reserve(item)">Reserve</v-btn>
        <v-btn small color="normal" disabled v-else>Not Available</v-btn>
      </template>

    </v-data-table>

  </v-app>
</template>

<script>
  import axios from "axios";
  export default {
    data () {
      return {
        search: '',
        ebooks: [],
        headers: [,
          { text: 'Title', value: 'attributes.title' },
          { text: 'Status', value: 'attributes.status_name' },
          { text: 'Copies Available', value: 'attributes.available_copies' },
          { text: '', value: 'links'}
        ],
      }
    },
    created() {
      this.initialize();
    },
    methods: {
      initialize() {
      return axios
        .get("/ebooks")
        .then(response => {
          this.ebooks = response.data["data"];
        })
        .catch(e => {
          console.log(e);
        });
      },
      reserve(ebook){
        return axios
        .post("/checked_out_books", {
          ebook: ebook
        })
      }
    }
  }
</script>
