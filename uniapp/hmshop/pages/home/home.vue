<template>
	<view class="home" >
		<!-- 轮播图 -->
	<swiper indicator-dots="true" circular="true" autoplay="true">
		<swiper-item v-for="item in swipers" :key="item.id"><image :src="item.img"></image></swiper-item>		
	</swiper>
	<!-- 导航按钮区域 -->
	<view class="nav">
		<view class="nav_item" v-for="(item,index) in navs" :key="index" @click="navItem_Click(item.path)">
			<view :class="item.icon">
			</view>
			<text>{{item.title}}</text>
		</view>
	</view>
	<!-- 推荐商品 -->
	<view class="recommend_goods">
		<view class="recommend_goods_title">推荐商品</view>
		<view class="goods_list">
			<view class="goods_item" v-for="item in goods" :key="item.id">
				<image :src="item.img_url"></image>
				<view class="price">
					<text>￥{{item.sell_price}}</text>
					<text>￥{{item.market_price}}</text>
				</view>
				<view class="goods_name">{{item.title}}</view>
			</view>
		</view>
	</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				swipers:[],
				goods:[],
				navs:[
					{
						icon:'iconfont icon-ziyuan',
						title:'黑马超市',
						path:'/pages/goods/goods'
					},
					{
						icon:'iconfont icon-guanyuwomen',
						title:'联系我们',
						path:'/pages/contact/contact'
					},
					{
						icon:'iconfont icon-tupian',
						title:'社区图片',
						path:'/pages/pics/pics'
					},
					{
						icon:'iconfont icon-shipin',
						title:'学习视频',
						path:'/pages/videos/videos'
					}
				]
			}
		},
		onLoad() {
			this.getSwipersApi()
			this.getRecommendGoods()
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
			},
			// 获取热门商品列表数据
			async getRecommendGoods(){
				console.log('getRecommendGoods')
				const res = await this.$myrequest({
					url:'/api/getgoods?pageindex=1'
				})
				console.log(res)
				this.goods=res.data.message
			},
			//导航点击的处理函数
			navItem_Click(url){
				console.log('navItem_Click')
				uni.navigateTo({
					url:url
				})
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
				background-color: $shop-color;
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
	.recommend_goods{
		background-color: #eeeeee;
		overflow:hidden;//悬浮
		margin-top: 10px;
		.recommend_goods_title{
			height: 50px;
			line-height: 50px;
			color: $shop-color;
			text-align: center;
			letter-spacing: 20px;
			background-color: #FFFFFF;
			margin: 7rpx 0;
		}
	}
	.goods_list{
		padding: 0 15rpx;
		display: flex;
		flex-wrap: wrap;
		justify-content: space-between;
		.goods_item{
			background: #ffffff;
			width: 355rpx;
			margin: 10rpx 0;
			padding: 15rpx;
			box-sizing: border-box;//盒子不会被撑大
			image{
				width: 80%;
				height: 150px;
				display: block;
				margin: 0 auto;
			}
			.price{
				color: $shop-color;
				font-size: 36rpx;
				margin: 20prx 0 10rpx 0;
				text:nth-child(2){
					color: #ccc;
					font-size: 28rpx;
					margin-left: 7rpx;
					text-decoration: line-through;
				}
			}
			.goods_name{
				font-size: 28rpx;
				line-height: 50rpx;
				padding-bottom: 15rpx;
				padding-top: 10rpx;
			}
		}
	}
</style>
