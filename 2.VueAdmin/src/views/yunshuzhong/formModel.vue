<template>
	<div>
		<el-dialog v-model="formVisible" :title="formTitle" width="80%" destroy-on-close :fullscreen='false'>
			<el-form class="formModel_form" ref="formRef" :model="form" label-width="$template2.back.add.form.base.labelWidth" :rules="rules">
				<el-row>
					<el-col :span="12">
						<el-form-item label="货物编号" prop="huowubianhao">
							<el-input class="list_inp" v-model="form.huowubianhao" placeholder="货物编号"
								 type="text" 								:readonly="!isAdd||disabledForm.huowubianhao?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="货物名称" prop="huowumingcheng">
							<el-input class="list_inp" v-model="form.huowumingcheng" placeholder="货物名称"
								 type="text" 								:readonly="!isAdd||disabledForm.huowumingcheng?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="规格" prop="guige">
							<el-input class="list_inp" v-model="form.guige" placeholder="规格"
								 type="text" 								:readonly="!isAdd||disabledForm.guige?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="货物数量" prop="huowushuliang">
							<el-input class="list_inp" v-model="form.huowushuliang" placeholder="货物数量"
								 type="text" 								:readonly="!isAdd||disabledForm.huowushuliang?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item prop="tupian"
									  label="图片"
						>
							<uploads
								:disabled="!isAdd||disabledForm.tupian?true:false"
								action="file/upload"

								tip="请上传图片"
								:limit="3"
								style="width: 100%;text-align: left;"
								:fileUrls="form.tupian?form.tupian:''" 
								@change="tupianUploadSuccess">
							</uploads>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="货主账号" prop="huozhuzhanghao">
							<el-input class="list_inp" v-model="form.huozhuzhanghao" placeholder="货主账号"
								 type="text" 								:readonly="!isAdd||disabledForm.huozhuzhanghao?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="货主手机" prop="huozhushouji">
							<el-input class="list_inp" v-model="form.huozhushouji" placeholder="货主手机"
								 type="text" 								:readonly="!isAdd||disabledForm.huozhushouji?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="货主姓名" prop="huozhuxingming">
							<el-input class="list_inp" v-model="form.huozhuxingming" placeholder="货主姓名"
								 type="text" 								:readonly="!isAdd||disabledForm.huozhuxingming?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="司机账号" prop="sijizhanghao">
							<el-input class="list_inp" v-model="form.sijizhanghao" placeholder="司机账号"
								 type="text" 								:readonly="!isAdd||disabledForm.sijizhanghao?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="司机手机" prop="sijishouji">
							<el-input class="list_inp" v-model="form.sijishouji" placeholder="司机手机"
								 type="text" 								:readonly="!isAdd||disabledForm.sijishouji?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="司机姓名" prop="sijixingming">
							<el-input class="list_inp" v-model="form.sijixingming" placeholder="司机姓名"
								 type="text" 								:readonly="!isAdd||disabledForm.sijixingming?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="车牌号" prop="chepaihao">
							<el-input class="list_inp" v-model="form.chepaihao" placeholder="车牌号"
								 type="text" 								:readonly="!isAdd||disabledForm.chepaihao?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="发货地址" prop="fahuodizhi">
							<el-input class="list_inp" v-model="form.fahuodizhi" placeholder="发货地址"
								 type="text" 								:readonly="!isAdd||disabledForm.fahuodizhi?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="送达地址" prop="songdadizhi">
							<el-input class="list_inp" v-model="form.songdadizhi" placeholder="送达地址"
								 type="text" 								:readonly="!isAdd||disabledForm.songdadizhi?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="预计送达时间" prop="yujisongdashijian">
							<el-date-picker
								class="list_date"
								v-model="form.yujisongdashijian"
								format="YYYY-MM-DD HH:mm:ss"
								value-format="YYYY-MM-DD HH:mm:ss"
								type="datetime"
								:readonly="!isAdd||disabledForm.yujisongdashijian?true:false"
								placeholder="请选择预计送达时间" />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="接单日期" prop="jiedanriqi">
							<el-date-picker
								class="list_date"
								v-model="form.jiedanriqi"
								format="YYYY-MM-DD HH:mm:ss"
								value-format="YYYY-MM-DD HH:mm:ss"
								type="datetime"
								:readonly="!isAdd||disabledForm.jiedanriqi?true:false"
								placeholder="请选择接单日期" />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="装车时间" prop="zhuangcheshijian">
							<el-date-picker
								class="list_date"
								v-model="form.zhuangcheshijian"
								format="YYYY-MM-DD HH:mm:ss"
								value-format="YYYY-MM-DD HH:mm:ss"
								type="datetime"
								:readonly="!isAdd||disabledForm.zhuangcheshijian?true:false"
								placeholder="请选择装车时间" />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="开始运输时间" prop="kaishiyunshushijian">
							<el-date-picker
								class="list_date"
								v-model="form.kaishiyunshushijian"
								format="YYYY-MM-DD HH:mm:ss"
								value-format="YYYY-MM-DD HH:mm:ss"
								type="datetime"
								:readonly="!isAdd||disabledForm.kaishiyunshushijian?true:false"
								placeholder="请选择开始运输时间" />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="订单状态" prop="dingdanzhuangtai">
							<el-select
								class="list_sel"
								:disabled="!isAdd||disabledForm.dingdanzhuangtai?true:false"
								v-model="form.dingdanzhuangtai" 
								placeholder="请选择订单状态"
								>
								<el-option v-for="(item,index) in dingdanzhuangtaiLists" :label="item"
									:value="item"
									>
								</el-option>
							</el-select>
						</el-form-item>
					</el-col>
				</el-row>
			</el-form>
			<template #footer v-if="isAdd||type=='logistics'||type=='reply'">
				<span class="formModel_btn_box">
					<el-button class="formModel_cancel" @click="closeClick">取消</el-button>
					<el-button class="formModel_confirm" type="primary" @click="save"
						>
						提交
					</el-button>
				</span>
			</template>
		</el-dialog>
	</div>
