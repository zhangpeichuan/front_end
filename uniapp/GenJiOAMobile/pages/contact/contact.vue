<template>
	<view>
		<test v-if="flag" v-bind:title="title" @myEven="getNum"></test>
		<text>这是子组件传递过来的数据  {{num}}</text>
		<button type="primary" @click="checkTest">切换组件</button>
		<test-a></test-a>
		<test-b></test-b>
		
	</view>
</template>

<script>
	import test from '../../compontent/test.vue'
	import testA from '../../compontent/a.vue'
	import testB from '../../compontent/b.vue'
	export default{
		data(){
			return {
				title:"关于我们",
				flag: true,
				num:0
			}
		},
		components:{
			test:test,//test
			'test-a':testA,
			'test-b':testB
		},
		methods:{
			checkTest(){
				this.flag = !this.flag
			},
			getNum(num){
				this.num = num
			}
		}
	}
</script>

<style>
</style>
