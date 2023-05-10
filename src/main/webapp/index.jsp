<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<%@ include file="jsp/static/head.jsp"%>
</head>
<style>
	#home-container {
				padding: 30px;
				background: url(http://codegen.caihongy.cn/20221130/95ab6b2e322c4d18a548562ba480af2a.png) no-repeat center bottom;
				min-height: 100vh;
			}
	
	#home-container div.home-container-title {
				margin: 50px auto;
				color: #333;
				font-weight: bold;
				font-size: 32px;
				text-align: center;
			}
	
	#home-container .cards {
				margin: 0 0 20px 0;
				display: flex;
				justify-content: center;
				align-items: center;
			}
	
	#home-container .cards .item {
				border-radius: 4px;
				box-shadow: 0 0px 0px rgba(0,0,0,.3);
				margin: 0 10px;
				background: rgba(255,255,255,.6);
				display: flex;
			}
	
	#home-container .cards .item .link {
				background: rgba(255,255,255,.6);
				width: 80px;
				height: 80px;
			}
	
	#home-container .cards .item .item-body {
				flex-direction: column;
				display: flex;
				width: 160px;
				justify-content: center;
				align-items: center;
			}
	
	#home-container .cards .item .item-body .num {
				margin: 5px 0;
				color: #333;
				font-weight: bold;
				font-size: 20px;
				line-height: 24px;
				height: 24px;
			}
	
	#home-container .cards .item .item-body .name {
				margin: 5px 0;
				color: #666;
				font-size: 16px;
				line-height: 24px;
				height: 24px;
			}
	
    .homeCharts{
        display: flex;
        width: 100%;
        align-items: center;
        height: auto;
        box-shadow: 0 4px 10px rgba(0,0,0,.3);
        border-radius: 10px;
        margin-bottom: 20px;
    }
