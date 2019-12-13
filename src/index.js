import './index.less'
import img from './assets/1.jpg'

const div = document.getElementById('app')
div.innerHTML = `
  <img src="${img}">
`
const button = document.createElement('button')
button.innerHTML = '懒加载12112'
button.onclick = () => {
  const promise = import('./lazy')
  promise.then((module) => {
    const fn = module.default
    fn()
  }, () => {
    console.log('模块加载失败')
  })
}

div.appendChild(button)