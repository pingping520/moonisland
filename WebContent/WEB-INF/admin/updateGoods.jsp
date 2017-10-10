<%@ page language="java" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>更新商品页</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
#main {
  font-size:16px;
}
    table{
    margin:0 auto;
    }
table tr td{

  padding:15px;
}
table tr td:first-child{
 text-align:right;
}
table tr td input{
 width:800px;
 height:30px;
 }
</style>
</head>
<body>
	<div id="main">
		
		<input type="hidden" value="${good.goodsId}" id="gid">
		<table>
			<tr>
				<td>品牌编号</td>
				<td><input type="text" id="brandid" name="brandid"
								value="${good.brandId}" />
				
				</td>
			</tr>
			<tr>
				<td>商品名称
				</td>
				<td>
				<input type="text" id="goodsname" name="goodsname"
								value="${good.goodsName}" />
					
				</td>
			</tr>
			<tr>
				<td>商品分类
				</td><td>
				<input type="hidden" id="category" name="category"
								value="${good.category}" /> <select name="category"
								id="category1">
								<option value="1">太阳镜</option>
								<option value="2">男士眼镜</option>
								<option value="3">女士眼镜</option>
							</select>	
				</td>
			</tr>
			<tr>
				<td>原价</td>
				<td>
				<input type="text" id="originalprice" name="originalprice"
								value="${good.originalPrice}" />
				</td>
			</tr>
			<tr>
				<td>现价</td>
				<td><input type="text" id="salesprice" name="salesprice"
								value="${good.salesPrice}" />
				</td>
			</tr>
			<tr>
				<td>商品颜色</td>
				<td><input type="text" id="goodscolor" name="goodscolor"
								value="${good.goodsColor}" />
					
				</td>
			</tr>
			<tr>
				<td>商品内容</td>
				<td><input type="file" id="file" name="file" title="${good.goodsContent}"/></td>
			</tr>
			
			<tr>
				<td>浏览记录数量</td>
				<td><input type="text" id="browsenum" name="browsenum"
								value="${good.browseNum}" />
				</td>
		</tr>
		<tr>
				<td>收藏次数</td>
				<td><input type="text" id="savenum" name="savenum"
								value="${good.saveNum}" />
					
				</td>
			</tr>
			<tr>
				<td>销售数量</td>
				<td>
							<input type="text" id="salesnum" name="salesnum"
								value="${good.salesNum}" /> 
					
				</td>
			</tr>
			<tr>
				<td>
					商品关键字</td>
					<td>
							<input type="text" id="goodskeywords" name="goodskeywords"
								value="${good.goodsKeywords}" />		
					
				</td>
			</tr>
			<tr>
				<td>是否在售</td>
				<td>
							<input type="hidden" id="isonsale" name="isonsale"
								value="${good.isOnsale}" /> <select name="isonsale1"
								id="isonsale1">
								<option value="1">在售商品</option>
								<option value="0">下架商品</option>
							</select>
					
				</td>
			</tr>
			<tr>

				<td>库存数量</td>
				<td>
							<input type="text" id="stocknum" name="stocknum"
								value="${good.stockNum}" />
					
				</td>
			</tr>
			<tr>
				<td>立减价格</td>
				<td>
							<input type="text" id="minusprice" name="minusprice"
								value="${good.minusPrice}" />
					
				</td>
			</tr>
			<tr>
				<td>特权改价</td>
				<td>
							<input type="text" id="privilege" name="privilege"
								value="${good.privilege}" />
					
				</td>
			</tr>
			<tr>
				<td>是否参加积分活动</td>
				<td><input type="hidden" id="points" name="points"
								value="${good.points}" /> <select name="points" id="points1">
								<option value="0">参加</option>
								<option value="1">不参加</option>
							</select>

				</td>
			</tr>
			<tr>
				<td>款式</td>
				<td><input type="text" id="style" name="style" value="${good.style}" /></td>
			</tr>
			<tr>
				<td>尺码A</td>
				<td><input type="text" id="stylea" name="stylea"
								value="${good.styleA}" />
				
				</td>
			</tr>
			<tr>
				<td>尺码B</td>
				<td><input type="text" id="styleb" name="styleb"
								value="${good.styleB}" />
				</td>
			</tr>
			<tr>
				<td>尺码C</td>
				<td><input type="text" id="stylec" name="stylec"
								value="${good.styleC}" />
				
				</td>
			</tr>
			<tr>
				<td>尺码D</td>
				<td>
					<input type="text" id="styled" name="styled"
								value="${good.styleD}" />
				</td>
			</tr>
			<tr>
				<td>尺码E</td>
				<td><input type="text" id="stylee" name="stylee"
								value="${good.styleE}" />
			   </td>
			</tr>
			<tr>
				<td>是否促销</td>
						<td>
							<input type="hidden" id="issale" name="issale"
								value="${good.isSale}" /> 
							<select name="issale" id="issale1">
								<option value="0">促销</option>
								<option value="1">未促销</option>
							</select>
				</td>
			</tr>
			<tr>
				<td></td>
				<td><button class="btn btn-success" id="updateGoods">更改商品属性</button></td>
			</tr>
		</table>


