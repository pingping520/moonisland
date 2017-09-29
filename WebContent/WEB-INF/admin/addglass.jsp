<%@ page language="java" pageEncoding="UTF-8"%>
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
<title>镜片添加页</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<style type="text/css">
	#brand{width:100%;margin:0px auto;}
	#brand_logo{width:100%;height:60px;line-height:60px;text-align:center;}
	#brand_add div{width:100%;height:100px;margin:0px auto;text-align:center;}
	#add_pic{padding-left:44%;}
</style>
</head>
<body>
	<div id="brand">
		<div id="brand_logo">
			MOON ISLAND&nbsp;&nbsp;品牌添加页
		</div>
		<div id="brand_add">
			<div>
				<p>镜片类型</p>
				<p><input type="text" id="gstyle"/></p>
			</div>
			<div>
				<p>镜片名称</p>
				<p><input type="text" id="gname"/></p>
			</div>
			<div>
				<p>球镜超出范围价格增幅</p>
				<p><input type="text" id="gsph"/></p>
			</div>
			<div>
				<p>柱镜超出范围价格增幅</p>
				<p><input type="text" id="gcyl"/></p>
			</div>
			<div>
				<p>镜片价格</p>
				<p><input type="text" id="gprice"/></p>
			</div>
			<div>
				<p>镜片图片</p>
				<p id="add_pic"><input type="file" id="file" name="file" title=""/></p>
			</div>
			<div>
				<p>颜色一</p>
				<p><input type="text" id="gcolor1"/></p>
			</div>
			<div>
				<p>颜色二</p>
				<p><input type="text" id="gcolor2"/></p>
			</div>
			<div>
				<p>颜色三</p>
				<p><input type="text" id="gcolor3"/></p>
			</div>
			<div>
				<p>颜色四</p>
				<p><input type="text" id="gcolor4"/></p>
			</div>
			<div>
				<p>颜色五</p>
				<p><input type="text" id="gcolor5"/></p>
			</div>
			<div>
				<p>颜色六</p>
				<p><input type="text" id="gcolor6"/></p>
			</div>
			<div>
				<p>颜色七</p>
				<p><input type="text" id="gcolor7"/></p>
			</div>
			<div>
				<p>颜色八</p>
				<p><input type="text" id="gcolor8"/></p>
			</div>
			<div>
				<p>颜色九</p>
				<p><input type="text" id="gcolor9"/></p>
			</div>
			<div>
				<p>镜片时间</p>
				<p><input type="text" id="gtime"/></p>
			</div>
			<div>
				<button  class="btn btn-success" id="addGlass">添加品牌</button>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
<script type="text/javascript">
$('#addGlass').click(function() {
	var gstyle = $('#gstyle').val();
	var gname = $('#gname').val();
	var gsph = $('#gsph').val();
	var gcyl = $('#gcyl').val();
	var gprice = $('#gprice').val();
	var blogo = $('#file').attr('title');
	var gcolor1 = $('#gcolor1').val();
	var gcolor2 = $('#gcolor2').val();
	var gcolor3 = $('#gcolor3').val();
	var gcolor4 = $('#gcolor4').val();
	var gcolor5 = $('#gcolor5').val();
	var gcolor6 = $('#gcolor6').val();
	var gcolor7 = $('#gcolor7').val();
	var gcolor8 = $('#gcolor8').val();
	var gcolor9 = $('#gcolor9').val();
	var gtime = $('#gtime').val();
	$.post('glass/addglass',{"glassStyle":gstyle,"glassName":gname,"sphPrice":gsph,
	"cylPrice":gcyl,"glassPrice":gprice,"glassImg":blogo,"color1":gcolor1,
	"color2":gcolor2,"color3":gcolor3,"color4":gcolor4,"color5":gcolor5,"color6":gcolor6,
	"color7":gcolor7,"color8":gcolor8,"color9":gcolor9,"glassTime":gtime}, function(data) {
		alert(data)
		if(data==1){				
			alert("添加成功！点击确定跳到品牌详情页！")
			var timer = setTimeout(function(){
				location.href = "glass/findAllGlass";
			}, 1000)
		}
	});
});

//上传图片
$('#file').change(function() {
	$.ajaxFileUpload({
		url : 'glass/upload',//用于文件上传的服务器端请求地址
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