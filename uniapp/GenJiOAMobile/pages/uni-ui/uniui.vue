<template>
	<uni-calendar 
	    :insert="true"
	    :lunar="true" 
	    :start-date="'2022-3-2'"
	    :end-date="'2023-5-20'"
	    @change="change"
	     />
</template>

<script>
	export default {
		data() {
			return {
			};
		},
		methods:{
			change(e){
				console.log(e)
			}
		}
	}
</script>

<style>
</style>
