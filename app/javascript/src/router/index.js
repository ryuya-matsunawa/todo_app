import Vue from "vue";
import Router from "vue-router";
import Index from "../pages/Index.vue"
import Detail from "../pages/Detail.vue"

Vue.use(Router);

export default new Router({
  mode: "history",
  routes: [
    {
      path: '/',
      component: Index,
      name: 'index'
    },
    {
      path: '/detail/:id',
      component: Detail,
      name: 'detail'
    }
  ]
});