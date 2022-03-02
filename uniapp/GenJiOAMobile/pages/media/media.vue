<template>
	<view>
		<button type="primary" @click="chooseImage">上传图片</button>
		<image v-for="item in imgArr" :src="item" @click="previewImage(item)"></image>
		<!-- #ifdef H5 -->
		<view>我希望只在H5页面中看见</view>
		<!-- #endif -->
		<!-- #ifdef MP-WEIXIN -->
		<view>我希望只在微信小城页面中看见</view>
		<!-- #endif -->
	</view>
</template>

<script>
	export default {
		data(){
			return {
				media:"媒体",
				imgArr:[]
			}
		},
		methods:{
			chooseImage(){
				console.log('chooseImage')
				uni.chooseImage({
					success:res=>{
						console.log(res)
						this.imgArr = res.tempFilePaths
					}
				})
			},
			previewImage(current){
				uni.previewImage({
					current:current,
					urls:this.imgArr,
					loop:true,
					indicator:'default',
				})
			}
		},
		onLoad() {
			// #ifdef H5
			console.log('我希望h5中打印')
			// #endif
			// #ifdef MP-WEIXIN
			console.log('我希望微信小程序中打印')
			// #endif
		}
	}
</script>

<style>
	/* #ifdef H5 */
	view{
		color: hotpink;
	}
	/* #endif */
	/* #ifdef MP-WEIXIN */
	view{
		color: #008000;
	}
	/* #endif */


</style>
