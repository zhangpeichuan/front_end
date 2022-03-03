<template>
	<view>
	首页
	</view>
</template>

<script>
	export default {
		data() {
			return {
				swipers:[]
			}
		},
		onLoad() {
			this.getSwipersApi()
		},
		methods: {
		//获取轮播图数据
			async getSwipersApi(){
				console.log('获取轮播图数据')
				// const res = await uni.request({
				// 	url:"http://localhost:8082/api/getlunbo",
					
				// })
				// console.log(res)//promise
				// uni.request({
				// 	url:"http://localhost:8082/api/getlunbo",
				// 	success:(res) =>{
				// 		console.log(res)
				// 		if (res.data.status != 0){
				// 			return uni.showToast({
				// 				title:'数据异常'
				// 			})
				// 		}
				// 		this.swipers = res.data.message
				// 	}
				// })
				const res = await this.$myrequest({
					url:'/api/getlunbo'
				})
				this.swipers = res.data.message
				console.log(res)
			}
		}
	}
</script>

<style>
	
</style>