</template>
<script setup>
	import {
		reactive,
		ref,
		getCurrentInstance,
		nextTick,
		computed,
		defineEmits
	} from 'vue'
	const context = getCurrentInstance()?.appContext.config.globalProperties;	
	const emit = defineEmits(['formModelChange'])
	//基础信息
	const tableName = 'yunshuzhong'
	const formName = '运输中'
	//基础信息
	//form表单
	const form = ref({})
	const disabledForm = ref({
		huowubianhao : false,
		huowumingcheng : false,
		guige : false,
		huowushuliang : false,
		tupian : false,
		huozhuzhanghao : false,
		huozhushouji : false,
		huozhuxingming : false,
		sijizhanghao : false,
		sijishouji : false,
		sijixingming : false,
		chepaihao : false,
		fahuodizhi : false,
		songdadizhi : false,
		yujisongdashijian : false,
		jiedanriqi : false,
		zhuangcheshijian : false,
		kaishiyunshushijian : false,
		dingdanzhuangtai : false,
	})
	const formVisible = ref(false)
	const isAdd = ref(false)
	const formTitle = ref('')
	//表单验证
	//匹配整数
	const validateIntNumber = (rule, value, callback) => {
		if (!value) {
			callback();
		} else if (!context?.$toolUtil.isIntNumer(value)) {
			callback(new Error("请输入整数"));
		} else {
			callback();
		}
	}
	//匹配数字
	const validateNumber = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isNumber(value)) {
			callback(new Error("请输入数字"));
		} else {
			callback();
		}
	}
	//匹配手机号码
	const validateMobile = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isMobile(value)) {
			callback(new Error("请输入正确的手机号码"));
		} else {
			callback();
		}
	}
	//匹配电话号码
	const validatePhone = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isPhone(value)) {
			callback(new Error("请输入正确的电话号码"));
		} else {
			callback();
		}
	}
	//匹配邮箱
	const validateEmail = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isEmail(value)) {
			callback(new Error("请输入正确的邮箱地址"));
		} else {
			callback();
		}
	}
	//匹配身份证
	const validateIdCard = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.checkIdCard(value)) {
			callback(new Error("请输入正确的身份证号码"));
		} else {
			callback();
		}
	}
	//匹配网站地址
	const validateUrl = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isURL(value)) {
			callback(new Error("请输入正确的URL地址"));
		} else {
			callback();
		}
	}
	const rules = ref({
		huowubianhao: [
		],
		huowumingcheng: [
		],
		guige: [
		],
		huowushuliang: [
		],
		tupian: [
		],
		huozhuzhanghao: [
		],
		huozhushouji: [
		],
		huozhuxingming: [
		],
		sijizhanghao: [
		],
		sijishouji: [
		],
		sijixingming: [
		],
		chepaihao: [
		],
		fahuodizhi: [
		],
		songdadizhi: [
		],
		yujisongdashijian: [
		],
		jiedanriqi: [
		],
		zhuangcheshijian: [
		],
		kaishiyunshushijian: [
		],
		dingdanzhuangtai: [
		],
	})
	//表单验证
	
	const formRef = ref(null)
	const id = ref(0)
	const type = ref('')
	//图片上传回调
	const tupianUploadSuccess=(e)=>{
		form.value.tupian = e
	}
	//订单状态列表
	const dingdanzhuangtaiLists = ref([])
	//methods

	//获取唯一标识
	const getUUID =()=> {
      return new Date().getTime();
    }
	//重置
	const resetForm = () => {
		form.value = {
			huowubianhao: '',
			huowumingcheng: '',
			guige: '',
			huowushuliang: '',
			tupian: '',
			huozhuzhanghao: '',
			huozhushouji: '',
			huozhuxingming: '',
			sijizhanghao: '',
			sijishouji: '',
			sijixingming: '',
			chepaihao: '',
			fahuodizhi: '',
			songdadizhi: '',
			yujisongdashijian: '',
			jiedanriqi: '',
			zhuangcheshijian: '',
			kaishiyunshushijian: '',
			dingdanzhuangtai: '待卸货',
		}
	}
	//获取info
	const getInfo = ()=>{
		context?.$http({
			url: `${tableName}/info/${id.value}`,
			method: 'get'
		}).then(res => {
			let reg=new RegExp('../../../file','g')
			form.value = res.data.data
			formVisible.value = true
		})
	}
	const crossRow = ref('')
	const crossTable = ref('')
	const crossTips = ref('')
	const crossColumnName = ref('')
	const crossColumnValue = ref('')
	//初始化
	const init=(formId=null,formType='add',formNames='',row=null,table=null,statusColumnName=null,tips=null,statusColumnValue=null)=>{
		resetForm()
			form.value.jiedanriqi = context?.$toolUtil.getCurDateTime()
			form.value.zhuangcheshijian = context?.$toolUtil.getCurDateTime()
			form.value.kaishiyunshushijian = context?.$toolUtil.getCurDateTime()
		if(formId){
			id.value = formId
			type.value = formType
		}
		if(formType == 'add'){
			isAdd.value = true
			formTitle.value = '新增' + formName
			formVisible.value = true
		}else if(formType == 'info'){
			isAdd.value = false
			formTitle.value = '查看' + formName
			getInfo()
		}else if(formType == 'edit'){
			isAdd.value = true
			formTitle.value = '修改' + formName
			getInfo()
		}
		else if(formType == 'cross'){
			isAdd.value = true
			formTitle.value = formNames
			// getInfo()
			for(let x in row){
				if(x=='huowubianhao'){
					form.value.huowubianhao = row[x];
					disabledForm.value.huowubianhao = true;
					continue;
				}
				if(x=='huowumingcheng'){
					form.value.huowumingcheng = row[x];
					disabledForm.value.huowumingcheng = true;
					continue;
				}
				if(x=='guige'){
					form.value.guige = row[x];
					disabledForm.value.guige = true;
					continue;
				}
				if(x=='huowushuliang'){
					form.value.huowushuliang = row[x];
					disabledForm.value.huowushuliang = true;
					continue;
				}
				if(x=='tupian'){
					form.value.tupian = row[x];
					disabledForm.value.tupian = true;
					continue;
				}
				if(x=='huozhuzhanghao'){
					form.value.huozhuzhanghao = row[x];
					disabledForm.value.huozhuzhanghao = true;
					continue;
				}
				if(x=='huozhushouji'){
					form.value.huozhushouji = row[x];
					disabledForm.value.huozhushouji = true;
					continue;
				}
				if(x=='huozhuxingming'){
					form.value.huozhuxingming = row[x];
					disabledForm.value.huozhuxingming = true;
					continue;
				}
				if(x=='sijizhanghao'){
					form.value.sijizhanghao = row[x];
					disabledForm.value.sijizhanghao = true;
					continue;
				}
				if(x=='sijishouji'){
					form.value.sijishouji = row[x];
					disabledForm.value.sijishouji = true;
					continue;
				}
				if(x=='sijixingming'){
					form.value.sijixingming = row[x];
					disabledForm.value.sijixingming = true;
					continue;
				}
				if(x=='chepaihao'){
					form.value.chepaihao = row[x];
					disabledForm.value.chepaihao = true;
					continue;
				}
				if(x=='fahuodizhi'){
					form.value.fahuodizhi = row[x];
					disabledForm.value.fahuodizhi = true;
					continue;
				}
				if(x=='songdadizhi'){
					form.value.songdadizhi = row[x];
					disabledForm.value.songdadizhi = true;
					continue;
				}
				if(x=='yujisongdashijian'){
					form.value.yujisongdashijian = row[x];
					disabledForm.value.yujisongdashijian = true;
					continue;
				}
				if(x=='jiedanriqi'){
					form.value.jiedanriqi = row[x];
					disabledForm.value.jiedanriqi = true;
					continue;
				}
				if(x=='zhuangcheshijian'){
					form.value.zhuangcheshijian = row[x];
					disabledForm.value.zhuangcheshijian = true;
					continue;
				}
				if(x=='kaishiyunshushijian'){
					form.value.kaishiyunshushijian = row[x];
					disabledForm.value.kaishiyunshushijian = true;
					continue;
				}
				if(x=='dingdanzhuangtai'){
					form.value.dingdanzhuangtai = row[x];
					disabledForm.value.dingdanzhuangtai = true;
					continue;
				}
			}
			if(row){
				crossRow.value = row
			}
			if(table){
				crossTable.value = table
			}
			if(tips){
				crossTips.value = tips
			}
			if(statusColumnName){
				crossColumnName.value = statusColumnName
			}
			if(statusColumnValue){
				crossColumnValue.value = statusColumnValue
			}
			form.value.dingdanzhuangtai='待卸货'
			formVisible.value = true
		}

		context?.$http({
			url: `${context?.$toolUtil.storageGet('sessionTable')}/session`,
			method: 'get'
		}).then(res => {
			var json = res.data.data
			if(json.hasOwnProperty('sijizhanghao')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.sijizhanghao = json.sijizhanghao
				disabledForm.value.sijizhanghao = true;
			}
			if(json.hasOwnProperty('sijishouji')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.sijishouji = json.sijishouji
				disabledForm.value.sijishouji = true;
			}
			if(json.hasOwnProperty('sijixingming')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.sijixingming = json.sijixingming
				disabledForm.value.sijixingming = true;
			}
			if(json.hasOwnProperty('chepaihao')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.chepaihao = json.chepaihao
				disabledForm.value.chepaihao = true;
			}
			if(context?.$toolUtil.storageGet("role")!="管理员") {
				disabledForm.value.jiedanriqi = true;
			}
			if(context?.$toolUtil.storageGet("role")!="管理员") {
				disabledForm.value.kaishiyunshushijian = true;
			}
			if(context?.$toolUtil.storageGet("role")!="管理员") {
				disabledForm.value.dingdanzhuangtai = true;
			}
		})
		dingdanzhuangtaiLists.value = "已卸货,待卸货".split(',')
	}
	//初始化
	//声明父级调用
	defineExpose({
		init
	})
	//关闭
	const closeClick = () => {
		formVisible.value = false
	}
	//富文本
	const editorChange = (e,name) =>{
		form.value[name] = e
	}
	//提交
	const save=()=>{
		if(form.value.tupian!=null) {
			form.value.tupian = form.value.tupian.replace(new RegExp(context?.$config.url,"g"),"");
		}
		var table = crossTable.value
		var objcross = JSON.parse(JSON.stringify(crossRow.value))
		let crossUserId = ''
		let crossRefId = ''
		let crossOptNum = ''
		if(type.value == 'cross'){
			if(crossColumnName.value!=''){
				if(!crossColumnName.value.startsWith('[')){
					for(let o in objcross){
						if(o == crossColumnName.value){
							objcross[o] = crossColumnValue.value
						}
					}
					//修改跨表数据
					changeCrossData(objcross)
				}else{
					crossUserId = context?.$toolUtil.storageGet('userid')
					crossRefId = objcross['id']
					crossOptNum = crossColumnName.value.replace(/\[/,"").replace(/\]/,"")
				}
			}
		}
		formRef.value.validate((valid)=>{
			if(valid){
				if(crossUserId&&crossRefId){
					form.value.crossuserid = crossUserId
					form.value.crossrefid = crossRefId
					let params = {
						page: 1,
						limit: 1000, 
						crossuserid:form.value.crossuserid,
						crossrefid:form.value.crossrefid,
					}
					context?.$http({
						url: `${tableName}/page`,
						method: 'get', 
						params: params 
					}).then(res=>{
						if(res.data.data.total>=crossOptNum){
							context?.$toolUtil.message(`${crossTips.value}`,'error')
							return false
						}else{
							context?.$http({
								url: `${tableName}/${!form.value.id ? "save" : "update"}`,
								method: 'post', 
								data: form.value 
							}).then(res=>{
								emit('formModelChange')
								context?.$toolUtil.message(`操作成功`,'success',()=>{
									formVisible.value = false
								})
							})
						}
					})
				}else{
					context?.$http({
						url: `${tableName}/${!form.value.id ? "save" : "update"}`,
						method: 'post', 
						data: form.value 
					}).then(res=>{
						emit('formModelChange')
						context?.$toolUtil.message(`操作成功`,'success',()=>{
							formVisible.value = false
						})
					})
				}
			}
		})
	}
	//修改跨表数据
	const changeCrossData=(row)=>{
		context?.$http({
			url: `${crossTable.value}/update`,
			method: 'post',
			data: row
		}).then(res=>{})
	}
