<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
#order_body table tr td {
	text-align: center;
	border: 1px solid #ccc;
	height:40px;
}
#order_body table .thead {
  background: skyblue;
}
</style>
</head>
<body>
	<div id="order">
		<div id="order_header">MOON ISLAND&nbsp;订单列表管理页</div>
		<div id="select">
			<table>
				<tr>
					<td>
						<h3>订单状态查询</h3>
					</td>
					<td><select name="" id="selectStatus">
							<option value="0">未确认</option>
							<option value="1">确认</option>
							<option value="2">已取消</option>
							<option value="3">退款</option>
					</select></td>
					<td>
						<button id="btn01">订单状态查询</button>
					</td>
				</tr>
				<tr>
					<td>
						<h3>发货状态查询</h3>
					</td>
					<td><select name="" id="selectShipStatus">
							<option value="0">未发货</option>
							<option value="1">已发货</option>
							<option value="2">已收货</option>
							<option value="3">退货</option>
					</select></td>
					<td>
						<button id="btn02">发货状态查询</button>
					</td>
				</tr>

				<tr>
					<td>
						<button id="btn03">查看全部订单</button>
					</td>
				</tr>
			</table>



		</div>
		<div id="order_body">
			<h3>订单记录表</h3>
			<table>
				<tr class="thead">
					<td>订单编号</td>
					<td>订单号</td>
					<td>商品id</td>
					<td>商品名称</td>
					<td>镜片id</td>
					<td>镜片名称</td>
					<td>用户id</td>
					<td>用户昵称</td>
					<td>验光单id</td>
					<td>订单状态</td>
					<td>配送情况</td>
					<td>支付状态</td>
					<!--  //订单状态（0 未确认，1 确认，2 已取消，3 退款中,4 已退款） -->
					<td>收货人姓名</td>
					<td>收货人省份</td>
					<td>收货人城市</td>
					<td>收货人地区</td>
					<td>收货人详细地址</td>
					<td>邮编</td>
					<td>收货人手机</td>
					<td>购买数量</td>
					<td>订单金额</td>
					<td>留言</td>
					<td>配送方式名称</td>
					<td>快递单号</td>
					<td>支付方式名称</td>
					<td>订单生成时间</td>
					<td>图片编号</td>
					<td>属性编号</td>
					<td>更改</td>
				</tr>
				<c:forEach items="${orderlist}" var="order">
					<tr>

						<td>${order.orderId}</td>
						<td>${order.orderNumber}</td>
						<td>${order.goodsId}</td>
						<td>${order.goods.goodsName}</td>
						<td>${order.glassId}</td>
						<td>${order.glass.glassName}</td>
						<td>${order.userId}</td>
						<td>${order.user.nickName}</td>
						<td>${order.optometryId}</td>
						<td>${order.orderStatus}</td>
						<td>${order.shippingStatus}</td>
						<td>${order.payStatus}</td>
						<td>${order.consignee}</td>
						<td>${order.province}</td>
						<td>${order.city}</td>
						<td>${order.district}</td>
						<td>${order.address}</td>
						<td>${order.zipcode}</td>
						<td>${order.phone}</td>
						<td>${order.payNum}</td>
						<td>${order.orderMoney}</td>
						<td>${order.postscript}</td>
						<td>${order.shippingName}</td>
						<td>${order.shippingNum}</td>
						<td>${order.payName}</td>
						<td>${order.orderTime}</td>
						<td>${order.picId}</td>
						<td>${order.attrId}</td>
						<td><a href="order/toupdateOrder?orderId=${order.orderId}">更新</a></td>
					</tr>
				</c:forEach>

			</table>
		</div>
		<div id="goods_footer">
			<c:forEach var="x" begin="1" end="${count}" step="1" varStatus="st">
				<a href="order/findAll?page=${(x-1)*2}">${x}</a>&nbsp;&nbsp;&nbsp;&nbsp;
            </c:forEach>
			共&nbsp;${count}&nbsp;页.
		</div>
	</div>
</body>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
  $('#btn01').click(function() {
    var select01=$('#selectStatus').val();
  	 location.href="order/findbyselect?status="+select01+"&page=0";
  });
   $('#btn02').click(function() {
    var select02=$('#selectShipStatus').val();
     location.href="order/findbyshipselect?status="+select02+"&page=0";
  });
   $('#btn03').click(function() {
	    
	     location.href="order/findAll?page=0";
	  });
</script>
</html>