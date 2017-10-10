var navs = [
	{
	"title": "用户管理",
	"icon": "&#xe60d;",
	"spread": true,
	"children": [{
		"title": "全部用户",
		"href": "user/list?page=0"
	},{
		"title": "白名单用户",
		"href": "user/whiteUsers?page=0"
	}]
},

{
	"title": "商品管理",
	"icon": "&#xe616",
	"spread": false,
	"children": [{
		"title": "商品信息",
		"href": "goods/findbyselect?status=1&page=0"
	},{
		"title": "添加商品",
		
		"href": "goods/toaddGood"
	}]
}, 
{
	"title": "属性管理",
	"icon": "&#xe72d;",
	"spread": false,
	"children": [{
		"title": "商品属性",
		"href": "goodsAttr/findAll"
	},{
		"title": "添加属性",
		"href": "goodsAttr/toAdd"
	}]
},

{
	"title": "镜片管理",
	"icon": "&#xe6c6;",
	"spread": false,
	"children": [{
		"title": "镜片清单",
		"href": "goodsAttr/findAll"
	},{
		"title": "添加镜片",
		"href": "goodsAttr/toAdd"
	}]
},

{
	"title": "品牌管理",
	"icon": "&#xe72c;",
	"spread": false,
	"children": [{
		"title": "商品品牌",
		"href": "brand/findAll"
	},{
		"title": "添加品牌",
		"href": "brand/toAdd"
	}]
},
{
	"title": "评论管理",
	"icon": "&#xe686;",
	"spread": false,
	"children": [{
		"title": "商品评论",
		"href": "comment/findpageComment?userid=&page=1"
	}]
},

{
	"title": "订单管理",
	"icon": "&#xe627;",
	"spread": false,
	"children": [{
		"title": "订单列表",
		"href": "order/findAll?page=0"
	},{
		"title": "退货订单",
		"href": "returnOrder/findbygoodsidpageReturn?goodsid=&page=1"
	}]
}, 

{
	"title": "关于我们",
	"icon": "&#xe62b;",
	"spread": false,
	"children": [{
		"title": "查看所有",
		"href": "about/findAll"
	},{
		"title": "添加关于我们",
		
		"href": "about/toAdd"
	}]
}, 

{
	"title": "商品图片",
	"icon": "&#xe613",
	"spread": false,
	"children": [{
		"title": "图片管理",
		"href": "goods/findbyselect?status=1&page=0"
	},{
		"title": "添加图片",
		
		"href": "goods/toaddGood"
	}]
}, 

{
	"title": "轮播图片",
	"icon": "&#xe646;",
	"href": "",
	"spread": false,
	"children": [{
		"title": "照片墙图片",
		"href": "photoWall/findAll"
	},{
		"title": "添加照片墙",
		"href": "photoWall/toAdd"
	}]
}];