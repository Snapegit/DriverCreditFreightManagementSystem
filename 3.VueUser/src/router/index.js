import { createRouter, createWebHashHistory } from 'vue-router'
import index from '../views'
import home from '../views/pages/home.vue'
import login from '../views/pages/login.vue'
import sijiList from '@/views/pages/siji/list'
import sijiDetail from '@/views/pages/siji/formModel'
import sijiAdd from '@/views/pages/siji/formAdd'
import sijiRegister from '@/views/pages/siji/register'
import sijiCenter from '@/views/pages/siji/center'
import huozhuList from '@/views/pages/huozhu/list'
import huozhuDetail from '@/views/pages/huozhu/formModel'
import huozhuAdd from '@/views/pages/huozhu/formAdd'
import huowuxinxiList from '@/views/pages/huowuxinxi/list'
import huowuxinxiDetail from '@/views/pages/huowuxinxi/formModel'
import huowuxinxiAdd from '@/views/pages/huowuxinxi/formAdd'
import huowudingdanList from '@/views/pages/huowudingdan/list'
import huowudingdanDetail from '@/views/pages/huowudingdan/formModel'
import huowudingdanAdd from '@/views/pages/huowudingdan/formAdd'
import dingdanwanchengList from '@/views/pages/dingdanwancheng/list'
import dingdanwanchengDetail from '@/views/pages/dingdanwancheng/formModel'
import dingdanwanchengAdd from '@/views/pages/dingdanwancheng/formAdd'
import zhuangcheList from '@/views/pages/zhuangche/list'
import zhuangcheDetail from '@/views/pages/zhuangche/formModel'
import zhuangcheAdd from '@/views/pages/zhuangche/formAdd'
import yunshuzhongList from '@/views/pages/yunshuzhong/list'
import yunshuzhongDetail from '@/views/pages/yunshuzhong/formModel'
import yunshuzhongAdd from '@/views/pages/yunshuzhong/formAdd'
import xiehuoList from '@/views/pages/xiehuo/list'
import xiehuoDetail from '@/views/pages/xiehuo/formModel'
import xiehuoAdd from '@/views/pages/xiehuo/formAdd'
import dingdanpingjiaList from '@/views/pages/dingdanpingjia/list'
import dingdanpingjiaDetail from '@/views/pages/dingdanpingjia/formModel'
import dingdanpingjiaAdd from '@/views/pages/dingdanpingjia/formAdd'

const routes = [{
		path: '/',
		redirect: '/index/home'
	},
	{
		path: '/index',
		component: index,
		children: [{
			path: 'home',
			component: home
		}
		, {
			path: 'sijiList',
			component: sijiList
		}, {
			path: 'sijiDetail',
			component: sijiDetail
		}, {
			path: 'sijiAdd',
			component: sijiAdd
		}
		, {
			path: 'sijiCenter',
			component: sijiCenter
		}
		, {
			path: 'huozhuList',
			component: huozhuList
		}, {
			path: 'huozhuDetail',
			component: huozhuDetail
		}, {
			path: 'huozhuAdd',
			component: huozhuAdd
		}
		, {
			path: 'huowuxinxiList',
			component: huowuxinxiList
		}, {
			path: 'huowuxinxiDetail',
			component: huowuxinxiDetail
		}, {
			path: 'huowuxinxiAdd',
			component: huowuxinxiAdd
		}
		, {
			path: 'huowudingdanList',
			component: huowudingdanList
		}, {
			path: 'huowudingdanDetail',
			component: huowudingdanDetail
		}, {
			path: 'huowudingdanAdd',
			component: huowudingdanAdd
		}
		, {
			path: 'dingdanwanchengList',
			component: dingdanwanchengList
		}, {
			path: 'dingdanwanchengDetail',
			component: dingdanwanchengDetail
		}, {
			path: 'dingdanwanchengAdd',
			component: dingdanwanchengAdd
		}
		, {
			path: 'zhuangcheList',
			component: zhuangcheList
		}, {
			path: 'zhuangcheDetail',
			component: zhuangcheDetail
		}, {
			path: 'zhuangcheAdd',
			component: zhuangcheAdd
		}
		, {
			path: 'yunshuzhongList',
			component: yunshuzhongList
		}, {
			path: 'yunshuzhongDetail',
			component: yunshuzhongDetail
		}, {
			path: 'yunshuzhongAdd',
			component: yunshuzhongAdd
		}
		, {
			path: 'xiehuoList',
			component: xiehuoList
		}, {
			path: 'xiehuoDetail',
			component: xiehuoDetail
		}, {
			path: 'xiehuoAdd',
			component: xiehuoAdd
		}
		, {
			path: 'dingdanpingjiaList',
			component: dingdanpingjiaList
		}, {
			path: 'dingdanpingjiaDetail',
			component: dingdanpingjiaDetail
		}, {
			path: 'dingdanpingjiaAdd',
			component: dingdanpingjiaAdd
		}
		]
	},
	{
		path: '/login',
		component: login
	}
	,{
		path: '/sijiRegister',
		component: sijiRegister
	}
]

const router = createRouter({
  history: createWebHashHistory(process.env.BASE_URL),
  routes
})

export default router
