<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<title>商品列表管理页</title>
<style type="text/css">
   #goods{
   	width:1800px;
   	margin:100px auto;
   }
    #goods_body table tr td {
	text-align: center;
	border: 1px solid #ccc;
	height:40px;
	}
	#goods_body table .thead {
	  background: skyblue;
	}
    #good_footer{width:100%;height:60px;line-height:60px;text-align:center;}
</style>
</head>
<body>
<div id="goods">
        <div id="goods_header"><h2>MOON ISLAND&nbsp;商品列表管理页</h2></div>
        <div id="goods_body">
      
         <h3>商品在售查询</h3>
               <select name="" id="selectStatus">
                    <option value="0">下架商品</option>
                    <option value="1">在售商品</option>      
                </select>
             <button id="btn01">查询</button>
              <button id="btn02">查询全部商品</button>   
    <table>
    	 <tr class="thead">
                <td>商品编号</td>
                <td>品牌编号</td>
                <td>商品名称</td>
                <td>商品分类</td>
                <td>原价</td>
                <td>现价</td>
                <td>商品颜色</td>
                <td>商品内容</td>
                <td>浏览记录数量</td>
                <td>收藏次数</td>
                <td>销售数量</td>
                <td>商品关键字</td>
                <td>是否在售</td>
                <td>库存数量</td>
                <td>立减价格</td>
                <td>特权改价</td>
                <td>积分</td>
                <td>款式</td>
                <td>尺码A</td>
                <td>尺码B</td>
                <td>尺码C</td>
                <td>尺码D</td>
                <td>尺码E</td>
                <td>时间</td>
                <td>是否促销</td>
                <td>更新商品</td>   
                
            </tr>
        <c:forEach items="${goodslist}" var="good">
            <tr>
                <td>${good.goodsId}</td>
                <td>${good.brandId}</td>
                <td>${good.goodsName}</td>
                <td>${good.category}</td>
                <td>${good.originalPrice}</td>
                <td>${good.salesPrice}</td>
                <td>${good.goodsColor}</td>
                <td><img width=80px height=100px src="images/${good.goodsContent}" alt="" />
                ${good.goodsContent}</td>
                <td>${good.browseNum}</td>
                <td>${good.saveNum}</td>
                <td>${good.salesNum}</td>
                <td>${good.goodsKeywords}</td>
                <td>${good.isOnsale}</td>
                <td>${good.stockNum}</td>
                <td>${good.minusPrice}</td>
                <td>${good.privilege}</td>
                <td>${good.points}</td>
                <td>${good.style}</td>
                <td>${good.styleA}</td>
                <td>${good.styleB}</td>
                <td>${good.styleC}</td>
                <td>${good.styleD}</td>
                <td>${good.styleE}</td>
                <td>${good.addTime}</td>
                <td>${good.isSale}</td>    
                <td><a href="goods/toupdateGood?goodsId=${good.goodsId}">更新</a></td>
                
            </tr>
        </c:forEach>

    </table>
    </div>
        <div id="goods_footer">
        	<c:forEach var="x" begin="1" end="${count}" step="1" varStatus="st">
				<a href="goods/findAll?page=${(x-1)*10}">${x}</a>&nbsp;&nbsp;&nbsp;&nbsp;
			</c:forEach>
			共&nbsp;${count}&nbsp;页.	
        </div>
    </div>
</body>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
  
$('#btn01').click(function() {
	
    var select01=$('#selectStatus').val();
     location.href="goods/findbyselect?status="+select01+"&page=0";
  });
$('#btn02').click(function() {
	
     location.href="goods/findAll?page=0";
  });
</script>
</html>