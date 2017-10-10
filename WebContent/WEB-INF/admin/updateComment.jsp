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
<title>商品评论页</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<style type="text/css">
	#brand{margin:0px auto;width:100%;text-align:center;}
	#brnd_header{width:100%;height:60px;line-height:60px;}
	#brand_body{width:600px;height:500px;margin:0 auto;}
	#brand_footer{width:100%;height:60px;line-height:60px;text-align:center;}
	#addpage{text-align:center;}
	#file,#file2,#file3{margin-left:100px;}
</style>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
</head>
<body>
	<div id="brand">
		<div id="brnd_header">MOON ISLAND&nbsp;商品评论更新页</div>
		<div id="brand_body">
			<table class="table table-hover">
				<tr class="info">
					<td>评论编号</td>
					<td>${comment.commentId}</td>
				</tr>
				<tr>
					<td>商品编号</td>
					<td>${comment.goodsId}</td>
				</tr>
				<tr>
					<td>用户编号</td>
					<td>${comment.user.userId}</td>
				</tr>
				<tr>
					<td>订单编号</td>
					<td>${comment.orderId}</td>
				</tr>
				<tr>
					<td>商品评论文字</td>
					<td>
						<textarea rows="3" cols="20" id="word">
							${comment.commentContentword}
						</textarea>
					</td>
				</tr>
				<tr>
					<td>商品评论图片</td>
					<td><input id="file" type="file" name="file" title=""/>
						<input id="file2" type="file" name="file2" title=""/>
						<input id="file3" type="file" name="file3" title=""/></td>
				</tr>
				<tr>
					<td>商品质量星级</td>
					<td><input id="guarantee" type="text" value="${comment.guarantee}"/></td>
				</tr>
				<tr>
					<td>服务态度星级</td>
					<td><input id="server" type="text" value="${comment.server}"/></td>
				</tr>
				<tr>
					<td>物流态度星级</td>
					<td><input id="logistics" type="text" value="${comment.logistics}"/></td>
				</tr>
				<tr><td colspan="2"><input type="button" value="提交" onclick="update(${comment.commentId})"/></td></tr>
			</table>
		</div>
	</div>
	
	<script type="text/javascript">
		function update(id){
			
			var word=$('#word').val();
			var file="";
			var file1=$('#file').attr('title');
			var file2=$('#file2').attr('title');
			var file3=$('#file3').attr('title');
			if(file1!="" &&file1!=null){file+=file1;}
			if(file2!="" &&file2!=null){file+="|"+file2;}
			if(file3!="" &&file3!=null){file+="|"+file3;}
			var guarantee=$('#guarantee').val();
			var server=$('#server').val();
			var logistics=$('#logistics').val();
			$.post('comment/updateComment',{'commentContentword':word,'commentContentimg':file,'guarantee':guarantee,'server':server,'logistics':logistics,'commentId':id}, function(data) {
				alert("编辑成功！")
			});
		}
	    $('#file').change(function() {
	    	$.ajaxFileUpload({
	    		url : 'comment/uploadsComment',//用于文件上传的服务器端请求地址
	    		secureuri : false,//一般设置为false
	    		fileElementId : 'file',//文件上传空间的id属性  <input type="file" id="file" name="file" />
	    		dataType : 'text',//返回值类型 test
	    		success : function(data, status) //服务器成功响应处理函数
	    		{
	    			if (data != null && data != "") {
	    				$("#file").attr("title", data.info);
	    			}
	    		},
	    		error : function(data, status, e)//服务器响应失败处理函数
	    		{alert(e);}
	    	});
	    });
	    $('#file2').change(function() {
	    	$.ajaxFileUpload({
	    		url : 'comment/uploadsComment',//用于文件上传的服务器端请求地址
	    		secureuri : false,//一般设置为false
	    		fileElementId : 'file2',//文件上传空间的id属性  <input type="file" id="file" name="file" />
	    		dataType : 'text',//返回值类型 test
	    		success : function(data, status) //服务器成功响应处理函数
	    		{
	    			if (data != null && data != "") {
	    				$("#file2").attr("title", data.info);
	    			}
	    		},
	    		error : function(data, status, e)//服务器响应失败处理函数
	    		{alert(e);}
	    	});
	    });
	    $('#file3').change(function() {
	    	$.ajaxFileUpload({
	    		url : 'comment/uploadsComment',//用于文件上传的服务器端请求地址
	    		secureuri : false,//一般设置为false
	    		fileElementId : 'file3',//文件上传空间的id属性  <input type="file" id="file" name="file" />
	    		dataType : 'text',//返回值类型 test
	    		success : function(data, status) //服务器成功响应处理函数
	    		{
	    			if (data != null && data != "") {
	    				$("#file3").attr("title", data.info);
	    			}
	    		},
	    		error : function(data, status, e)//服务器响应失败处理函数
	    		{alert(e);}
	    	});
	    });

	</script>
</body>
</html>