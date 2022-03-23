<template>
	<div	class="demo">
		<h2>{{msg}}</h2>
		<h2>学生名称：{{name}}</h2>
		<h2>学生性别：{{sex}}</h2>
		<h2>学生年龄：{{myAge}}</h2>
		<button @click="updateAge">尝试修改收到的年龄</button>
	</div>
</template>

<script>
export	default{
		name:'Student',
		data(){
			console.log(this)
			return{
				msg:'我是一个学生',
				myAge:this.age
			}
		},
		methods: {
			updateAge(){
				this.myAge +=1
			}
		},
		props:['name','sex','age'] //简单接收

		//接收的同事对数据进行类型限制
		// props:{
		// 	name:String,
		// 	age:Number,
		// 	sex:String
		// }
		//接收的同时对数据进行类型限制，默认值的设置，必要性的限制
		// props:{
		// 	name:{
		// 		type:String,//name的类型
		// 		required:true//name是必须
		// 	},
		// 	age:{
		// 		type:Number,
		// 		default:99//默认值
		// 	},
		// 	sex:{
		// 		type:String,
		// 		required:true
		// 	},	
		// }
	}
</script>