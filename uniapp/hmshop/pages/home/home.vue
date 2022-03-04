<template>
	<view class="home" >
		<!-- 轮播图 -->
	<swiper indicator-dots="true" circular="true" autoplay="true">
		<swiper-item v-for="item in swipers" :key="item.id"><image :src="item.img"></image></swiper-item>		
	</swiper>
	<!-- 导航按钮区域 -->
	<view class="nav">
		<view class="nav_item">
			<view class="iconfont icon-ziyuan">
			</view>
			<text>黑马超市</text>
		</view>
		<view class="nav_item">
			<view class="iconfont icon-guanyuwomen">
			</view>
			<text>联系我们</text>
		</view>
		<view class="nav_item">
			<view class="iconfont icon-tupian">
			</view>
			<text>社区图片</text>
		</view>
		<view class="nav_item">
			<view class="iconfont icon-shipin">
			</view>
			<text>学习视频</text>
		</view>
	</view>
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

<style lang="scss">
	.home{
		swiper{
			width: 750rpx;
			height: 380rpx;
			image{
				height: 100%;
				width: 100%;
			}
		}
	}
	.nav{
		display: flex;
		.nav_item{
			width: 25%;
			text-align: center;
			view{
				width: 120rpx;
				height: 120rpx;
				background-color: #b50e03;
				border-radius: 60rpx;
				margin: 10px auto;
				line-height: 120rpx;
				color: #ffffff;
				font-size: 50rpx;
			}
			.icon-tupian{
				font-size: 45rpx;
			}
			text{
				font-size: 30rpx;
			}
		}
	}
</style>
