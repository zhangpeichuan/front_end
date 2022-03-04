<template>
	<view class="contact">
		<image class="img" src="http://destiny001.gitee.io/image/ban2.jpg"></image>
		<view class="info">
			<view @click="makePhoneCall">联系电话：400-618-9090 （点击拨打）</view>
			<view>校区地址: 闵行区田林路1036号科技绿洲三期16号楼4层</view>
		</view>
		<!-- 动态绑定 -->
		<map class="map" :longitude="longitude" :latitude="latitude" :markers="markers" :scale="scale"></map>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				longitude:116.378972,
				latitude:39.908072,
				scale: 11,
				markers:[
					{
						longitude:116.378972,
						latitude:39.908072,
						iconPath:'../../static/icons/hmlogo.png',
						width:30,
						height:30,
					}
				]
			}
		},
		methods:{
			makePhoneCall(){
				uni.makePhoneCall({
					phoneNumber:'400-618-9090'
				})
			}
		}
	}
</script>

<style lang="scss">
	.contact{
		
		.img{
			width: 750rpx;
			height: 320rpx;
		}
		.info{
			padding: 10rpx 20rpx;
			font-size: 30rpx;
			view{
				line-height: 60rpx;
				border-bottom: 1px solid #eee;
			}

		}
		.map{
			width: 750rpx;
			height: 750rpx;
		}
	}
</style>
