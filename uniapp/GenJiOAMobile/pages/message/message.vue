<template>
	<view>
		<view class="box2" hover-class="box-active2">
		<view hover-stop-propagation class="box" hover-class="box-active" hover-start-time="1000" hover-stay-time="200">我是一个大盒</view>
		</view>
	

	</view>

</template>

<script>
</script>

<style>
	.box{
		width: 100rpx;
		height: 100rpx;
		background-color: #007AFF;
	}
	.box2{
		width: 200rpx;
		height: 200rpx;
		background-color: #55ff5e;
	}
	.box-active{
		background-color: #fc502d;
	}
	.box2-active{
		background-color: #feb0ad;
	}
</style>
