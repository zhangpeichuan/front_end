<template>
	<view class="pics">
		<scroll-view class="left" scroll-y>
			<view 
			@click="leftClickHandler(index,item.id)"
			:class="active===index?'active':''"
			 v-for="(item,index) in categorys" :key="item.id">{{item.title}}</view>
		</scroll-view>
		<scroll-view class="right" scroll-y>
			<view class="item" v-for="item in secondData" :key="item.id">
				<image 
				@click="previewImg(item.img_url)"
				:src="item.img_url"></image>
				<text>{{item.title}}</text>
			</view>
			<view v-if="secondData.length === 0">暂无数据</view>
		</scroll-view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				categorys:[],
				active:0,
				secondData:[]
			};
		},
		methods:{
			async getPicsCate(){
				const res = await this.$myrequest({
					url:'/api/getimgcategory'
				})
				console.log(res)
				this.categorys = res.data.message
				this.leftClickHandler(0,this.categorys[0].id)
			},
			async leftClickHandler(index,id){
				this.active = index
				// 获取右侧数据
				const res = await this.$myrequest({
					url:'/api/getimages/'+id
				})
				console.log(res)
				this.secondData = res.data.message
			},
			previewImg(current){
				console.log('previewImg')
				const urls = this.secondData.map(item=>{
					return item.img_url
				})
				console.log(urls)
				uni.previewImage({
					current,
					urls
				})
			}
		},
		onLoad() {
			this.getPicsCate()
		}
	}
</script>

<style lang="scss">
page{
	height: 100%;
}
	.pics{
		height: 100%;
		display: flex;
		.left{
			width: 200rpx;
			height: 100%;
			border-right: 1px solid #eee;
			view{
				height: 60px;
				line-height: 60px;
				color: #333;
				text-align: center;
				border-top: 1px solid #eee;
			}
			.active{
				background: $shop-color;
				color: #FFFFFF;
			}
		}
		.right{
			height: 100%;
			width: 520rpx;
			margin: 10rpx auto;
			.item{
				image{
					width: 520rpx;
					height: 520rpx;
					border-radius: 5px;
				}
				text{
					font-size: 30rpx;
					line-height: 60rpx;
				}
			}
		}
	}
</style>
