<template>
	<div	class="demo">
		<h2 @click="showName">学校名称：{{name}}</h2>
		<h2>学校地址：{{address}}</h2>
	</div>
</template>

<script>
// import {mixin1,mixin2} from '../mixin'
export	default{
		name:'School',
		data(){
			console.log(this)
			return{
				name:'尚硅谷',
				address:'北京',
				x: 333
			}
		},
		// mixins:[mixin1,mixin2]
	}
</script>