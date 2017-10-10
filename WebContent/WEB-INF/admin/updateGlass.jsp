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
<title>镜片更新页</title>
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
				<input id="glassId" type="hidden" value="${glass.glassId}"/>
				<tr class="info">
					<td>镜片类型</td>
					<td><input type="text" id="glassStyle" value="${glass.glassStyle}"/></td>
				</tr>
				<tr>
					<td>镜片名称</td>
					<td><input type="text" id="glassName" value="${glass.glassName}"/></td>
				</tr>
				<tr>
					<td>镜片价格</td>
					<td><input type="text" id="glassPrice" value="${glass.glassPrice}"/></td>
				</tr>
				<tr>
					<td>球镜超出范围价格增幅</td>
					<td><input type="text" id="sphPrice" value="${glass.sphPrice}"/></td>
				</tr>
				<tr>
					<td>柱镜超出范围价格增幅</td>
					<td><input type="text" id="cylPrice" value="${glass.cylPrice}"/></td>
				</tr>
				
				<tr>
					<td>镜片图片</td>
					<td><input id="file" type="file" name="file" title=""/></td>
				</tr>
				<tr>
					<td>颜色一</td>
					<td><input type="text" id="color1" value="${glass.color1 }"/></td>
				</tr>
				<tr>
					<td>颜色二</td>
					<td><input type="text" id="color2" value="${glass.color2 }"/></td>
				</tr>
				<tr>
					<td>颜色三</td>
					<td><input type="text" id="color3" value="${glass.color3 }"/></td>
				</tr>
				<tr>
					<td>颜色四</td>
					<td><input type="text" id="color4" value="${glass.color4 }"/></td>
				</tr>
				<tr>
					<td>颜色五</td>
					<td><input type="text" id="color5" value="${glass.color5 }"/></td>
				</tr>
				<tr>
					<td>颜色六</td>
					<td><input type="text" id="color6" value="${glass.color6 }"/></td>
				</tr>
				<tr>
					<td>颜色七</td>
					<td><input type="text" id="color7" value="${glass.color7 }"/></td>
				</tr>
				<tr>
					<td>颜色八</td>
					<td><input type="text" id="color8" value="${glass.color8 }"/></td>
				</tr>
				<tr>
					<td>颜色九</td>
					<td><input type="text" id="color9" value="${glass.color9 }"/></td>
				</tr>
				<tr>
					<td>是否选中</td>
					<td><input type="text" id="isActive" value="${glass.isActive }"/></td>
				</tr>
				<tr><td><input type="button" value="更新" id="updateGlass"/></td></tr>
				</table>
				</div>	
			</div>
	</body>
	<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="js/ajaxfileupload.js"></script>
	<script type="text/javascript">
	
	
	 $('#updateGlass').click(function(){
		 	var glassId = $('#glassId').val();
			var glassStyle=$('#glassStyle').val();
			var glassName=$('#glassName').val();
			var glassPrice=$('#glassPrice').val();
			var sphPrice=$('#sphPrice').val();
			var cylPrice=$('#cylPrice').val();
			var glassImg=$('#glassImg').attr('title');
			var isActive=$('#isActive').val();
			var color1=$('#color1').val();
			var color2=$('#color2').val();
			var color3=$('#color3').val();
			var color4=$('#color4').val();
			var color5=$('#color5').val();
			var color6=$('#color6').val();
			var color7=$('#color7').val();
			var color8=$('#color8').val();
			var color9=$('#color9').val();
				$.post('glass/updateglass',{'glassId':glassId,'glassStyle':glassStyle,'glassName':glassName,'glassPrice':glassPrice,'sphPrice':sphPrice,'cylPrice':cylPrice,'glassImg':glassImg,
						'color1':color1,'color2':color2,'color3':color3,'color4':color4,'color5':color5,'color6':color6
						,'color7':color7,'color8':color8,'color9':color9,'isActive':isActive},
						function(data) {
				 	alert("编辑成功！")
				 	if(data==1){				
						alert("更新成功！点击确定跳到品牌详情页！")
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