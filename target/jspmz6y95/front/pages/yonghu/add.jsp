<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<!-- bootstrap样式，地图插件使用 -->
		<link rel="stylesheet" href="../../css/bootstrap.min.css" />
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		.layui-form.add .layui-form-item .layui-form-select .layui-input {
						padding: 0 30px 0 10px;
						margin: 0;
						color: #666;
						font-size: 14px;
						border-color: #ddd;
						line-height: 40px;
						border-radius: 30px;
						outline: none;
						background: #fff;
						width: 350px;
						border-width: 1px;
						border-style: solid;
						height: 40px;
					}
	</style>
	<body>
		<div id="app">
			<!-- 轮播图 -->
			<div id="layui-carousel" class="layui-carousel">
				<div carousel-item>
					<div class="layui-carousel-item" v-for="(item,index) in swiperList" :key="index">
						<img :src="item.img" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->
		
			<div class="data-add-container" :style='{"padding":"30px 7% 40px","margin":"10px auto","alignItems":"flex-start","flexWrap":"wrap","background":"rgba(255,255,255,0)","display":"block","width":"100%","justifyContent":"space-between"}'>
				<form class="layui-form layui-form-pane add" lay-filter="myForm">
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">用户账号：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#666","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"350px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.yonghuzhanghao" type="text" :readonly="ro.yonghuzhanghao" name="yonghuzhanghao" id="yonghuzhanghao" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">密码：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#666","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"350px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.mima" type="text" :readonly="ro.mima" name="mima" id="mima" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">用户姓名：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#666","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"350px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.yonghuxingming" type="text" :readonly="ro.yonghuxingming" name="yonghuxingming" id="yonghuxingming" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">性别</div>
						<select name="xingbie" id="xingbie" lay-filter="xingbie"  >
							<option value="">请选择</option>
							<option v-for="(item,index) in xingbie" v-bind:key="index" :value="item">{{item}}</option>
						</select>
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">年龄：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#666","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"350px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.nianling" type="text" :readonly="ro.nianling" name="nianling" id="nianling" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"44px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">头像：</div>
						<img :style='{"minHeight":"80px","width":"120px","margin":"0 10px 0 0","objectFit":"cover","height":"auto"}' v-if="detail.touxiang" id="touxiangImg" :src="baseurl+detail.touxiang">
						<input v-if="detail.touxiang" type="hidden" :value="detail.touxiang" id="touxiang" name="touxiang" />
						<button v-if="!ro.touxiang" :style='{"cursor":"pointer","border":"0","padding":"0px 20px","boxShadow":"inset 0px 0px 0px 0px #278bc0","margin":"0","borderColor":"#278bc0","color":"#278bc0","minWidth":"110px","outline":"none","borderRadius":"30px","background":"#fff","borderWidth":"1px","width":"auto","fontSize":"14px","lineHeight":"36px","borderStyle":"solid","height":"40px"}' type="button" class="layui-btn btn-theme" id="touxiangUpload">
							<i :style='{"margin":"0 10px 0 0","fontSize":"14px","color":"#278bc0","display":"inline-block"}' class="layui-icon">&#xe67c;</i>上传头像
						</button>
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">用户手机：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#666","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"350px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.yonghushouji" type="text" :readonly="ro.yonghushouji" name="yonghushouji" id="yonghushouji" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">会员等级</div>
						<select name="huiyuandengji" id="huiyuandengji" lay-filter="huiyuandengji" disabled >
							<option value="">请选择</option>
							<option v-for="(item,index) in huiyuandengji" v-bind:key="index" :value="item">{{item}}</option>
						</select>
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">会员折扣：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#666","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"350px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.huiyuanzhekou" type="text" :readonly="ro.huiyuanzhekou" name="huiyuanzhekou" id="huiyuanzhekou" autocomplete="off" class="layui-input">
					</div>


					<div :style='{"margin":"20px 0 0 0px","alignItems":"center","justifyContent":"center","display":"flex"}' class="layui-form-item">
						<button :style='{"cursor":"pointer","padding":"0px 15px","boxShadow":"inset 0px 0px 12px 0px #b3d7ea","margin":"0 10px","borderColor":"#288bbf","color":"#288bbf","minWidth":"150px","outline":"none","borderRadius":"8px","background":"#fff","borderWidth":"2px","width":"auto","fontSize":"16px","lineHeight":"44px","borderStyle":"solid","height":"48px"}'  class="layui-btn btn-submit" lay-submit lay-filter="*">提交</button>
						<button :style='{"cursor":"pointer","border":"0","padding":"0px 15px","boxShadow":"inset 0px 0px 12px 0px #eee","margin":"0 10px","borderColor":"#ccc","color":"#999","minWidth":"150px","outline":"none","borderRadius":"8px","background":"none","borderWidth":"2px","width":"auto","fontSize":"16px","lineHeight":"44px","borderStyle":"solid","height":"48px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</form>
			</div>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>
		<!-- 地图 -->
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=ca04cee7ac952691aa67a131e6f0cee0"></script>
		<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../../js/bootstrap.AMapPositionPicker.js"></script>
		<script>
			var jquery = $;
			
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					baseurl: '',
					dataList: [],
					ro:{
                                        yonghuzhanghao : false,
                                        mima : false,
                                        yonghuxingming : false,
                                        xingbie : false,
                                        nianling : false,
                                        touxiang : false,
                                        yonghushouji : false,
                                        huiyuandengji : false,
                                        huiyuanzhekou : false,
					},
                    detail: {
                        yonghuzhanghao: '',
                        mima: '',
                        yonghuxingming: '',
                        xingbie: '',
                        nianling: '',
                        touxiang: '',
                        yonghushouji: '',
		        huiyuandengji: '会员等级1',
		        huiyuanzhekou: '1',
                    },
					xingbie: '男,女'.split(','),
					huiyuandengji: [],
					centerMenu: centerMenu
				},
				updated: function() {
					layui.form.render('select', 'myForm');
				},
                computed: {



                },
				methods: {
					jump(url) {
						jump(url)
					}
				}
			})


			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate','tinymce'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;
				var laydate = layui.laydate;
				var tinymce = layui.tinymce;
				vue.baseurl = http.baseurl;


                // 获取轮播图 数据
                http.request('config/list', 'get', {
                    page: 1,
                    limit: 3
                }, function(res) {
                    if (res.data.list.length > 0) {
                        let swiperList = [];
                        res.data.list.forEach(element => {
                          if (element.value != null) {
                            swiperList.push({
                              img: http.baseurl+element.value
                            });
                          }
                        });
                        vue.swiperList = swiperList;

                        vue.$nextTick(() => {
                            carousel.render({
                                elem: '#layui-carousel',
                                width: '100%',
                                height: '520px',
                                anim: 'fade',
                                autoplay: 'true',
                                interval: '6000',
                                arrow: 'none',
                                indicator: 'inside'
                            });
                        })
                    }
                });
                form.on('select(xingbie)', function (data) {
                    vue.detail.xingbie=data.value;
                });
				// 上传图片
				var touxiangUpload = upload.render({
					//绑定元素
					elem: '#touxiangUpload',
					//上传接口
					url: http.baseurl + 'file/upload',
					// 请求头
					headers: {
						Token: localStorage.getItem('Token')
					},
					// 允许上传时校验的文件类型
					accept: 'images',
					before: function() {
						//loading层
						var index = layer.load(1, {
							shade: [0.1, '#fff'] //0.1透明度的白色背景
						});
					},
					// 上传成功
					done: function(res) {
						console.log(res);
						layer.closeAll();
						if (res.code == 0) {
							layer.msg("上传成功", {
								time: 2000,
								icon: 6
							})
							var url = 'upload/' + res.file;
							jquery('#touxiang').val(url);
							jquery('#touxiangImg').attr('src', http.baseurl +url)
							vue.detail.touxiang = url;
						} else {
							layer.msg(res.msg, {
								time: 2000,
								icon: 5
							})
						}
					},
					//请求异常回调
					error: function() {
						layer.closeAll();
						layer.msg("请求接口异常", {
							time: 2000,
							icon: 5
						})
					}
				});
				http.request(`option/huiyuandengji/huiyuandengji`,'get',{},(res)=>{
					vue.huiyuandengji = res.data
				});
				form.on('select(huiyuandengji)', (data) => {
					console.log(data.value);
					http.request('follow/huiyuandengji/huiyuandengji', 'get', {
						columnValue: data.value
					}, function(res) {
						vue.detail.huiyuandengji=res.data.huiyuandengji
						vue.detail.huiyuanzhekou=res.data.huiyuanzhekou
					})
				});
				
                // session独取
				let table = localStorage.getItem("userTable");
				http.request(`${table}/session`, 'get', {}, function(data) {
					// 表单赋值
					//form.val("myForm", data.data);
					data = data.data
					for(var key in data){
                                        vue.ro.huiyuandengji = true;
                                        vue.ro.huiyuanzhekou = true;
					}
				});

                // 跨表计算
                if(http.getParam('corss')){
					var obj = JSON.parse(localStorage.getItem('crossObj'));
					//form.val("myForm", obj);
					for(var o in obj){
                        if(o=='yonghuzhanghao'){
                                vue.detail[o] = obj[o];
                                vue.ro.yonghuzhanghao = true;
                                continue;
                        }
                        if(o=='mima'){
                                vue.detail[o] = obj[o];
                                vue.ro.mima = true;
                                continue;
                        }
                        if(o=='yonghuxingming'){
                                vue.detail[o] = obj[o];
                                vue.ro.yonghuxingming = true;
                                continue;
                        }
                        if(o=='xingbie'){
                                vue.detail[o] = obj[o];
                                vue.ro.xingbie = true;
                                continue;
                        }
                        if(o=='nianling'){
                                vue.detail[o] = obj[o];
                                vue.ro.nianling = true;
                                continue;
                        }
                        if(o=='touxiang'){
                                vue.detail[o] = obj[o]?obj[o].split(",")[0]:'';
                                vue.ro.touxiang = true;
                                continue;
                        }
                        if(o=='yonghushouji'){
                                vue.detail[o] = obj[o];
                                vue.ro.yonghushouji = true;
                                continue;
                        }
                        if(o=='huiyuandengji'){
                                vue.detail[o] = obj[o];
                                vue.ro.huiyuandengji = true;
                                continue;
                        }
                        if(o=='huiyuanzhekou'){
                                vue.detail[o] = obj[o];
                                vue.ro.huiyuanzhekou = true;
                                continue;
                        }
					}
				}
				

				// 提交
				form.on('submit(*)', function(data) {
					data = data.field;
					
                    // 数据校验
                    if(!data.yonghuzhanghao){
                        layer.msg('用户账号不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.mima){
                        layer.msg('密码不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isNumber(data.huiyuanzhekou)){
                        layer.msg('会员折扣应输入数字', {
							time: 2000,
							icon: 5
						});
                        return false
                    }

					// 跨表计算判断
					
                    // 比较大小

                //更新跨表属性
               var crossuserid;
               var crossrefid;
               var crossoptnum;
                if(http.getParam('corss')){
                        var statusColumnName = localStorage.getItem('statusColumnName');
                        var statusColumnValue = localStorage.getItem('statusColumnValue');
                        if(statusColumnName!='') {
                                var obj = JSON.parse(localStorage.getItem('crossObj'));
				if(!statusColumnName.startsWith("[")) {
					for (var o in obj){
						if(o==statusColumnName){
							obj[o] = statusColumnValue;
						}
					}
					var table = localStorage.getItem('crossTable');
					http.requestJson(`${table}/update`,'post',obj,(res)=>{});
				} else {
                                       crossuserid=Number(localStorage.getItem('userid'));
                                       crossrefid=obj['id'];
                                       crossoptnum=localStorage.getItem('statusColumnName');
                                       crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
				}
                        }
                }
                        if(crossrefid && crossuserid) {
                                data.crossuserid=crossuserid;
                                data.crossrefid=crossrefid;
                                http.request('yonghu/list', 'get', {
                                        page: 1,
                                        limit: 10,
                                        crossuserid:crossuserid,
                                        crossrefid:crossrefid,
                                }, function(res) {
                                        if(res.data.total>=crossoptnum) {
                                                layer.msg(localStorage.getItem('tips'), {
                                                        time: 2000,
                                                        icon: 6
                                                })
                                             return false;
                                        } else {
                                            // 跨表计算



                                            // 提交数据
                                            http.requestJson('yonghu' + '/add', 'post', data, function(res) {
                                                    layer.msg('提交成功', {
                                                            time: 2000,
                                                            icon: 6
                                                    }, function() {
                                                            back();
                                                    });
                                             });
                                        }
                                });
                        } else {
                                // 跨表计算

                                // 提交数据
                                http.requestJson('yonghu' + '/add', 'post', data, function(res) {
                                        layer.msg('提交成功', {
                                                time: 2000,
                                                icon: 6
                                        }, function() {
                                                back();
                                        });
                                 });
                        }
			return false
			});
		});
		</script>
	</body>
</html>
