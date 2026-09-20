	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import siji from '@/views/siji/list'
	import xiehuo from '@/views/xiehuo/list'
	import dingdanpingjia from '@/views/dingdanpingjia/list'
	import yunshuzhong from '@/views/yunshuzhong/list'
	import huowuxinxi from '@/views/huowuxinxi/list'
	import huozhu from '@/views/huozhu/list'
	import zhuangche from '@/views/zhuangche/list'
	import dingdanwancheng from '@/views/dingdanwancheng/list'
	import huowudingdan from '@/views/huowudingdan/list'
	import huozhuRegister from '@/views/huozhu/register'
	import huozhuCenter from '@/views/huozhu/center'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/huozhuCenter',
			name: '货主个人中心',
			component: huozhuCenter
		}
		,{
			path: '/siji',
			name: '司机',
			component: siji
		}
		,{
			path: '/xiehuo',
			name: '卸货',
			component: xiehuo
		}
		,{
			path: '/dingdanpingjia',
			name: '订单评价',
			component: dingdanpingjia
		}
		,{
			path: '/yunshuzhong',
			name: '运输中',
			component: yunshuzhong
		}
		,{
			path: '/huowuxinxi',
			name: '货物信息',
			component: huowuxinxi
		}
		,{
			path: '/huozhu',
			name: '货主',
			component: huozhu
		}
		,{
			path: '/zhuangche',
			name: '装车',
			component: zhuangche
		}
		,{
			path: '/dingdanwancheng',
			name: '订单完成',
			component: dingdanwancheng
		}
		,{
			path: '/huowudingdan',
			name: '货物订单',
			component: huowudingdan
		}
		]
	},
	{
		path: '/huozhuRegister',
		name: '货主注册',
		component: huozhuRegister
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