</script>
<style lang="scss" scoped>
	// 表单
	.formModel_form{
		border-radius: 6px;
		padding: 30px;
		box-shadow: 0 0px 0px rgba(85, 255, 255, 0.5);
		// form item
		:deep(.el-form-item) {
			border: 1px solid #ddd;
			margin: 0;
			display: flex;
			//label
			.el-form-item__label {
			 border: 1px solid #ddd;
			 padding: 0;
			 background: rgba(236,236,236,1);
			 display: block;
			 width: 120px;
			 border-width: 0 2px 0 0;
			 text-align: center;
			}
			// 内容盒子
			.el-form-item__content {
				padding: 0 20px;
				display: flex;
				width: calc(100% - 120px);
				justify-content: flex-start;
				align-items: center;
				flex-wrap: wrap;
				// 输入框
				.list_inp {
					border: 1px solid #ddd;
					box-shadow: 0 0 0px rgba(85, 255, 255, 0.5);
					padding: 0 10px;
					width: 100%;
					line-height: 36px;
					box-sizing: border-box;
					height: 36px;
					//去掉默认样式
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
						padding: 0;
					}
					.is-focus {
						box-shadow: none !important;
					}
				}
				//日期选择器
				.list_date {
					border: 1px solid #ddd;
					border-radius: 0;
					box-shadow: 0 0 0px rgba(85, 255, 255, 0.5);
					width: 100%;
					line-height: 36px;
					box-sizing: border-box;
					//去掉默认样式
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
					}
				}
				// 下拉框
				.list_sel {
					border: 1px solid #ddd;
					border-radius: 0;
					box-shadow: 0 0 0px rgba(85, 255, 255, 0.5);
					padding: 0 10px;
					width: 100%;
					line-height: 36px;
					box-sizing: border-box;
					//去掉默认样式
					.select-trigger{
						height: 100%;
						.el-input{
							height: 100%;
							.el-input__wrapper{
								border: none;
								box-shadow: none;
								background: none;
								border-radius: 0;
								height: 100%;
								padding: 0;
							}
							.is-focus {
								box-shadow: none !important;
							}
						}
					}
				}
				//图片上传样式
				.el-upload-list  {
					//提示语
					.el-upload__tip {
						margin: 7px 0 0;
						color: #999;
						display: flex;
						font-size: 12px;
						justify-content: flex-start;
						align-items: center;
					}
					//外部盒子
					.el-upload--picture-card {
						border: 1px dashed #000;
						cursor: pointer;
						background-color: #fff;
						border-radius: 8px;
						width: 100px;
						line-height: 110px;
						text-align: center;
						height: 100px;
						//图标
						.el-icon{
							color: #000;
							font-size: 32px;
						}
					}
					.el-upload-list__item {
						border: 1px dashed #000;
						cursor: pointer;
						background-color: #fff;
						border-radius: 8px;
						width: 100px;
						line-height: 110px;
						text-align: center;
						height: 100px;
					}
				}
			}
		}
	}
	// 按钮盒子
	.formModel_btn_box {
		padding: 40px 0 0;
		display: flex;
		width: 100%;
		justify-content: center;
		align-items: center;
		.formModel_cancel {
			border: 0;
			cursor: pointer;
			border-radius: 4px;
			padding: 0 24px;
			margin: 0 10px 0 0;
			outline: none;
			color: #fff;
			background: rgba(27, 78, 133, 1);
			width: auto;
			font-size: 14px;
			height: 32px;
		}
		.formModel_cancel:hover {
			background: rgba(27, 78, 133, 0.5);
		}
		
		.formModel_confirm {
			border: 0;
			cursor: pointer;
			border-radius: 4px;
			padding: 0 24px;
			margin: 0 10px 0 0;
			outline: none;
			color: #fff;
			background: rgba(241, 49, 100, 1);
			width: auto;
			font-size: 14px;
			height: 32px;
		}
		.formModel_confirm:hover {
			background: rgba(241, 49, 100, .5);
		}
	}
</style>