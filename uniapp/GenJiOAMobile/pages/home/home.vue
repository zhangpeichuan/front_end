<template>
	<view>
		<view>数据绑定的学习</view>
		<view>{{msg}}</view>
		<view>{{'你好'+'世界'}}</view>
		<view>{{1+1}}</view>
		<view>{{flag?"我是真话":"我是假话"}}</view>
<!-- 		<image v-bind:src="imgUrl"></image>
		<image :src="imgUrl"></image> -->
		<view v-for="(item,index) in arr" :key="item.id">
			序号:{{item.id}},名字:{{item.name}},年龄{{item.age}}
		</view>
		<!-- <button type="primary" v-on:click="clickHandle(20,$event)">按钮</button> -->
	<button type="primary" @click="clickHandle(20,$event)">按钮</button>
	
	</view>
</template>

<script>
	export default {
		
		data(){
			return {
				msg:"Hello vue",
				flag:false,
				imgUrl:'https://i0.hdslb.com/bfs/sycp/creative_img/202012/50177429b290500375a47acb9264b2e9.jpg',
				arr:[
					{
						name:'宋小宝',
						age:20,
						id:1
					},
					{
						name:'刘能',
						age:30,
						id:2
					},
					{
						name:'赵四',
						age:30,
						id:3
					},
					{
						name:'小沈阳',
						age:40,
						id:4
					},
				]
				
			}
		},
		methods:{
			clickHandle(number,e){
				console.log("点击我了",number,e);
			}
		}
	}

</script>

<style>
</style>
