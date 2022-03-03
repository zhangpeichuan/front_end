<template>
	<view id="myView">
		这是test组件{{num}}
		<view>这是父组件传递过来的数据  {{title}}</view>
		<button @click="sendNum">给父组件传值</button>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				num:3,
				intId:null
			};
		},
		props:['title'],
		methods:{
			sendNum(){
				console.log('给父组件传值',this.num)
				this.$emit('myEven',this.num)
			}
		},
		beforeCreate() {
			console.log('beforeCreate')
			console.log(this.num)
		},
		created() {
			console.log('created')
			console.log(this.num)
			this.intId = setInterval(()=>{
				console.log("执行定时器")
			},1000)
		},
		beforeMount() {
			// #ifdef H5
			console.log('beforeMount',document.getElementById('myView'))
			// #endif
			// #ifndef H5
			console.log('beforeMount')
			// #endif
		},
		mounted() {
			// #ifdef H5
			console.log('mounted',document.getElementById('myView'))
			// #endif
			// #ifndef H5
			console.log('mounted')
			// #endif
		},
		beforeUpdate() {
			console.log('beforeUpdate')
		},
		updated() {
			console.log('updated')
		},
		beforeDestroy() {
			console.log('beforeDestroy')
		},
		destroyed() {
			console.log('destroyed')
			clearInterval(this.intId)
		}
		
	}
</script>

<style>
</style>
