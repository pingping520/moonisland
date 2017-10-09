var navs = [
	{
	"title": "用户管理",
	"icon": "&#xe60d;",
	"spread": true,
	"children": [{
		"title": "用户列表",
		"href": "user/list?page=0"
	}]
},

{
	"title": "商品信息",
	"icon": "&#xe616",
	"spread": false,
	"children": [{
		"title": "商品管理",
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
		"href": "goodsAttr/add"
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
}, {
	"title": "照片管理",
	"icon": "fa-address-book",
	"href": "",
	"spread": false,
	"children": [{
		"title": "照片墙",
		"href": "photoWall/findAll"
	},{
		"title": "添加照片",
		"href": "photoWall/toAdd"
	}]
}];