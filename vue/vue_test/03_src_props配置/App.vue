<template>
<div>
	
	<Student name="李四" sex="男" :age="18"></Student>

	<hr>
</div>
</template>
<script>
	//引入组件
	import	Student	from	'./components/Student.vue'
	export	default	{
		name:'App',
		components:{
				Student
		},
		data() {
			return {
				msg:'欢迎学习Vue!'
			}
		},
		methods: {
			showDOM(){
				console.log(this.$refs.title)//真实DOM元素
				console.log(this.$refs.btn)//真实DOM元素
				console.log(this.$refs.sch)//School组件的实例对象（vc）

			}
		},
	}
</script>