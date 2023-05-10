<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<%@ include file="../../static/head.jsp"%>
	<link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet">
	<script type="text/javascript" charset="utf-8">
	    window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
	</script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>

</style>
<body>
	<div id="main-container">
		<!-- Top Navigation -->
		<%@ include file="../../static/topNav.jsp"%>
		
		<!-- Menu -->
		<div id="menu-container" class="navbar">
			<ul class="navbar-nav navbar-vertical" id="navUl">
				
			</ul>
		</div>
		<!-- /Menu -->

		<!-- Breadcrumb -->
		<div id="breadcrumb-container">
			<h3 class="breadcrumb-title">编辑点餐订单</h3>
			<ol class="breadcrumb-list">
				<li class="breadcrumb-item-home">
					<a href="#">
						<span class="ti-home"></span>
					</a>
				</li>
				<li class="breadcrumb-item-one"><span>点餐订单管理</span></li>
				<li class="breadcrumb-item-two"><span>编辑点餐订单</span></li>
			</ol>
		</div>

		<!-- Main Content -->
		<div id="add-container">
			<form id="addOrUpdateForm">
				<input id="updateId" name="id" type="hidden">
				<div class="form-item">
					<label>订单编号</label>

					<input id="dingdanbianhao" name="dingdanbianhao" class="form-control" v-model="ruleForm.dingdanbianhao" readonly>
				</div>
				<div class="form-item">
					<label>餐品名称</label>

					<input id="canpinmingcheng" name="canpinmingcheng" class="form-control" v-model="ruleForm.canpinmingcheng" readonly>
				</div>
				<div class="form-item">
					<label>餐品分类</label>

					<input id="canpinfenlei" name="canpinfenlei" class="form-control" v-model="ruleForm.canpinfenlei" readonly>
				</div>
				<div class="form-item">
					<label>价格</label>

					<input id="jiage" name="jiage" class="form-control" v-model="ruleForm.jiage" readonly>
				</div>
				<div class="form-item">
					<label>数量</label>

					<input id="shuliang" name="shuliang" class="form-control" v-model="ruleForm.shuliang" readonly>
				</div>
				<div class="form-item">
					<label>会员折扣</label>

					<input id="huiyuanzhekou" name="huiyuanzhekou" class="form-control" v-model="ruleForm.huiyuanzhekou" readonly>
				</div>
				<div class="form-item">
					<label>折扣价格</label>

					<input id="zhekoujiage" name="zhekoujiage" class="form-control" v-model="ruleForm.zhekoujiage" readonly>
				</div>
				<div class="form-item">
					<label>用户账号</label>

					<input id="yonghuzhanghao" name="yonghuzhanghao" class="form-control" v-model="ruleForm.yonghuzhanghao" readonly>
				</div>
				<div class="form-item">
					<label>用户姓名</label>

					<input id="yonghuxingming" name="yonghuxingming" class="form-control" v-model="ruleForm.yonghuxingming" readonly>
				</div>
				<div class="form-item">
					<label>用户手机</label>

					<input id="yonghushouji" name="yonghushouji" class="form-control" v-model="ruleForm.yonghushouji" readonly>
				</div>
				<div class="form-item">
					<label>会员等级</label>

					<input id="huiyuandengji" name="huiyuandengji" class="form-control" v-model="ruleForm.huiyuandengji" readonly>
				</div>
				<div class="form-item">
					<label>包间号</label>

					<input id="baojianhao" name="baojianhao" class="form-control" v-model="ruleForm.baojianhao" readonly>
				</div>
				<div class="form-item">
					<label>订餐备注</label>

					<input id="dingcanbeizhu" name="dingcanbeizhu" class="form-control" v-model="ruleForm.dingcanbeizhu" readonly>
				</div>
				<div class="form-item">
					<label>下单时间</label>

					<input id="xiadanshijian" name="xiadanshijian" class="form-control" v-model="ruleForm.xiadanshijian" readonly>
				</div>
				<div class="form-item">
					<label>是否审核</label>

					<input id="sfsh" name="sfsh" class="form-control" v-model="ruleForm.sfsh" readonly>
				</div>

				<div class="form-item">
					<label>是否支付</label>

					<input id="ispay" name="ispay" class="form-control" v-model="ruleForm.ispay" readonly>
				</div>

				<div class="form-item-file">
					<label>审核回复</label>
					<script id="shhfEditor" type="text/plain" style="width:800px;height:230px;"></script>
					<script type="text/javascript">
						//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
						//相见文档配置属于你自己的编译器
						var shhfUe = UE.getEditor('shhfEditor', {
						toolbars: [
								[
									'undo', //撤销
									'bold', //加粗
									'redo', //重做
									'underline', //下划线
									'horizontal', //分隔线
									'inserttitle', //插入标题
									'cleardoc', //清空文档
									'fontfamily', //字体
									'fontsize', //字号
									'paragraph', //段落格式
									'inserttable', //插入表格
									'justifyleft', //居左对齐
									'justifyright', //居右对齐
									'justifycenter', //居中对
									'justifyjustify', //两端对齐
									'forecolor', //字体颜色
									'fullscreen', //全屏
									'edittip ', //编辑提示
									'customstyle', //自定义标题
									 ]
							]
						});
					</script>
					<input type="hidden" name="shhf" id="shhf-input">
				</div>
				<div class="form-btn">
					<button id="exitBtn" type="button" class="btn btn-primary btn-close">返回</button>
				</div>
			</form>
		</div>
	</div>
	
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">Top</a>
	<!-- /Back to Top -->
	
	<%@ include file="../../static/foot.jsp"%>
	<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>

	<script>
		<%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>   	

		var tableName = "diancandingdan";
		var pageType = "add-or-update";
		var updateId = "";		

		var ruleForm = {};
		var vm = new Vue({
		  el: '#addOrUpdateForm',
		  data:{
			  ruleForm : {},
                baseUrl: baseUrl,
			},
		  beforeCreate: function(){
			  var id = window.sessionStorage.getItem("id");
				if(id != null && id != "" && id != "null"){
					$.ajax({ 
		                type: "GET",
		                url: baseUrl + "diancandingdan/info/" + id,
		                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
		                success: function(res){               	
		                	if(res.code == 0){
		                		vm.ruleForm = res.data;
				    		}else if(res.code == 401) {
				    			<%@ include file="../../static/toLogin.jsp"%>    
				    		}else{ alert(res.msg)}
		                },
		            });
				}
			},
			methods: { }
	  	});		

		// 填充富文本框
		function setContent(){
			if(ruleForm.shhf != null && ruleForm.shhf != 'null' && ruleForm.shhf != ''){
				var mes = '' + ruleForm.shhf;
				var shhfUeditor = UE.getEditor('shhfEditor');
				shhfUeditor.ready(function() {
					shhfUeditor.setContent(mes);
					shhfUeditor.setDisabled('fullscreen');
				});
			}
		}  

		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if(id != null && id != "" && id != "null"){
				$("#submitBtn").addClass("修改");
				updateId = id;
				window.sessionStorage.removeItem('id');
				$.ajax({ 
	                type: "GET",
	                url: baseUrl + "diancandingdan/info/" + id,
	                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
	                success: function(res){           
	                	if(res.code == 0){
	                		ruleForm = res.data
							showImg();
							setContent();		
							setMediaUrl();	
							setDownloadBtn();
			    		}else if(res.code ==401){
			    			 <%@ include file="../../static/toLogin.jsp"%>	
			    		}else{
							 alert(res.msg);
						}
	                },
	            });
			}else{
				$("#submitBtn").addClass("新增");
			}
		}	

		//图片显示
		function showImg(){
		}		
		function exit(){
			window.sessionStorage.removeItem("id");
			window.location.href = "list.jsp";
		}			
		// 下载
		function download(fileName){
			var url = baseUrl+fileName;
			window.open(url);
		}	
		//设置下载
		function setDownloadBtn(){
		}			
		//设置音视频播放链接
		function setMediaUrl(){
		}	
		//打开新窗口播放媒体
		function mediaPlay(url){
			//var url = baseUrl + "upload/" + fileName;
			window.open(baseUrl+url);
		}		
		$(document).ready(function() { 
			//设置右上角用户名
            $('.dropdown-menu h5').html(window.sessionStorage.getItem('username')+'('+window.sessionStorage.getItem('role')+')')
			//设置项目名
			$('.sidebar-header h3 a').html(projectName)
			setMenu();
			$('#exitBtn').on('click', function(e) {
			    e.preventDefault();
				exit();
			});
			getDetails();
			<%@ include file="../../static/myInfo.js"%>
		});			
		// 用户登出
        <%@ include file="../../static/logout.jsp"%>	
	</script>
</body>

</html>
