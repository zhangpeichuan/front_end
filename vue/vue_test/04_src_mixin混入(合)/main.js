//引入Vue
import Vue from 'vue'
//引入App
import App from './App.vue'
import { mixin1, mixin2 } from './mixin'
//关闭vue的生产提示
Vue.config.productionTip = false
Vue.mixin(mixin1)
Vue.mixin(mixin2)
new Vue({
	el:'#app',
	render: h => h(App)
})
