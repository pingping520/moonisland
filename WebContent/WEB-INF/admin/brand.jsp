<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<!DOCTYPE html>  
<html>  
<head>  
<base href="<%=basePath%>">
<meta charset="UTF-8">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>MOON ISLAND品牌管理页面</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
<link rel="stylesheet" href="css/global.css" media="all">
<link rel="stylesheet" href="css/btable.css" />
<link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
<style type="text/css">
#brand{width:100%;margin:0px auto;}
#brand_add{font-size:16px;font-weight:bold;}	
</style>
</head>
<body>
	<div style="margin: 15px;">
		<blockquote class="layui-elem-quote">
			<h1>moonisland后台管理系统</h1>
		</blockquote>
		<fieldset class="layui-elem-field">
			<legend>品牌列表</legend>
			<div class="layui-field-box">
			<div style="margin:0px; background-color: white; margin:0 10px;">
	        	<blockquote class="layui-elem-quote">
	            <button type="button" class="layui-btn layui-btn-small" id="addBrand"><i class="fa fa-plus" aria-hidden="true"></i> 添加</button>
		            <form class="layui-form" style="float:right;">
		                <div class="layui-form-item" style="margin:0;">
		                    <label class="layui-form-label">名称</label>
		                    <div class="layui-input-inline">
		                        <input type="text" name="name" placeholder="支持模糊查询.." autocomplete="off" class="layui-input">
		                    </div>
		                    <div class="layui-form-mid layui-word-aux" style="padding:0;">
		                        <button lay-filter="search" class="layui-btn" lay-submit><i class="fa fa-search" aria-hidden="true"></i> 查询</button>
		                    </div>
		                </div>
		            </form>
	        	</blockquote>
    		</div>		
				<table class="site-table table-hover" style="vertical-align: middle!important;margin:0px;padding:0px;text-align:center;">
					<thead>
						<tr>	
							<td>品牌编号</td>
							<td>品牌名称</td>
							<td>品牌图标</td>
							<td>品牌内容</td>
							<td>添加时间</td>
							<td>品牌状态</td>							
					        <td>操作</td>   
						</tr>
					</thead>
					<!--内容容器-->
					<tbody id="con">
					 <c:forEach items="${brandList}" var="brand">
					<tr>
					<td>${brand.brandId}</td>
					<td>${brand.brandName}</td>
					<td><img class="img" src="images/${brand.brandLogo}" style="width:50px;height:50px;"/></td>
					<td>${brand.brandContent}</td>
					<td>${brand.brandAddtime}</td>
					<td><input type="checkbox" id="${brand.brandId}" onchange="check(${brand.brandId})"  
					${(brand.brandStatus==1)?'checked':''} >选择</td>
					<td><p><a href="brand/toUpdate?brandId=${brand.brandId}"><button class="layui-btn layui-btn-mini">更新</button></a>
					 <!-- <a href="javascript:;" data-id="1" data-opt="del" class="layui-btn layui-btn-danger layui-btn-mini">删除</a> --></p></td>
				</tr>
				</c:forEach>
					</tbody>
				</table>		
			</div>			
		</fieldset>
	</div>	
</body>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
<script type="text/javascript" src="plugins/layui/layui.js"></script>
<script type="text/javascript" src="js/brand.js"></script>
<script type="text/javascript">
layui.use(['layer'], function () {
    var $ = layui.jquery,
        layer = layui.layer;

    //这个是点击之后才添加的。
    $('#addBrand').on('click', function () {
        var con = '<div id="brand" style="padding:10px;"><table id="brand_add">'+
            '<tr><td>品牌名称</td><td><input class="layui-input" type="text" id="bname" style="margin-bottom:5px;"/></td></tr>'+
			'<tr><td>品牌图片</td><td><input class="layui-input" type="file" id="file" name="file" title="" style="margin-bottom:5px;"/></td></tr>'+
			'<tr><td>品牌内容</td><td><input class="layui-input" type="text" id="bcontent" style="margin-bottom:5px;"/></td></tr>'+
			'</table></div>';
            
        layer.open({
            type: 1,
            title: '添加品牌',
            content: con,
            btn: ['添加', '取消'],
            area: ['350px', '250px'],
            yes: function (index, layero) {
            	var bname = $('#bname').val();
            	var bcontent = $('#bcontent').val();
            	var blogo = $('#file').attr('title');
            	$.post('brand/add',{"brandName":bname,"brandLogo":blogo,"brandContent":bcontent}, function(data) {
            		if(data==1){				
            			alert("添加成功！点击确定跳到品牌详情页！")
            			var timer = setTimeout(function(){
            				location.href = "brand/findAll";
            			}, 1000)
            		}
            	});
            },
            shade: false,
            maxmin: true
        });

    });
});


//上传图片
$('#file').change(function() {
	alert("正在上传！")
	$.ajaxFileUpload({
		url : 'brand/upload',//用于文件上传的服务器端请求地址
		secureuri : false,//一般设置为false
		fileElementId : 'file',//文件上传空间的id属性  <input type="file" id="file" name="file" />
		dataType : 'text',//返回值类型 test
		success : function(data, status) //服务器成功响应处理函数
		{
			alert(data.info)
			if (data != null && data != "") {
				$("#file").attr("title", data.info);
			}
		},
		error : function(data, status, e)//服务器响应失败处理函数
		{
			alert(e);
		}
	});
});

</script>
</html>