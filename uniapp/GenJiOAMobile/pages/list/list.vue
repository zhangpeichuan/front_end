<template>
	<view>
		<button @click="get">发送get请求</button>
		<button @click="setStorage">保存缓存</button>
		<button @click="getStorage">获取数据</button>
		<button @click="deleteStorage">移除数据</button>
		<view>这是列表页</view>
		<view class="box-item" v-for="item in list">
			{{item}}
		</view>
		<button @click="pullDownRefresh">下拉刷新</button>
	</view>
</template>

<script>
	export default {
		data(){
			return {
				list:[
					'前端',
					'JAVA',
					'UI',
					'测试',
					'大数据',
					'Android',
					'iOS'
				]
			}
		},
		onPullDownRefresh() {
			console.log('onPullDownRefresh ');
			setTimeout(()=>{
				this.list = [
					'前端',
					'JAVA',
					'UI',
					'测试',
					'大数据',
					'Android',
					'iOS',
					'Vue',
					'Flutter'
				]
				uni.stopPullDownRefresh();
			},2000)
		},
		onReachBottom() {
			console.log('onReachBottom ');
			this.list = [...this.list,...[
				'前端',
					'JAVA',
					'UI',
					'测试',
					'大数据',
					'Android',
					'iOS',
					'Vue',
					'Flutter']]
		},
		methods:{
			pullDownRefresh(){
				uni.startPullDownRefresh();
			},
			get(){
				uni.request({
					url:"http://localhost:8082/api/getlunbo",
					timeout:5000,
					success(res) {
						console.log(res.data["message"])
					}
				})
			},
			setStorage(){
				// uni.setStorage({
				// 	key:'id',
				// 	data:100,
				// 	success() {
				// 		console.log('setStorage成功');
				// 	}
				// })
				uni.setStorageSync('id',80);
			},
			getStorage(){
				// uni.getStorage({
				// 	key:'id',
				// 	success(res) {
				// 		console.log('getStorage成功 ',res.data);
				// 	}
				// })
				const res = uni.getStorageSync('id')
				console.log(res)
			},
			deleteStorage(){
				// uni.removeStorage({
				// 	key:'id',
				// 	success() {
				// 		console.log('removeStorage成功');
				// 	},
				// 	fail() {
				// 		console.log('removeStoragefail');
				// 	}
				// })
				uni.removeStorageSync('id')
			}
		}
	}
</script>

<style>
	.box-item{
		height: 250rpx;
		line-height: 250rpx;
	}
</style>
