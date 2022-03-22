const { defineConfig } = require('@vue/cli-service')
//common 暴露 webpack
module.exports = defineConfig({
  transpileDependencies: true,
  lintOnSave:false,//关闭语法检查
  pages:{
    index:{
      entry:'src/main.js'
    }
  },
  lintOnSave: process.env.NODE_ENV !== 'production'
})
