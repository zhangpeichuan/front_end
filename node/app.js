const express = require('express')
const app = express()

const args = require('minimist')(process.argv.slice(2))
console.log(args)
const function2 = () => console.trace()
const function1 = () => function2()
function1()
const doSomething = ()=> console.log('测试')
const measureDoingSomething = ()=>{
	console.time('doSomething()')
	doSomething()
	console.timeEnd('doSomething()')
}
measureDoingSomething()
const ProgressBar = require('process')

const bar = ProgressBar(':bar',{total: 10})
const timer = setInterval(()=>{
	bar.tick()
	if(bar.complete){
		clearInterval(timer)
	}
},100)
app.get('/',(req,res) => {
	res.send('Hi')
})

app.listen(3000,()=>console.log('server ready'))
