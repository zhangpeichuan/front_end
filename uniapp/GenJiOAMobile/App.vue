<script>
	export default {
		onLaunch: function() {
			console.log('App Launch')
		},
		onShow: function() {
			console.log('App Show')
		},
		onHide: function() {
			console.log('App Hide')
		},
		onError: function(err){
			console.log('App onError',err)
		},
		globalData:{
			text:'text'
		}
	}
</script>

<style>
	@import url("./static/fonts/iconfont.css");
	.box1{
		background-color: pink;
	}
</style>
