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
<link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
<link rel="stylesheet" href="css/global.css" media="all">
<link rel="stylesheet" href="css/btable.css" />
<link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
<style type="text/css">
        #head{
            overflow: hidden;
            position: relative;
        }
       #main .con{ 
           left:0;
           top:30px;
       }
       #main{
        height:500px;
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
        padding:10px 5px 10px 5px;
        width:20%;
        }
        #thead tr{
        padding-left:5px;
        background:#393d49;
        color:#fff;
        }
        .table{
        margin:0px;
        border-bottom:1px solid #000000;
        }
        .table tbody tr td {
          padding:0 10px 0 10px;
           width:20%;
           height:50px;
        }
         #goods_footer{width:100%;height:60px;line-height:60px;text-align:center;
		position: relative;
	}
	  .info table,tr,td{vertical-align: middle!important;margin:0px;padding:0px;}
	   #page{position: absolute;bottom:-260px;left:40%;}
	   .upA{width:50px;height:32px;line-height:32px;text-align:center;background:#337ab7;border-radius:3px;}
	   .upA a{color:#ffffff;}
	   #wrap{overflow:hidden;}
	
</style>
</head>
<body>
<input type="hidden" id="sta" value='1${status}'>
<div style="margin: 15px;">
		<blockquote class="layui-elem-quote">
			<h1>moonisland后台管理系统</h1>
		</blockquote>

		<fieldset class="layui-elem-field">
			<legend>订单列表</legend>
			<div class="layui-field-box">
			
<div id="order">
		<div id="order_heade" class="text-center">
		</div>

		
<div id="main">
 <div id="wrap">
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
    
     <table id="${order.orderNumber}" class="table table-striped table-hover" style="vertical-align: middle!important;margin:0px;padding:0px;text-align:center;">
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
   
     
    </div>
    
    <div class="con clearfix hidd" id="con02">
       <c:forEach items="${orderlist}" var="order">
      <table id="${order.orderNumber}" class="table table-striped table-hover" style="vertical-align: middle!important;margin:0px;padding:0px;text-align:center;">
        <thead> 
           <th>
           <h4>订单编号：${order.orderNumber}</h4></th>
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
      <table id="${order.orderNumber}" class="table table-striped table-hover" style="vertical-align: middle!important;margin:0px;padding:0px;text-align:center;">
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
    
     <table id="${order.orderNumber}" class="table table-striped table-hover" style="vertical-align: middle!important;margin:0px;padding:0px;text-align:center;">
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
</div>
		
		
		<div id="paged">
			<ul class="pagination" id="page">
                <li><a href="#">&laquo;</a></li>
               <c:forEach var="x" begin="1" end="${count}" step="1" varStatus="st">
                    <c:if test="${param.page==x}">
                        <li class="active"><a href="order/findAll?page=${(x-1)*2}">${x}</a></li>
                    </c:if>
                    <c:if test="${param.page!=x}">
                        <li><a href="order/findAll?page=${(x-1)*2}">${x}</a></li>  
                    </c:if>                 
                </c:forEach>
                <li><a href="#">&raquo;</a></li>
                <li><span>共&nbsp;${count}&nbsp;页.</span></li>
            </ul> 
			<c:forEach var="x" begin="1" end="${count}" step="1" varStatus="st">
				<a href="order/findAll?page=${(x-1)*2}">${x}</a>&nbsp;&nbsp;&nbsp;&nbsp;
            </c:forEach>
			共&nbsp;${count}&nbsp;页.
		</div>
	</div>
	</div>		
				
	</fieldset>
	</div>
<%-- 	<div id="order">
		<div id="order_heade" class="text-center">
		</div>

		
<div id="main">
 <div id="wrap">
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
</div>
		
		
		<div id="goods_footer">
			<ul class="pagination" id="page">
                <li><a href="#">&laquo;</a></li>
               <c:forEach var="x" begin="1" end="${count}" step="1" varStatus="st">
                    <c:if test="${param.page==x}">
                        <li class="active"><a href="order/findAll?page=${(x-1)*2}">${x}</a></li>
                    </c:if>
                    <c:if test="${param.page!=x}">
                        <li><a href="order/findAll?page=${(x-1)*2}">${x}</a></li>  
                    </c:if>                 
                </c:forEach>
                <li><a href="#">&raquo;</a></li>
                <li><span>共&nbsp;${count}&nbsp;页.</span></li>
            </ul> 
			<c:forEach var="x" begin="1" end="${count}" step="1" varStatus="st">
				<a href="order/findAll?page=${(x-1)*2}">${x}</a>&nbsp;&nbsp;&nbsp;&nbsp;
            </c:forEach>
			共&nbsp;${count}&nbsp;页.
		</div>
	</div>--%>
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
						ht+='<td><img src="'+data[i].pic.pic1+'" style="width:50px;height:50px;"></td>'
						ht+='<td>￥'+data[i].goods.salesPrice+'</td><td>数量：'+data[i].payNum+'</td>'
						ht+='<td><div  class="upA"><a href="order/toupdateOrder?orderId='+data[i].orderId+' ">更新</a></div></td></tr>';
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