/*
  该文件是整个项目的入口文件
*/
//引入Vue
import Vue from 'vue'
//引入完整版vue
// import Vue from 'vue/dist/vue'
//引入App组件，他是所有组件的父组件
import App from './App.vue'
//关闭vue的生产提示
Vue.config.productionTip = false
//创建Vue实例对象----vm
/*
关于不同版本的Vue

1. vue.js与vue.runtime.xxx.js的区别：
    1. vue.js是完整版的Vue，包含：核心功能 + 模板解析器。
    2. vue.runtime.xxx.js是运行版的Vue，只包含：核心功能；没有模板解析器。
2. 因为vue.runtime.xxx.js没有模板解析器，所以不能使用template这个配置项，
需要使用render函数接收到的createElement函数去指定具体内容。
*/
let person = {name:'zhangsan'}
new Vue({
  el:'#app',
  //下面这行代码一会儿解释,完成这个功能，讲App组件放入容器中
  // render: h => h(App),
  //普通函数改为箭头函数
  // render:(createElement)=>{
  //箭头函数只有一个参数，可以省略小括号
  // render:(createElement)=>{
  // render:createElement=>{
  // render:createElement=> createElement('h1','你好啊')
  render:createElement=> createElement(App)

  // template:`<App></App>`,
  // components:{App}
})
// .$mount('#app')