</style> 
<body>
	<div id="main-container">
		<!-- Top Navigation -->
		<%@ include file="jsp/static/topNav.jsp"%>
		
		<!-- Menu -->
		<div id="menu-container" class="navbar">
			<ul class="navbar-nav navbar-vertical" id="navUl">
				
			</ul>
		</div>
		<!-- /Menu -->
			
		<!-- Breadcrumb -->
		<div id="breadcrumb-container">
			<h3 class="breadcrumb-title">主页</h3>
			<ol class="breadcrumb-list">
				<li class="breadcrumb-item-home">
					<a href="#">
						<span class="ti-home"></span>
					</a>
				</li>
			</ol>
		</div>
		<!-- /Breadcrumb -->
			
		<!-- Main Content -->
		<div id="home-container">
			<div class="home-container-title">欢迎使用&nbsp;基于SSM框架的KTV管理系统</div>
			
			<div class="cards" :style='{"margin":"0 0 20px 0","alignItems":"center","justifyContent":"center","display":"flex"}'>
				<div class="item" :style='{"boxShadow":"0 0px 0px rgba(0,0,0,.3)","margin":"0 10px","borderRadius":"4px","background":"rgba(255,255,255,.6)","display":"flex"}' v-if="crossBtnControl2('yonghu','首页总数')">
					<div class="link" :style='{"width":"80px","background":"rgba(255,255,255,.6)","height":"80px"}'></div>
					<div class="item-body" :style='{"width":"160px","alignItems":"center","flexDirection":"column","justifyContent":"center","display":"flex"}'>
						<div class="num" :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"20px","color":"#333","fontWeight":"bold","height":"24px"}'>{{yonghuCount}}</div>
						<div class="name" :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"16px","color":"#666","height":"24px"}'>用户总数</div>
					</div>
				</div>
				<div class="item" :style='{"boxShadow":"0 0px 0px rgba(0,0,0,.3)","margin":"0 10px","borderRadius":"4px","background":"rgba(255,255,255,.6)","display":"flex"}' v-if="crossBtnControl2('baojianxinxi','首页总数')">
					<div class="link" :style='{"width":"80px","background":"rgba(255,255,255,.6)","height":"80px"}'></div>
					<div class="item-body" :style='{"width":"160px","alignItems":"center","flexDirection":"column","justifyContent":"center","display":"flex"}'>
						<div class="num" :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"20px","color":"#333","fontWeight":"bold","height":"24px"}'>{{baojianxinxiCount}}</div>
						<div class="name" :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"16px","color":"#666","height":"24px"}'>包间信息总数</div>
					</div>
				</div>
				<div class="item" :style='{"boxShadow":"0 0px 0px rgba(0,0,0,.3)","margin":"0 10px","borderRadius":"4px","background":"rgba(255,255,255,.6)","display":"flex"}' v-if="crossBtnControl2('baojianyuding','首页总数')">
					<div class="link" :style='{"width":"80px","background":"rgba(255,255,255,.6)","height":"80px"}'></div>
					<div class="item-body" :style='{"width":"160px","alignItems":"center","flexDirection":"column","justifyContent":"center","display":"flex"}'>
						<div class="num" :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"20px","color":"#333","fontWeight":"bold","height":"24px"}'>{{baojianyudingCount}}</div>
						<div class="name" :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"16px","color":"#666","height":"24px"}'>包间预订总数</div>
					</div>
				</div>
				<div class="item" :style='{"boxShadow":"0 0px 0px rgba(0,0,0,.3)","margin":"0 10px","borderRadius":"4px","background":"rgba(255,255,255,.6)","display":"flex"}' v-if="crossBtnControl2('diancandingdan','首页总数')">
					<div class="link" :style='{"width":"80px","background":"rgba(255,255,255,.6)","height":"80px"}'></div>
					<div class="item-body" :style='{"width":"160px","alignItems":"center","flexDirection":"column","justifyContent":"center","display":"flex"}'>
						<div class="num" :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"20px","color":"#333","fontWeight":"bold","height":"24px"}'>{{diancandingdanCount}}</div>
						<div class="name" :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"16px","color":"#666","height":"24px"}'>点餐订单总数</div>
					</div>
				</div>
			</div>
			
			<div class="homeCharts">
				<div id="yonghuMain1" v-if="crossBtnControl2('yonghu','首页统计')" class="graph" style="width: 100%;height:300px;"></div>
				<div id="baojianxinxiMain1" v-if="crossBtnControl2('baojianxinxi','首页统计')" class="graph" style="width: 100%;height:300px;"></div>
				<div id="baojianyudingMain1" v-if="crossBtnControl2('baojianyuding','首页统计')" class="graph" style="width: 100%;height:300px;"></div>
				<div id="diancandingdanMain1" v-if="crossBtnControl2('diancandingdan','首页统计')" class="graph" style="width: 100%;height:300px;"></div>
			</div>
		</div>
		<!-- /Main Content -->
	</div>
	
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">Top</a>
	<!-- /Back to Top -->
	
	<%@ include file="jsp/static/foot.jsp"%>
    <script src="${pageContext.request.contextPath}/resources/js/echarts.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/echarts/theme/blue.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/echarts/theme/vintage.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/echarts/theme/green.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/echarts/theme/carp.js"></script>

	<script>
		<%@ include file="jsp/utils/menu.jsp"%>
		<%@ include file="jsp/static/setMenu.js"%>
		<%@ include file="jsp/utils/baseUrl.jsp"%>
        <%@ include file="jsp/static/crossBtnControl.js"%>
		// 用户登出
        <%@ include file="jsp/static/logout.jsp"%>
        var vm = new Vue({
            el: '#home-container',
            data: {
            yonghuCount: 0,
            baojianxinxiCount: 0,
            baojianyudingCount: 0,
            diancandingdanCount: 0,
            }
        });
        function getyonghuCount() {
                $.ajax({
                    type: "GET",
                    url: baseUrl+`yonghu/count`,
                    beforeSend: function(xhr) {
                        xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
                    },
                    success: function(data){
                        if(data.code == 0){
                            vm.yonghuCount = data.data;
                        }else if(data.code == 401){
                            <%@ include file="jsp/static/toLogin.jsp"%>
                        }else{
                            alert(data.msg);
                        }
                    },
                });
        }
        function getbaojianxinxiCount() {
                $.ajax({
                    type: "GET",
                    url: baseUrl+`baojianxinxi/count`,
                    beforeSend: function(xhr) {
                        xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
                    },
                    success: function(data){
                        if(data.code == 0){
                            vm.baojianxinxiCount = data.data;
                        }else if(data.code == 401){
                            <%@ include file="jsp/static/toLogin.jsp"%>
                        }else{
                            alert(data.msg);
                        }
                    },
                });
        }
        function getbaojianyudingCount() {
                $.ajax({
                    type: "GET",
                    url: baseUrl+`baojianyuding/count`,
                    beforeSend: function(xhr) {
                        xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
                    },
                    success: function(data){
                        if(data.code == 0){
                            vm.baojianyudingCount = data.data;
                        }else if(data.code == 401){
                            <%@ include file="jsp/static/toLogin.jsp"%>
                        }else{
                            alert(data.msg);
                        }
                    },
                });
        }
        function getdiancandingdanCount() {
                $.ajax({
                    type: "GET",
                    url: baseUrl+`diancandingdan/count`,
                    beforeSend: function(xhr) {
                        xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
                    },
                    success: function(data){
                        if(data.code == 0){
                            vm.diancandingdanCount = data.data;
                        }else if(data.code == 401){
                            <%@ include file="jsp/static/toLogin.jsp"%>
                        }else{
                            alert(data.msg);
                        }
                    },
                });
        }

                function yonghuchartDialog1(){

                    $.ajax({
                        type: "GET",
                        url: baseUrl+"yonghu/group/huiyuandengji",
                        beforeSend: function(xhr) {
                            xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
                        },
                        success: function(data){
                            if(data.code == 0){
                                if(data.data != null){
                                    let res = data.data;
                                    let xAxis = [];
                                    let yAxis = [];
                                    let pArray = []
                                    for(let i=0;i<res.length;i++){
                                        xAxis.push(res[i].huiyuandengji);
                                        yAxis.push(parseFloat((res[i].total)));
                                        pArray.push({
                                            value: parseFloat((res[i].total)),
                                            name: res[i].huiyuandengji
                                        })
                                    }

                                    var myChart = echarts.init(document.getElementById('yonghuMain1'),'blue');
                                    var option = {};
                                    option = {
                                            title: {
                                                text: '会员等级统计',
                                                left: 'center'
                                            },
                                            legend: {
                                              orient: 'vertical',
                                              left: 'left'
                                            },
                                            tooltip: {
                                              trigger: 'item',
                                              formatter: '{b} : {c} ({d}%)'
                                            },
                                            series: [
                                                {
                                                    type: 'pie',
                                                    radius: ['25%', '55%'],
                                                    center: ['50%', '60%'],
                                                    data: pArray,
                                                    emphasis: {
                                                        itemStyle: {
                                                            shadowBlur: 10,
                                                            shadowOffsetX: 0,
                                                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                                                        }
                                                    }
                                                }
                                            ]
                                    };

                                    // 使用刚指定的配置项和数据显示图表。
                                    myChart.setOption(option);
                                }
                            }else if(data.code == 401){
                                <%@ include file="jsp/static/toLogin.jsp"%>
                            }else{
                                alert(data.msg);
                            }
                        },
                    });
                }






                function baojianxinxichartDialog1(){

                    $.ajax({
                        type: "GET",
                        url: baseUrl+"baojianxinxi/group/baojianzhuangtai",
                        beforeSend: function(xhr) {
                            xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
                        },
                        success: function(data){
                            if(data.code == 0){
                                if(data.data != null){
                                    let res = data.data;
                                    let xAxis = [];
                                    let yAxis = [];
                                    let pArray = []
                                    for(let i=0;i<res.length;i++){
                                        xAxis.push(res[i].baojianzhuangtai);
                                        yAxis.push(parseFloat((res[i].total)));
                                        pArray.push({
                                            value: parseFloat((res[i].total)),
                                            name: res[i].baojianzhuangtai
                                        })
                                    }

                                    var myChart = echarts.init(document.getElementById('baojianxinxiMain1'),'vintage');
                                    var option = {};
                                    option = {
                                            title: {
                                                text: '包间状态统计',
                                                left: 'center'
                                            },
                                            legend: {
                                              orient: 'vertical',
                                              left: 'left'
                                            },
                                            tooltip: {
                                              trigger: 'item',
                                              formatter: '{b} : {c} ({d}%)'
                                            },
                                            series: [
                                                {
                                                    type: 'pie',
                                                    radius: '55%',
                                                    center: ['50%', '60%'],
                                                    data: pArray,
                                                    emphasis: {
                                                        itemStyle: {
                                                            shadowBlur: 10,
                                                            shadowOffsetX: 0,
                                                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                                                        }
                                                    }
                                                }
                                            ]
                                    };

                                    // 使用刚指定的配置项和数据显示图表。
                                    myChart.setOption(option);
                                }
                            }else if(data.code == 401){
                                <%@ include file="jsp/static/toLogin.jsp"%>
                            }else{
                                alert(data.msg);
                            }
                        },
                    });
                }






                function baojianyudingchartDialog1(){

                    $.ajax({
                        type: "GET",
                        url: baseUrl+`baojianyuding/value/yudingshijian/zhekoujiage/日`,
                        beforeSend: function(xhr) {
                            xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
                        },
                        success: function(data){
                            if(data.code == 0){
                                if(data.data != null){
                                    let res = data.data;
                                    let xAxis = [];
                                    let yAxis = [];
                                    let pArray = []
                                    for(let i=0;i<res.length;i++){
                                        xAxis.push(res[i].yudingshijian);
                                        yAxis.push(parseFloat((res[i].total)));
                                        pArray.push({
                                            value: parseFloat((res[i].total)),
                                            name: res[i].yudingshijian
                                        })
                                    }

                                    var myChart = echarts.init(document.getElementById('baojianyudingMain1'),'green');
                                    var option = {};
                                    option = {
                                        title: {
                                            text: '包间收入统计',
                                            left: 'center'
                                        },
                                        tooltip: {
                                          trigger: 'item',
                                          formatter: '{b} : {c}'
                                        },
                                        xAxis: {
                                            type: 'category',
                                            boundaryGap: false,
                                            data: xAxis
                                        },
                                        yAxis: {
                                            type: 'value'
                                        },
                                        series: [{
                                            data: yAxis,
                                            type: 'line',
                                            areaStyle: {}
                                        }]
                                    };

                                    // 使用刚指定的配置项和数据显示图表。
                                    myChart.setOption(option);
                                }
                            }else if(data.code == 401){
                                <%@ include file="jsp/static/toLogin.jsp"%>
                            }else{
                                alert(data.msg);
                            }
                        },
                    });
                }






                function diancandingdanchartDialog1(){

                    $.ajax({
                        type: "GET",
                        url: baseUrl+`diancandingdan/value/xiadanshijian/zhekoujiage/日`,
                        beforeSend: function(xhr) {
                            xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
                        },
                        success: function(data){
                            if(data.code == 0){
                                if(data.data != null){
                                    let res = data.data;
                                    let xAxis = [];
                                    let yAxis = [];
                                    let pArray = []
                                    for(let i=0;i<res.length;i++){
                                        xAxis.push(res[i].xiadanshijian);
                                        yAxis.push(parseFloat((res[i].total)));
                                        pArray.push({
                                            value: parseFloat((res[i].total)),
                                            name: res[i].xiadanshijian
                                        })
                                    }

                                    var myChart = echarts.init(document.getElementById('diancandingdanMain1'),'carp');
                                    var option = {};
                                    option = {
                                        title: {
                                            text: '点餐收入统计',
                                            left: 'center'
                                        },
                                        tooltip: {
                                          trigger: 'item',
                                          formatter: '{b} : {c}'
                                        },
                                        xAxis: {
                                            type: 'category',
                                            boundaryGap: false,
                                            data: xAxis
                                        },
                                        yAxis: {
                                            type: 'value'
                                        },
                                        series: [{
                                            data: yAxis,
                                            type: 'line',
                                            areaStyle: {}
                                        }]
                                    };

                                    // 使用刚指定的配置项和数据显示图表。
                                    myChart.setOption(option);
                                }
                            }else if(data.code == 401){
                                <%@ include file="jsp/static/toLogin.jsp"%>
                            }else{
                                alert(data.msg);
                            }
                        },
                    });
                }







		$(document).ready(function() {
		//我的后台,session信息转移
		if(window.localStorage.getItem("Token") != null && window.localStorage.getItem("Token") != 'null'){
			  if(window.sessionStorage.getItem("token") == null || window.sessionStorage.getItem("token") == 'null'){
				  window.sessionStorage.setItem("token",window.localStorage.getItem("Token"));
				  window.sessionStorage.setItem("role",window.localStorage.getItem("role"));
				  window.sessionStorage.setItem("accountTableName",window.localStorage.getItem("sessionTable"));
				  window.sessionStorage.setItem("username",window.localStorage.getItem("adminName"));
			  }
		  }			
          $('.dropdown-menu h5').html(window.sessionStorage.getItem('username')+'('+window.sessionStorage.getItem('role')+')')
		  $('.sidebar-header h3 a').html(projectName)
		  var token = window.sessionStorage.getItem("token");
		  if(token == "null" || token == null){
		  	alert("请登录后再操作");
		  	window.location.href = ("jsp/login.jsp");
		  }
			setMenu();
			<%@ include file="jsp/static/myInfo.js"%>
            getyonghuCount();
            yonghuchartDialog1()
            getbaojianxinxiCount();
            baojianxinxichartDialog1()
            getbaojianyudingCount();
            baojianyudingchartDialog1()
            getdiancandingdanCount();
            diancandingdanchartDialog1()
		});
	</script>
</body>

</html>
