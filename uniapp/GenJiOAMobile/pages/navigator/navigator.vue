<template>
	<view>
		<view>导航跳转学习</view>
		<navigator url="../detail/detail">跳转至详情页</navigator>
		<navigator url="../message/message">跳转至信息页失败</navigator>
		<navigator url="../message/message" open-type="switchTab">跳转至信息跳转tabbar页</navigator>
		<navigator url="../detail/detail" open-type="redirect">跳转至详情页</navigator>
		<button @click="jumpDetail">跳转至详情页</button>
		<button @click="jumpMessage">跳转至信息页</button>
		<button type="primary" @click="goDetail">跳转至详情页并关闭当前页面</button>
	</view>
</template>

<script>
	export default {
		onUnload() {
			console.log('导航页面卸载了')
		},
		methods:{
			jumpDetail(){
				uni.navigateTo({
					url:'../detail/detail'
				})
			},
			jumpMessage(){
				uni.switchTab({
					url:'../message/message'
				})
			},
			goDetail(){
				uni.redirectTo({
					url:'../detail/detail'
				})
			}
		}
	}
</script>

<style>
</style>
