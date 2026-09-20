const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
			menuList:[
				{
					name: '货物信息管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'货物信息',
							url:'/index/huowuxinxiList'
						},
					]
				},
			]
        }
    },
    getProjectName(){
        return {
            projectName: "基于司机信用评价的货运管理系统"
        } 
    }
}
export default config
