import Vue from "vue";
import App from "./App.vue";
import router from "./router";
import store from "./store";
import axios from "axios";
import ElementUI from "element-ui";
import "element-ui/lib/theme-chalk/index.css";

Vue.prototype.axios = axios;
Vue.config.productionTip = false;

import MyHeader from "./components/MyHeader";
Vue.component("myheader", MyHeader);
import MyFooter from "./components/MyFooter";
Vue.component("myfooter", MyFooter);
import Carousel from "./components/Carousel";
Vue.component("carousel", Carousel);

Vue.use(ElementUI);

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount("#app");
