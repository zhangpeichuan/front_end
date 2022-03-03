<template>
	<view>
		<button>这是b组件的数据{{num}}</button>
	</view>
</template>

<script>
	export default {
		data(){
			return {
				num: 0
			};
		},
		created() {
			uni.$on('updateNum',(number)=>{
				this.num += number
			})
		}
	}
</script>

<style>
</style>
