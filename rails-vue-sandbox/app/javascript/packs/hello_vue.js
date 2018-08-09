 import Vue from 'vue/dist/vue.esm'

 document.addEventListener('DOMContentLoaded', () => {
   const app = new Vue({
     el: '#hello',
     data: {
       message: "ライトニング！"
     },
     components: { App }
   })
})

new Vue({
  el: '#app',
  data: {
    message: 'Hello Vue.js!'
  }
})
