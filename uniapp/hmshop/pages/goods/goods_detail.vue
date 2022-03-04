<template>
	<view class="goods_detail">
		<swiper indicator-dots="true" circular="true">
			<swiper-item v-for="(item,index) in swipers" :key="index">
				<image :src="item.src"></image>
			</swiper-item>
		</swiper>
		<view class="goods_info">
			<view class="price">
				<text>￥6799</text>
				<text>￥8788</text>
			</view>
			<view class="goods_name">
				adfafadfadfadfadfadfadfadfadfadfadf
			</view>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				id:0,
				swipers:[]
			}
		},
		onLoad(options) {
			console.log(options)
			this.id = options.id
			this.getSwipers()
		},
		methods:{
			async getSwipers(){
				const res = await this.$myrequest({
					url:'/api/getthumimages/'+this.id
				})
				console.log(res)
				this.swipers = res.data.message
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
		.goods_info{
			padding: 10px;
			.price{
				font-size: 35rpx;
				color: $shop-color;
				text:nth-child(2){
					color: #ccc;
					font-size: 28rpx;
					text-decoration: line-through;
				}
			}
		}
	}
</style>
