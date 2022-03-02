<template>
	<view class="content">
		<image src="/static/logo.png"></image>
		<image src="/static/logo.png" mode="center"></image>
		
		<view class="text-area">
			<text class="title">{{title}}</text>
		</view>
		<button type="primary" >按钮</button>
		<button size="mini" plain type="warn">按钮</button>
		<button disabled loading>按钮</button>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				title: 'Hello'
			}
		},
		onLoad(options) {
			console.log('页面 onLoad',options)
		},
		onShow(){
			console.log('页面 onShow')
		},
		onReady() {
			console.log('页面 onReady')
		},
		onHide() {
			console.log('页面 onHide')
		},
		onUnload() {
			console.log('页面 onUnload')
		},
		onPullDownRefresh() {
			console.log('页面 onPullDownRefresh')
		},
		onReachBottom() {
			console.log('页面 onReachBottom')
		},
		methods: {
			goto(url){
				url.navigateTo({
					url:url
				})
			}
		}
	}
</script>

<style>
	.content {
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
	}

	.logo {
		height: 200rpx;
		width: 200rpx;
		margin-top: 200rpx;
		margin-left: auto;
		margin-right: auto;
		margin-bottom: 50rpx;
	}

	.text-area {
		display: flex;
		justify-content: center;
	}

	.title {
		font-size: 36rpx;
		color: #8f8f94;
	}
</style>
