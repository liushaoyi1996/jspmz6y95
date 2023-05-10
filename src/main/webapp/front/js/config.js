
var projectName = '基于SSM框架的KTV管理系统';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
]


var indexNav = [

{
	name: '包间信息',
	url: './pages/baojianxinxi/list.jsp'
}, 
{
	name: '餐品信息',
	url: './pages/canpinxinxi/list.jsp'
}, 

{
	name: '系统公告',
	url: './pages/news/list.jsp'
},
]

var adminurl =  "http://localhost:8080/jspmz6y95/index.jsp";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-similar","buttons":["新增","查看","修改","删除","首页总数","首页统计"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"appFrontIcon":"cuIcon-discover","buttons":["新增","查看","修改","删除","首页总数","首页统计"],"menu":"包间信息","menuJump":"列表","tableName":"baojianxinxi"}],"menu":"包间信息管理"},{"child":[{"appFrontIcon":"cuIcon-addressbook","buttons":["新增","查看","修改","删除"],"menu":"餐品信息","menuJump":"列表","tableName":"canpinxinxi"}],"menu":"餐品信息管理"},{"child":[{"appFrontIcon":"cuIcon-pay","buttons":["新增","查看","修改","删除"],"menu":"餐品分类","menuJump":"列表","tableName":"canpinfenlei"}],"menu":"餐品分类管理"},{"child":[{"appFrontIcon":"cuIcon-present","buttons":["查看","修改","删除","审核","首页统计"],"menu":"包间预订","menuJump":"列表","tableName":"baojianyuding"}],"menu":"包间预订管理"},{"child":[{"appFrontIcon":"cuIcon-album","buttons":["查看","修改","删除","审核","首页统计"],"menu":"点餐订单","menuJump":"列表","tableName":"diancandingdan"}],"menu":"点餐订单管理"},{"child":[{"appFrontIcon":"cuIcon-similar","buttons":["新增","查看","修改","删除"],"menu":"会员等级","menuJump":"列表","tableName":"huiyuandengji"}],"menu":"会员等级管理"},{"child":[{"appFrontIcon":"cuIcon-keyboard","buttons":["查看","修改"],"menu":"系统简介","tableName":"systemintro"},{"appFrontIcon":"cuIcon-shop","buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"},{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"系统公告","tableName":"news"},{"appFrontIcon":"cuIcon-vipcard","buttons":["查看","修改"],"menu":"关于我们","tableName":"aboutus"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-qrcode","buttons":["查看","包间预订"],"menu":"包间信息列表","menuJump":"列表","tableName":"baojianxinxi"}],"menu":"包间信息模块"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","点餐"],"menu":"餐品信息列表","menuJump":"列表","tableName":"canpinxinxi"}],"menu":"餐品信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-present","buttons":["查看","删除","支付"],"menu":"包间预订","menuJump":"列表","tableName":"baojianyuding"}],"menu":"包间预订管理"},{"child":[{"appFrontIcon":"cuIcon-album","buttons":["查看","删除","支付"],"menu":"点餐订单","menuJump":"列表","tableName":"diancandingdan"}],"menu":"点餐订单管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-qrcode","buttons":["查看","包间预订"],"menu":"包间信息列表","menuJump":"列表","tableName":"baojianxinxi"}],"menu":"包间信息模块"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","点餐"],"menu":"餐品信息列表","menuJump":"列表","tableName":"canpinxinxi"}],"menu":"餐品信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
