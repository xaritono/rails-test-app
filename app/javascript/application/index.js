import Vue from 'vue/dist/vue.esm'
import VueResource from 'vue-resource'
import App from './components/App.vue'

Vue.use(VueResource);

Vue.http.interceptors.push((request, next)  => {
  Vue.http.headers.common['X-CSRF-Token'] = document.getElementsByName("csrf-token")[0].getAttribute('content');
  request

  next((response) => {
    return response
  })
});


const app = new Vue({
  el: 'status',
  template: '<App/>',
  components: { App }
})
