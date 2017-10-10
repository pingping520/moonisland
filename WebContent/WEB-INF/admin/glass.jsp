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
<title>镜片管理页面</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<style type="text/css">
	#brand{margin:0px auto;width:100%;text-align:center;}
	#brnd_header{width:100%;height:60px;line-height:60px;}
	#brand_body{widtth:100%;height:500px;}
	#brand_footer{width:100%;height:60px;line-height:60px;text-align:center;}
	#tblnum{width:100px; height:100px;line-height:20px; margin:0 auto;}
</style>
</head>
<body>
	<div id="brand">
		<div id="brnd_header">MOON ISLAND&nbsp;镜片管理页</div>
		<div id="brand_body">
			<table class="table table-hover">
				<tr class="info">
					<td>镜片编号</td>
					<td>镜片类型</td>
                    <td>镜片名称</td>
                    <td>球镜超出范围价格增幅</td>
                    <td>柱镜超出范围价格增幅</td>
                    <td>镜片价格</td>
                    <td>镜片图片路径</td>
                    <td>镜片缩略图</td>
                    <td>添加时间</td>
                    <td>颜色一</td>
                    <td>颜色二</td>
                    <td>颜色三</td>
                    <td>颜色四</td>
                    <td>颜色五</td>
                    <td>颜色六</td>
                    <td>颜色七</td>
                    <td>颜色八</td>
                    <td>颜色九</td>
                    <td>是否被选中</td>
                    <td>添加</td>
                    <td>更新</td>
				</tr>
				<c:forEach items="${glassList}" var="glass">
					 <tr class="success">
					<td>${glass.glassId}</td>
                    <td>${glass.glassStyle}</td>
                    <td>${glass.glassName}</td>
                    <td>${glass.glassPrice}</td>
                    <td>${glass.sphPrice}</td>
                    <td>${glass.cylPrice}</td>
                    <td>${glass.glassImg}</td>
                    <td>${glass.glassImgthumb}</td>
                    <td>${glass.glassTime}</td>
                    <td>${glass.color1}</td>
                    <td>${glass.color2}</td>
                    <td>${glass.color3}</td>
                    <td>${glass.color4}</td>
                    <td>${glass.color5}</td>
                    <td>${glass.color6}</td>
                    <td>${glass.color7}</td>
                    <td>${glass.color8}</td>
                    <td>${glass.color9}</td>
                    <td><input type="checkbox" id="${glass.glassId}" onchange="check(${glass.glassId})"  
					${(glass.isActive==1)?'checked':''} >选择</td>
                    <td><a href="glass/toglass?glassId=${glass.glassId}">添加</a></td>
					<td><a href="glass/updateGlass?id=${glass.glassId}">更新</a></td>
                </tr>
				</c:forEach>
			</table>
			<table id="tblnum"><tr id="shuzi"></tr></table>
		</div>
		<div id="brand_footer">
			© YLDSHOP ALL RIGHTS RESERVED. DESIGNED BY .&nbsp;&nbsp;粤ICP备16037632号		
		</div>
	</div>
</body>
 <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
	function check(bid){
		var status;
		var ck = document.getElementById(bid);
		if(ck.checked==false){
			status = "0";
		}else{
			status = "1";
		}
		$.post('glass/statusisActive',{'isActive':status,'glassId':bid}, function(data) {
			alert("编辑成功！")
		});
	}
	$(function(){
		$.get('addglass/pagecount', function(data) {
			var tblhtml="";
			 for(var i=1;i<=data;i++){
				 tblhtml+="<td><a href='javascript:tonext("+i+")'>"+i+"</a></td>"
			 }
			 $('#shuzi').append(tblhtml);
		});
	})
	function tonext(id){
		location.href="addglass/findlimit?num1="+id+"&num2=5";
	}

</script> 
</html>