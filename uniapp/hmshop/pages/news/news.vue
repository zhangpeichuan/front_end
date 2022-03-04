<template>
	<view class="news">
	<news-item @itemClick="goDetail"
	:list="newsList" ></news-item>
	</view>
</template>

<script>
	import newsItem from '../../compontent/news-item.vue'
	export default {
		data() {
			return {
				newsList:[]
			}
		},
		components:{"news-item":newsItem},
		onLoad() {
			this.getNews()
		},
		methods:{
			async getNews(){
				const res = await this.$myrequest({
					url:'/api/getnewslist'
				})
				console.log(res)
				this.newsList = res.data.message
			},
			goDetail(id) {
				console.log('goDetail '+id)
				uni.navigateTo({
					url:'/pages/news/news_detail?id='+id
				})
			}
		}
	}
</script>

<style lang="scss">
	.news{
		
	}
</style>
