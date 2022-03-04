<template>
	<view class="goods_list">
		<goods-list :goods="goods"></goods-list>
		<view class="isOver" v-if="flag">------我是有底线的------</view>
	</view>

</template>

<script>
	import goodsList from "../../compontent/goods-list.vue"
	export default {
		data() {
			return {
				pageindex:1,
				goods:[],
				flag:false
			}
		},
		components: {"goods-list":goodsList},
		methods: {
			//获取商品列表数据
			async getGoodsList(callback){
				console.log('getGoodsList ')				
				const res = await this.$myrequest({
					url:'/api/getgoods?pageindex='+this.pageindex
				})
				console.log(res)
				if(this.pageindex == 1){
					this.goods = res.data.message
				}else{
					this.goods = [...this.goods,...res.data.message]
				}
				callback && callback()
			},
			
		},
		onLoad() {
			this.getGoodsList()
		},
		onReachBottom() {
			console.log('onReachBottom')
			if(this.goods.length < this.pageindex*10){
				this.flag = true
				return
			}
			this.pageindex++
			this.getGoodsList()
		},
		onPullDownRefresh() {
			console.log('onPullDownRefresh')
			this.pageindex = 1;
			this.flag = false
			this.goods = []
			setTimeout(()=>{
				this.getGoodsList(()=>{
					uni.stopPullDownRefresh()
				})
			},1000)
			
		}
	}
</script>

<style lang="scss">
	.goods_list{
		background-color: #eee;
	}
	.isOver{
		width: 100%;
		height: 50px;
		line-height: 50px;
		text-align: center;
		font-size: 28;
	}
</style>
