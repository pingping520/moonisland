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
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
<link rel="stylesheet" href="css/global.css" media="all">
<link rel="stylesheet" href="css/btable.css" />
<link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
<style type="text/css">
	#brand{margin:0px auto;width:100%;text-align:center;}
	#brnd_header{width:100%;height:60px;line-height:60px;}
	#brand_body{widtth:100%;height:500px;}
	#brand_footer{width:100%;height:60px;line-height:60px;text-align:center;}
	#tblnum{width:100px; height:100px;line-height:20px; margin:0 auto;}
	 #user_footer{width:100%;height:60px; position: relative; } 
</style>
</head>
<body>
	<div style="margin: 15px;">
		<blockquote class="layui-elem-quote">
			<h1>moonisland后台管理系统</h1>
		</blockquote>

		<fieldset class="layui-elem-field">
			<legend>镜片列表</legend>
			<div class="layui-field-box">

			<div style="margin:0px; background-color: white; margin:0 10px;">
	        	<blockquote class="layui-elem-quote">
	            <button type="button" class="layui-btn layui-btn-small" id="getAll"><i class="fa fa-plus" aria-hidden="true"></i> 添加</button>
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
                           <td style="width:117px;">操作</td>   
						</tr>
					</thead>
					<!--内容容器-->
					<tbody id="con">
					<c:forEach items="${glassList}" var="glass">
					 <tr class="success">
					<td>${glass.glassId}</td>
                    <td>${glass.glassStyle}</td>
                    <td>${glass.glassName}</td>
                    <td>${glass.glassPrice}</td>
                    <td>${glass.sphPrice}</td>
                    <td>${glass.cylPrice}</td>
                    <td  style="width:200px;">${glass.glassImg}</td>
                    <td  style="width:200px;">${glass.glassImgthumb}</td>
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
                    <td><a href="glass/toglass?glassId=${glass.glassId}" class="layui-btn layui-btn-mini">添加</a><a href="glass/updateGlass?id=${glass.glassId}" class="layui-btn layui-btn-mini">更新</a></td>
                </tr>
				</c:forEach>
					</tbody>
				</table>
				<div id="user_footer" class="container">
				<ul class="pagination" id="page">
					<li><a href="javascript:last()">&laquo;</a></li>
					<c:forEach var="x" begin="1" end="${count}" step="1" varStatus="st">
						<c:if test="${param.num1==x}">
							<li class="active"><a href="glass/findlimit?num1=${x}">${x}</a></li>
						</c:if>
						<c:if test="${param.num1!=x}">
							<li><a href="glass/findlimit?num1=${x}">${x}</a></li>	
						</c:if>					
					</c:forEach>
					<li><a href="javascript:next()">&raquo;</a></li>
					<li><span>共&nbsp;${count}&nbsp;页.</span></li>
				</ul>	
			</div>
		</div>			
	</fieldset>
	</div>
	

	
</body>
 <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript">


	function last(){
		var a=$('.active').children().text();
		if(a>1){
			a=a-1;
			location.href="glass/findlimit?num1="+a;
		}
	} 
	function next(){
		var a=$('.active').children().text();
		var pagenum=$('#page').children('li').length;
		var b=parseInt(a);
		if(a<pagenum-3){
			b=b+1;
			location.href="glass/findlimit?num1="+b;
		}
	} 

	
	
	
	function addglass(){
		location.href="glass/toglass";
	}
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

	
	/* $(function(){
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
	}  */
	
	//添加
	$('#getAll').on('click',function(){
		alert("跳到哪里");
		location.href="";
	})



</script> 
</html>