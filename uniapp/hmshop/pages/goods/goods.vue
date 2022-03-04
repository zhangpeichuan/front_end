<template>
	<view class="goods_list">
		<goods-list :goods="goods"></goods-list>
	</view>

</template>

<script>
	import goodsList from "../../compontent/goods-list.vue"
	export default {
		data() {
			return {
				pageindex:1,
				goods:[]
			}
		},
		components: {"goods-list":goodsList},
		methods: {
			//获取商品列表数据
			async getGoodsList(){
				console.log('getGoodsList')
				const res = await this.$myrequest({
					url:'/api/getgoods?pageinde='+this.pageindex
				})
				console.log(res)
				this.goods=res.data.message
			},
			
		},
		onLoad() {
			this.getGoodsList()
		},
	}
</script>

<style lang="scss">
	.goods_list{
		background-color: #eee;
	}
</style>
