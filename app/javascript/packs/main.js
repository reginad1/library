import Vue from 'vue'
import Vuetify from 'vuetify'
import Router from 'vue-router'
import axios from "axios"
import Home from '../home.vue'
import SignIn from './components/sign_in.vue'
import Ebooks from './components/ebooks.vue'

Vue.use(Vuetify)
Vue.use(Router)

const routes  = [
   {
     path: '/sign_in',
     component: SignIn
    },
    {
      path: '/',
      component: Ebooks
    }
  ]

const router = new Router({routes})

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
  vuetify: new Vuetify(),
  router,
  render: h => h(Home)
  }).$mount()
  document.body.appendChild(app.$el)
  })
