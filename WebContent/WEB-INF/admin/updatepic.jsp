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
<title>品牌更新页</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<style type="text/css">
	#brand{width:100%;margin:0px auto;}
	#brand_logo{width:100%;height:60px;line-height:60px;text-align:center;}
	#brand_update div{width:100%;height:100px;margin:0px auto;text-align:center;}
	#add_pic{padding-left:44%;}
</style>
</head>
<body>
	<div id="brand">
		<div id="brand_logo">
			MOON ISLAND&nbsp;&nbsp;品牌更新页
		</div>
		<div id="brand_update">
			<input type="hidden" value="${pic.picId}" id="pid">
			
			<div>
				<p>商品编号</p>
				<p><input type="text" id="gid" value="${pic.goodsId}"/></p>
			</div>
			<div>
				<p>图片一</p>
				<p id="update_pic"><input type="file" id="file" name="file" title="${pic.pic1}"/></p>
			</div>
			<div>
				<p>图片二</p>
				<p id="update_pic"><input type="file" id="file1" name="file1" title="${pic.pic2}"/></p>
			</div>
			<div>
				<p>图片三</p>
				<p id="update_pic"><input type="file" id="file2" name="file2" title="${pic.pic3}"/></p>
			</div>
			<div>
				<p>图片四</p>
				<p id="update_pic"><input type="file" id="file3" name="file3" title="${pic.pic4}"/></p>
			</div>
			
			<div>
				<button  class="btn btn-success" id="updatepic">更新</button>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
<script type="text/javascript">
$('#updatepic').click(function() {
	var pid = $('#pid').val();
	var gid = $('#gid').val();
	var blogo1 = $('#file').attr('title');
	var blogo2 = $('#file1').attr('title');
	var blogo3 = $('#file2').attr('title');
	var blogo4 = $('#file3').attr('title');
	$.post('addpic/updatepic',{"picId":pid,"goodsId":gid,"pic1":blogo1,"pic2":blogo2,"pic3":blogo3,"pic4":blogo4,"pic1Thumb":blogo1,"pic2Thumb":blogo2,"pic3Thumb":blogo3,"pic4Thumb":blogo4}, function(data) {
		alert(data)
		if(data==1){				
			alert("更新成功！点击确定跳到品牌详情页！")
			var timer = setTimeout(function(){
				location.href = "addpic/findAll";
			}, 1000)
		}
	});
});

//上传图片
 //图片上传
    $('#file').change(function() {
		$.ajaxFileUpload({
			url:'addpic/update2',//用于文件上传的服务器端请`求地址
			//type:'post',
			secureuri:false,//一般设置为false
			fileElementId:'file',//文件上传空间的id属性  <input type="file" id="file" name="file" />
			dataType: 'text',//返回值类型 一般设置为json 自动判断
			success: function (data, status)  //服务器成功响应处理函数
			{
				console.log(data);
				alert(data.info);
				if(data!=null&&data!=""){
					$("#file").attr("title",data.info);
				}	
			},
            error: function (data, status, e)//服务器响应失败处理函数
            {
            	console.log("error data:"+data);
                alert(e);
            }		
		});
    }); 

     $('#file1').change(function() {
		$.ajaxFileUpload({
			url:'addpic/update2',//用于文件上传的服务器端请`求地址
			//type:'post',
			secureuri:false,//一般设置为false
			fileElementId:'file1',//文件上传空间的id属性  <input type="file" id="file" name="file" />
			dataType: 'text',//返回值类型 一般设置为json 自动判断
			success: function (data, status)  //服务器成功响应处理函数
			{
				console.log(data);
				alert(data.info);
				if(data!=null&&data!=""){
					$("#file1").attr("title",data.info);
				}	
			},
            error: function (data, status, e)//服务器响应失败处理函数
            {
            	console.log("error data:"+data);
                alert(e);
            }		
		});
    });
     
     $('#file2').change(function() {
		$.ajaxFileUpload({
			url:'addpic/update2',//用于文件上传的服务器端请`求地址
			//type:'post',
			secureuri:false,//一般设置为false
			fileElementId:'file2',//文件上传空间的id属性  <input type="file" id="file" name="file" />
			dataType: 'text',//返回值类型 一般设置为json 自动判断
			success: function (data, status)  //服务器成功响应处理函数
			{
				console.log(data);
				alert(data.info);
				if(data!=null&&data!=""){
					$("#file2").attr("title",data.info);
				}	
			},
            error: function (data, status, e)//服务器响应失败处理函数
            {
            	console.log("error data:"+data);
                alert(e);
            }		
		});
    });
     
     $('#file3').change(function() {
 		$.ajaxFileUpload({
 			url:'addpic/update2',//用于文件上传的服务器端请`求地址
 			//type:'post',
 			secureuri:false,//一般设置为false
 			fileElementId:'file3',//文件上传空间的id属性  <input type="file" id="file" name="file" />
 			dataType: 'text',//返回值类型 一般设置为json 自动判断
 			success: function (data, status)  //服务器成功响应处理函数
 			{
 				console.log(data);
 				alert(data.info);
 				if(data!=null&&data!=""){
 					$("#file3").attr("title",data.info);
 				}	
 			},
             error: function (data, status, e)//服务器响应失败处理函数
             {
             	console.log("error data:"+data);
                 alert(e);
             }		
 		});
     });
</script>
</html>