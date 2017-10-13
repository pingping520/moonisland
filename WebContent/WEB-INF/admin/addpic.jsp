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
<title>Insert title here</title>
<style type="text/css">
	
	#top{width:100%;height:100%;line-height:40px; text-align:center ;}
	
</style>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
</head>
<body>
<div id="top">
	<div>
		商品编号:<input type="text" name="goodsid" id="goodsid">
	</div>
	<div>
		图片1:<input type="file" name="file" id="file" title="">
	</div>
	<div>
		图片2:<input type="file" name="file1" id="file1" title="">
	</div>
	<div>
		图片3:<input type="file" name="file2" id="file2" title="">
	</div>
	<div>
		图片4:<input type="file" name="file3" id="file3" title="">
	</div>
	<div>
		<input type="button" value="添加商品图片" id="btnAdd" />
	</div>
</div>
</body>
<script type="text/javascript">
    $(
        function(){
            var btn = $('#btnAdd');
            btn.click(function() {//添加操作
                var gid= $('#goodsid').val();
                var file = $('#file').attr('title');//获取title属性值，它存储了上传图片成功后返回的图片名称
                var file1 = $('#file1').attr('title');
                var file2 = $('#file2').attr('title');
                var file3 = $('#file3').attr('title');
                //添加非空验证。提示用户要输入内容
                $.post('pic/doadd',{'goodsId':gid,'pic1':file,'pic2':file1,'pic3':file2,'pic4':file3,'pic1Thumb':file,'pic2Thumb':file1,'pic3Thumb':file2,'pic4Thumb':file3},function(data){
                    alert(data);
                    if(data==1){				
            			alert("添加成功！点击确定跳到品牌详情页！")
            			var timer = setTimeout(function(){
            				location.href = "pic/findlimit?num1=1";
            			}, 1000)
            		}
                });
            });
        }
  );
   //商品添加流程，先添加商品。 会产生商品id ， addProduct
  //调用商品图片添加功能。 addProImage
  //图片上传
    $('#file').change(function() {
		$.ajaxFileUpload({
			url:'pic/update2',//用于文件上传的服务器端请`求地址
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
			url:'pic/update2',//用于文件上传的服务器端请`求地址
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
			url:'pic/update2',//用于文件上传的服务器端请`求地址
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
 			url:'pic/update2',//用于文件上传的服务器端请`求地址
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