<template>
	<view>
	<view class="new_item" @click="itemClick(item.id)" v-for="item in list" :key="item.id">
		<image :src="item.img_url"></image>
		<view class="right">
			<view class="title">
				{{item.title}}
			</view>
			<view class="info">
				<text>发表时间:{{item.add_time | formateDate }}</text>
				<text>浏览次数:{{item.click}}</text>
			</view>
		</view>
	</view>
	</view>
</template>

<script>
	export default {
		props:['list'],
		filters:{//年月日过滤器
			formateDate (date){
				console.log(date)
				const nDate = new Date(date)
				const year = nDate.getFullYear()
				const month = nDate.getMonth().toString().padStart(2,0)
				const day = nDate.getDay().toString().padStart(2,0)
				return year+'-'+month+'-'+ day
			}
		},
		methods:{
			itemClick(id){
				this.$emit('itemClick',id)
			}
		}
	}
</script>

<style lang="scss">
.new_item{
			display: flex;
			padding: 10rpx 20rpx;
			border-bottom: 1px solid $shop-color;
			image{
				min-width: 200rpx;
				max-width: 200rpx;
				height: 150rpx;
				
			}
			.right{
				margin-left: 15rpx;
				display: flex;
				flex-direction: column;
				justify-content: space-between;
				.titile{
					font-size: 30rpx;
				}
				.info{
					font-size: 24rpx;
					text:nth-child(2){
						margin-left: 30rpx;
					}
				}
			}
		}
</style>