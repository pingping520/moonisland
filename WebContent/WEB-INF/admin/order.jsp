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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Title</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">


        #head{
            overflow: hidden;
            position: relative;
            background:#cccccc;
        }
       #main .con{
          
           left:0;
           top:30px;
       }
        .show{
            display: block;
        }
        .hidd{
            display: none;
        }
         .f1{
            padding: 5px;
              font-weight: bold;
        }
       #thead tr th {
        padding:0px;
        }
        #thead tr{
        background:#393d49;
        color:#fff;
        }
        .table{
        margin:0px;
        border-bottom:1px solid #000000;
        }
        .table tbody tr td {
        padding:0px;
        }
</style>
</head>
<body>
<input type="hidden" id="sta" value='1${status}'>
	<div id="order">
		<div id="order_heade" class="text-center"><h3>MOON ISLAND&nbsp;订单列表管理页</h3>	
		</div>

		
<div id="main">
    <div id="head">
   
        <div id="d00" class="pull-left f1">全部订单 </div>
        <div id="d01" class="pull-left f1">未发货</div>
        <div id="d02" class="pull-left f1">已发货</div>
        <div id="d03" class="pull-left f1">已收货</div>
        <div id="d04" class="pull-left f1">退货 </div>
    </div>
    
    <div class="con clearfix show" id="con00">
       <c:forEach items="${orderlist}" var="order">
      <table id="${order.orderNumber}" class="table table-striped table-hover">
        <thead  id="thead"> 
        <tr>
           <th><h6>订单编号：${order.orderNumber}</h6></th>
           <th><h6>收货人姓名:${order.consignee}</h6></th>
           <th><h6>收货人手机:${order.phone}</h6></th>
           <th><h6><span onClick=detail(${order.orderNumber},this)>查看详情</span></h6></th>
           <th></th>
        </tr>
       </thead>
    </table>    
    </c:forEach>   
    </div>
    
    <div class="con clearfix hidd" id="con01" > 			
    <c:forEach items="${orderlist}" var="order">
    
     <table id="${order.orderNumber}" class="table table-striped table-hover">
        <thead> 
        <tr>
           <th><h6>订单编号：${order.orderNumber}</h6></th>
           <th><h6>收货人姓名:${order.consignee}</h6></th>
           <th><h6>收货人手机:${order.phone}</h6></th>
           <th><h6><span  onClick=detail(${order.orderNumber},this)>查看详情</span></h6></th>
           <th></th>
          </tr>
       </thead>
      
     
     </table>    
   
    </c:forEach>   
   
     <%-- <table class="table table-striped table-hover">
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

			</table> --%>
    </div>
    
    <div class="con clearfix hidd" id="con02">
       <c:forEach items="${orderlist}" var="order">
      <table id="${order.orderNumber}" class="table table-striped table-hover">
        <thead> 
           <th><h4>订单编号：${order.orderNumber}</h4></th>
           <th>收货人姓名:${order.consignee}</th>
           <th>收货人手机:${order.phone}</th>
           <th><span  onClick=detail(${order.orderNumber},this)>查看详情</span></th>
           <th></th>
       </thead>
    </table>    
    </c:forEach>   
    </div>
    
    <div class="con clearfix hidd" id="con03">
       <c:forEach items="${orderlist}" var="order">
      <table id="${order.orderNumber}" class="table table-striped table-hover">
        <thead> 
           <th><h4>订单编号：${order.orderNumber}</h4></th>
           <th>收货人姓名:${order.consignee}</th>
           <th>收货人手机:${order.phone}</th>
           <th><span  onClick=detail(${order.orderNumber},this)>查看详情</span></th>
           <th></th>
       </thead>
     </table>    
      </c:forEach>   
    </div>
    
    <div class="con clearfix hidd" id="con04">
       <c:forEach items="${orderlist}" var="order">
    
     <table id="${order.orderNumber}" class="table table-striped table-hover">
        <thead> 
           <th><h4>订单编号：${order.orderNumber}</h4></th>
           <th>收货人姓名:${order.consignee}</th>
           <th>收货人手机:${order.phone}</th>
           <th><span  onClick=detail("${order.orderNumber}",this)>查看详情</span></th>
           <th></th>
       </thead>       
     </table>    
   
    </c:forEach>   
    </div>

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
//选中值的背景颜色
var status=$('#sta').val(); 

  if(status==10){
	  $('#d01').css("background","#1aa094");
  }
  else if(status==11){
	  $('#d02').css("background","#1aa094");
  }
  else if(status==12){
	  $('#d03').css("background","#1aa094");
  }
  else  if(status==13){
	  $('#d04').css("background","#1aa094");
  }else if(status==1){
	   $('#d00').css("background","#1aa094");
	  
  } 

	  function detail(ordernumber,obj){
		 
			if($(obj).html()=='查看详情'){
				var tab=$("#"+ordernumber);
				var ht='<tbody>';
				$.get("order/oneorder?number="+ordernumber, function(data) {
					for (var i = 0; i < data.length; i++) {
						ht+='<tr><td>'+data[i].goods.goodsName+'</td>'
						ht+='<td>'+data[i].goods.goodsContent+'</td>'
						ht+='<td>￥'+data[i].goods.salesPrice+'</td><td>数量：'+data[i].payNum+'</td>'
						ht+='<td><a href="order/toupdateOrder?orderId='+data[i].orderId+'">更新</a></td></tr>';
					};
					ht+='</tbody>';
					tab.append(ht)
					$(obj).html("收起")
				});
					
				}else{
					$("#"+ordernumber+" tbody").remove() 
					$(obj).html("查看详情")
				}
	  }
	  
  $('#d00').click(function(){
	    $('#con00').attr("class","con clearfix show");
        $('#con01').attr("class","con clearfix hidd");
        $('#con02').attr("class","con clearfix hidd");
        $('#con03').attr("class","con clearfix hidd");
        $('#con04').attr("class","con clearfix hidd");
        location.href="order/findAll?page=0";
    })
    $('#d01').click(function(){
    	 $('#con00').attr("class","con clearfix hidd");
        $('#con01').attr("class","con clearfix show");
        $('#con02').attr("class","con clearfix hidd");
        $('#con03').attr("class","con clearfix hidd");
        $('#con04').attr("class","con clearfix hidd");
        location.href="order/findbyshipselect?status=0&page=0";
    })
    $('#d02').click(function(){
    	$('#con00').attr("class","con clearfix hidd");
        $('#con02').attr("class","con clearfix show");
        $('#con01').attr("class","con clearfix hidd");
        $('#con03').attr("class","con clearfix hidd");
        $('#con04').attr("class","con clearfix hidd");
        location.href="order/findbyshipselect?status=1&page=0";
    })
    $('#d03').click(function(){
    	$('#con00').attr("class","con clearfix hidd");
        $('#con03').attr("class","con clearfix show");
        $('#con01').attr("class","con clearfix hidd");
        $('#con02').attr("class","con clearfix hidd");
        $('#con04').attr("class","con clearfix hidd");
        location.href="order/findbyshipselect?status=2&page=0";
    })
    $('#d04').click(function(){
    	$('#con00').attr("class","con clearfix hidd");
        $('#con04').attr("class","con clearfix show");
        $('#con01').attr("class","con clearfix hidd");
        $('#con03').attr("class","con clearfix hidd");
        $('#con02').attr("class","con clearfix hidd");
        location.href="order/findbyshipselect?status=3&page=0";
    })
    
   
</script>
</html>