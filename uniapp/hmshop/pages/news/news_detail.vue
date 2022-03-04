<template>
	<view class="news_detail">
		<text class="title">{{newDetail.title}}</text>
		<view class="info">
			<text>发表时间：{{ newDetail.add_time | formateDate }}  </text>
			<text>浏览：{{newDetail.click}}</text>			
		</view>
		<view class="content">
			<rich-text :nodes="newDetail.content"></rich-text>
			
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				id:0,
				newDetail:{
					add_time:'',
					click:0,
					id:13,
					title:'',
					content:''
				}
			}
		},
		methods:{
			async getNewsDetail(){
				const res = await this.$myrequest({
					url:'/api/getnew/'+this.id
				})
				console.log(res.data.message)
				this.newDetail = res.data.message[0]
			}
		},
		onLoad(options){
			console.log(options)
			this.id = options.id
			this.getNewsDetail()
		}
	}
</script>

<style lang="scss">
	.news_detail{
		font-size: 30rpx;
		padding: 0 20rpx;
		.title{
			text-align: center;
			width: 710rpx;
			display: block;
			margin: 20rpx 0;
		}
		.info{
			display: flex;
			justify-content: space-between;
		}
	}
</style>
