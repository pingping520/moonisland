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
<title>订单更改页</title>
<style type="text/css">
    
    #main{
        width:1500px;
        margin: 100px auto;
    }
</style>
</head>
<body>
<div id="main">
	<table>
		<tr>
			
			<td><input type="hidden" id="orderId" value="${order.orderId}" />
			订单号</td>
			<td><input type="text" id="orderNumber"
				value="${order.orderNumber}" /></td>
			<td>商品id</td>
			<td><input type="text" id="goodsId" value="${order.goodsId}" /></td>
		
			<td>镜片id</td>
			<td><input type="text" id="glassId" value="${order.glassId}" /></td>
			<td>用户id</td>
			<td><input type="text" id="userId" value="${order.userId}" /></td>
		</tr>
        <tr>	
            <td>验光单id</td>
			<td><input type="text" id="optometryId"
				value="${order.optometryId}" /></td>
		
			<td>订单状态</td>
			<td><input type="text" id="orderStatus"
				value="${order.orderStatus}" /></td>
			<td>配送情况</td>
			<td><input type="text" id="shippingStatus"
				value="${order.shippingStatus}" /></td>
			<td>支付状态</td>
			<td><input type="text" id="payStatus" value="${order.payStatus}" /></td>
		</tr>
        <tr>
			<td>收货人姓名</td>
			<td><input type="text" id="consignee" value="${order.consignee}" /></td>
			<td>收货人省份</td>
			<td><input type="text" id="province" value="${order.province}" /></td>
			<td>收货人城市</td>
			<td><input type="text" id="city" value="${order.city}" /></td>
		
			<td>收货人地区</td>
			<td><input type="text" id="district" value="${order.district}" /></td>
		</tr>
        <tr>	
            <td>收货人详细地址</td>
			<td><input type="text" id="address" value="${order.address}" /></td>
			<td>邮编</td>
			<td><input type="text" id="zipcode" value="${order.zipcode}" /></td>
		
			<td>收货人手机</td>
			<td><input type="text" id="phone" value="${order.phone}" /></td>
			<td>购买数量</td>
			<td><input type="text" id="payNum" value="${order.payNum}" /></td>
		</tr>
        <tr>	
            <td>订单金额</td>
			<td><input type="text" id="orderMoney"
				value="${order.orderMoney}" /></td>
		
			<td>留言</td>
			<td><input type="text" id="postscript"
				value="${order.postscript}" /></td>
			<td>配送方式名称</td>
			<td><input type="text" id="shippingName"
				value="${order.shippingName}" /></td>
			<td>快递单号</td>
			<td><input type="text" id="shippingNum"
				value="${order.shippingNum}" /></td>
	    </tr>
        <tr>
			<td>支付方式名称</td>
			<td><input type="text" id="payName" value="${order.payName}" /></td>
			<%--   <td>订单生成时间</td><td><input type="text" id="orderTime" value="${order.orderTime}" /></td> --%>
			<td>图片编号</td>
			<td><input type="text" id="picId" value="${order.picId}" /></td>
		
			<td>属性编号</td>
			<td><input type="text" id="attrId" value="${order.attrId}" /></td>
		</tr>
        <tr>
			<td>
				<button id="updateOrder">更改商品属性</button>
			</td>

		</tr>
	</table>
    </div>
	<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="js/ajaxfileupload.js"></script>
	<script type="text/javascript">
$('#updateOrder').click(function() {
	var optometryId=$('#optometryId').val();
	var orderStatus=$('#orderStatus').val();
	var orderId=$('#orderId').val();
	var payName=$('#payName').val();
	var orderTime=$('#orderTime').val();
	var shippingNum=$('#shippingNum').val();
    var orderNumber=$('#orderNumber').val();
    var goodsId=$('#goodsId').val();
    var glassId=$('#glassId').val();
    var userId=$('#userId').val();
    var shippingStatus=$('#shippingStatus').val();
    var payStatus=$('#payStatus').val();
    var consignee=$('#consignee').val();
    var province=$('#province').val();
    var city=$('#city').val();
    var district=$('#district').val();
    var address=$('#address').val();
    var zipcode=$('#zipcode').val();
    var phone=$('#phone').val();
    var postscript=$('#postscript').val();
    var payNum=$('#payNum').val();
    var orderMoney=$('#orderMoney').val();
    var shippingName=$('#shippingName').val();
    var shippingNum=$('#shippingNum').val();
    var payNum=$('#payNum').val();
    var picId=$('#picId').val();
    var attrId=$('#attrId').val();
    $.post('order/update', {"orderId":orderId,"payName":payName,"shippingNum":shippingNum,"optometryId":optometryId,"orderStatus":orderStatus,"orderNumber":orderNumber,"goodsId":goodsId,"glassId":glassId,"userId":userId,"shippingStatus":shippingStatus,"payStatus":payStatus,"consignee":consignee,"province":province,"city":city,"district":district,"address":address,"zipcode":zipcode,"phone":phone,"postscript":postscript,"payNum":payNum,"orderMoney":orderMoney,"shippingName":shippingName,"payNum":payNum,"picId":picId,"attrId":attrId}, 
        function(data) {
         console.log(data);   
            if(data==1){
                alert("添加成功！即将跳转到订单详情页！")
                var timer = setTimeout(function(){
                    location.href = "order/findAll?page="+0;
                }, 1000)
            }
    });
});
</script>
</body>
</html>