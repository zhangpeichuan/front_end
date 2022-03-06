<template>
	<view class="goods_detail">
		<swiper indicator-dots="true" circular="true">
			<swiper-item v-for="(item,index) in swipers" :key="index">
				<image :src="item.src"></image>
			</swiper-item>
		</swiper>
		<view class="box1">
			<view class="price">
				<text>￥{{goodsDetail.sell_price}}</text>
				<text>￥{{goodsDetail.market_price}}</text>
			</view>
			<view class="goods_name">
				{{goodsDetail.title}}
			</view>
		</view>
		<view class="line"></view>
		<view class="box2">
			<view>货号：{{goodsDetail.goods_no}}</view>
			<view>库存：{{goodsDetail.stock_quantity}}</view>
		</view>
		<view class="line"></view>
		<view class="box3">
			<view class="title">详情介绍</view>
			<view class="content">
				<rich-text :nodes="goodsDesc.content"></rich-text>
			</view>
		</view>
		<view class="goods_nav">
			<uni-goods-nav :fill="true"  :options="options" :buttonGroup="buttonGroup"  @click="onClick" @buttonClick="buttonClick" />
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				id:0,
				swipers:[],
				goodsDetail:{
					add_time:"",
					goods_no:"",
					id:0,
					market_price:0,
					sell_price:0,
					stock_quantity:0,
					title:""
				},
				goodsDesc:{
					title:"",
					content:""
				},
					    options: [{
							icon: 'headphones',
							text: '客服'
						}, {
							icon: 'shop',
							text: '店铺',
							info: 2,
							infoBackgroundColor:'#007aff',
							infoColor:"red"
						}, {
							icon: 'cart',
							text: '购物车',
							info: 2
						},
						],
					    buttonGroup: [{
					      text: '加入购物车',
					      backgroundColor: '#ff0000',
					      color: '#fff'
					    },
					    {
					      text: '立即购买',
					      backgroundColor: '#ffa200',
					      color: '#fff'
					    }
					    ]
			}
		},
		onLoad(options) {
			console.log(options)
			this.id = options.id
			this.getSwipers()
			this.getDetailInfo()
			this.getDetailConent()
		},
		methods:{
			async getSwipers(){
				const res = await this.$myrequest({
					url:'/api/getthumimages/'+this.id
				})
				console.log(res)
				this.swipers = res.data.message
			},
			async getDetailInfo(){
				const res = await this.$myrequest({
					url:'/api/goods/getinfo/'+this.id
				})
				console.log(res)
				this.goodsDetail = res.data.message[0]
			},
			async getDetailConent(){
				const res = await this.$myrequest({
					url:'/api/goods/getdesc/'+this.id
				})
				console.log(res)
				this.goodsDesc = res.data.message[0]
			},
			 onClick (e) {
				 console.log(e)
				uni.showToast({
				    title: `点击${e.content.text}`,
				    icon: 'none'
				})
			},
			buttonClick (e) {
				console.log(e)
				this.options[2].info++
			}
		}
	}
</script>

<style lang="scss">
	.goods_detail{
		swiper{
			height: 700rpx;
			background-color: #555555;
			image{
				width: 100%;
				height: 100%;
			}
		}
		.box1{
			padding: 10px;
			.price{
				font-size: 35rpx;
				color: $shop-color;
				line-height: 80rpx;
				text:nth-child(2){
					color: #ccc;
					font-size: 28rpx;
					text-decoration: line-through;
				}
			}
			.goods_name{
				font-size: 32rpx;
				line-height: 60rpx;
			}
		}
		.line{
			width: 750rpx;
			height: 10rpx;
			background-color: #eee;
		}
		.box2{
			padding: 0 10px;
			font-size: 32rpx;
			line-height: 70rpx;
		}
		.box3{
			padding-bottom: 50px;
			.title{
				font-size: 32rpx;
				padding-left: 10px;
				border-bottom: 1px solid #eee;
				line-height: 70rpx;
			}
			.content{
				padding: 10px;
				font-size: 26rpx;
				color: #333;
				line-height: 50rpx;
			}
		}
		.goods_nav{
			position: fixed;
			width: 100%;
			bottom: 0;
		 }
	}
</style>
