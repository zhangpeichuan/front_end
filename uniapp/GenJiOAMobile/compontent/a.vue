<template>
	<view>
		<button @click="addNum">这是A组建，修改b组件数据</button>
	</view>
</template>

<script>
	export default {
		data(){
			return {
				
			};
		},
		methods:{
			addNum(){
				console.log('addNum')
				uni.$emit('updateNum',10)
			}
		}
	}
</script>

<style>
</style>