</div>
	
</body>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
<script type="text/javascript">
	
	var category1 = $('#category').val();
	document.getElementById("category1").value = category1;

	var points1 = $('#points').val();
	document.getElementById("points1").value = points1;

	var issale1 = $('#issale').val();
	document.getElementById("issale1").value = issale1;

	var isonsale1 = $('#isonsale').val();
	document.getElementById("isonsale1").value = isonsale1;

	$("#updateGoods").click(function() {
		var goodid = $('#gid').val();
		var brandid = $('#brandid').val();
		var goodsname = $('#goodsname').val();
		var category = $('#category').val();
		var originalprice = $('#originalprice').val();
		var salesprice = $('#salesprice').val();
		var goodscolor = $('#goodscolor').val();
		var goodscontent = $('#file').attr('title');
		var browsenum = $('#browsenum').val();
		var savenum = $('#savenum').val();
		var salesnum = $('#salesnum').val();
		var goodskeywords = $('#goodskeywords').val();
		var isonsale = $('#isonsale').val();
		var stocknum = $('#stocknum').val();
		var minusprice = $('#minusprice').val();
		var privilege = $('#privilege').val();
		var points = $('#points').val();
		var style = $('#style').val();
		var stylea = $('#stylea').val();
		var styleb = $('#styleb').val();
		var stylec = $('#stylec').val();
		var styled = $('#styled').val();
		var stylee = $('#stylee').val();
		//var addtime=$('#addtime').val();
		var issale = $('#issale').val();
		$.post('goods/update', {
			"goodsId" : goodid,
			"brandId" : brandid,
			"goodsName" : goodsname,
			"category" : category,
			"originalPrice" : originalprice,
			"salesPrice" : salesprice,
			"goodsColor" : goodscolor,
			"goodsContent" : goodscontent,
			"browseNum" : browsenum,
			"saveNum" : savenum,
			"salesNum" : salesnum,
			"goodsKeywords" : goodskeywords,
			"isOnsale" : isonsale,
			"stockNum" : stocknum,
			"minusPrice" : minusprice,
			"privilege" : privilege,
			"points" : points,
			"style" : style,
			"styleA" : stylea,
			"styleB" : styleb,
			"styleC" : stylec,
			"styleD" : styled,
			"styleE" : stylee,
			"isSale" : issale
		}, function(data) {
			console.log(data);
			if (data == 1) {
				alert("添加成功！即将跳转到商品详情页！")
				var timer = setTimeout(function() {
					location.href = "goods/findAll?page=" + 0;
				}, 1000)
			}

		});

	});
	//上传图片
	$('#file').change(function() {
		$.ajaxFileUpload({
			url : 'goods/upload',//用于文件上传的服务器端请求地址
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