<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>运动商品销售网站</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="./css/indexstyle.css">
	<link rel="stylesheet" type="text/css" href="./css/swiper.min.css">
	<script type="text/javascript" src="./js/swiper.min.js"></script>
  </head>
  
  <body style="background-image: url('./image/3.jpg');background-size: cover;">
  	<div class="body">
    	<div class="index1">
    		<a href="index.jsp" style="text-decoration:none;color: red">运动商品销售网</a>
    	</div>
    	<div class="index2">
    		<form action="goodServlet?do=select" method="post"> 
    			<input style="width: 400px;height: 30px;" type="text" name="select">
    			<input style="width: 70px;height: 30px;" type="submit" value="搜索" >
			</form>
    	</div>
    	<div class="index3">
    		<a href="index.jsp" style="text-decoration:none;color: white;font-weight: bold">全部商品分类</a>
    	</div>
    	<div class="index4">
    		<a href="index.jsp" style="text-decoration:none;color: white;font-weight: bold">&nbsp;首页&nbsp;</a>
    		<a href="sellinggoods.jsp" style="text-decoration:none;color: white;font-weight: bold">&nbsp;热销商品&nbsp;</a>
    		<a href="sellinggoods.jsp" style="text-decoration:none;color: white;font-weight: bold">&nbsp;折扣商品&nbsp;</a>
    		<c:if test="${MemberID==null}">
    		<a href="goodServlet?do=shopcar" style="text-decoration:none;color: white;font-weight: bold">&nbsp;购物车&nbsp;</a>
    		<a href="goodServlet?do=shopcar" style="text-decoration:none;color: white;font-weight: bold">&nbsp;我的信息&nbsp;</a>
    		</c:if>
    		<c:if test="${MemberID!=null}">
    		<a href="goodServlet?do=shopcar&memberID=${MemberID }" style="text-decoration:none;color: white;font-weight: bold">&nbsp;购物车&nbsp;</a>
    		<a href="mymessage.jsp" style="text-decoration:none;color: white;font-weight: bold">&nbsp;我的信息&nbsp;</a>
    		</c:if>
    		<a href="news.jsp" style="text-decoration:none;color: white;font-weight: bold">&nbsp;新闻资讯&nbsp;</a>
    	</div>
    	<div class="index5">
    		<a href="Basketball.jsp" style="text-decoration:none;">篮球</a><br>
    		<a href="football.jsp" style="text-decoration:none;">足球</a><br>
    		<a href="volleyball.jsp" style="text-decoration:none;">排球</a><br>
    		<a href="pingpong.jsp" style="text-decoration:none;">乒乓球</a><br>
    		<a href="tennis.jsp" style="text-decoration:none;">网球</a><br>
    		<a href="badminton.jsp" style="text-decoration:none;">羽毛球</a><br>
    		<a href="baseball.jsp" style="text-decoration:none;">棒球</a><br>
    	</div>
    	<div class="index6">
    <div class="swiper-container" style="height:100%">
        <div class="swiper-wrapper">
            <div class="swiper-slide"><img src="image/shouye1.jpg"></div>
            <div class="swiper-slide"><img src="image/shouye2.jpg"></div>
            <div class="swiper-slide"><img src="image/shouye3.jpg"></div>
            <div class="swiper-slide"><img src="image/shouye4.jpg"></div>
        </div>
        <!-- Add Pagination -->
        <div class="swiper-pagination"></div>
    </div>
    	</div>
    	<div class="index7">
    		<div style="background-image: url('./image/6.jpg');float: left;width: 200px;height: 200px;">
    		</div>
    		<div style="width: 200px;height: 100px;float: left;margin-top: 20px">
    			<c:if test="${MemberID==null}">
    				Hi！你好<br>
    				欢迎来到运动商品销售网
    				<input style="width: 60px;height: 30px;" type="button" onclick="window.location.href=
    				'userlogin.jsp'" class="submit" value="登 录">&nbsp;&nbsp;&nbsp;
    				<input style="width: 60px;height: 30px;" type="button" onclick="window.location.href=
    				'userregister.jsp'" class="submit" value="注册">
    			</c:if>
    			<c:if test="${MemberID!=null}">
    				Hi！<%String name=session.getAttribute("MemberID").toString();%>
    		<%=name %> <br>
    				欢迎来到运动商品销售网<br>
    				<input type=button onclick="window.location.href='cancel.jsp'" value="退出">
    			</c:if>
    		</div>
    		<div style="background-image: url('./image/7.jpg');width: 200px;height: 200px;font-size: 2em;
    		font-weight: bold;float: left;"><br><br>
    			<a href="adminlogin.jsp" style="text-decoration:none;">网站后台管理系统</a>
    		</div>
    	</div>
    	<div class="index8">
			<div style="width: 1250px;height: 200px;float: left;">
				<table class="index8_table" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<th>新手上路</th>
						<th>配送方式</th>
						<th>店主之家</th>
						<th>售后服务</th>
						<th>关于我们</th>
						<th>服务支持</th>
					</tr>
					<tr>
						<td>售后流程</td>
						<td>货到付款区域</td>
						<td>常见问题</td>
						<td>退换货原则</td>
						<td>关于商城</td>
						<td>售前售后咨询 13369202343</td>
					</tr>
					<tr>
						<td>购物流程</td>
						<td>配送支付查询</td>
						<td>如何管理商铺</td>
						<td>售后服务保证</td>
						<td>合作与洽谈</td>
						<td>售前售后咨询 15929208788</td>
					</tr>
					<tr>
						<td>如何设置个人信息</td>
						<td>订单状态</td>
						<td>如何申请开店</td>
						<td>退款说明</td>
						<td>投诉与建议</td>
						<td>客服 QQ 437209535</td>
					</tr>
					<tr>
						<td>支付方式</td>
						<td>如何注册支付宝</td>
						<td>如何发货</td>
						<td>返修/退换货</td>
						<td>联系方式</td>
						<td>客服 QQ 397218182</td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>工作时间 9：00-17：30</td>
					</tr>
				</table>
			</div>
			<div style="height: 100px;width: 1250px;float: left;">
				<p>
					<a href=""style="text-decoration:none;">关于我们</a><strong>&nbsp;|&nbsp;</strong>
					<a href=""style="text-decoration:none;">联系我们</a><strong>&nbsp;|&nbsp;</strong>
					<a href=""style="text-decoration:none;">商家入驻</a><strong>&nbsp;|&nbsp;</strong>
					<a href=""style="text-decoration:none;">友情链接</a><strong>&nbsp;|&nbsp;</strong>
					<a href=""style="text-decoration:none;">站点地图</a><strong>&nbsp;|&nbsp;</strong>
					<a href=""style="text-decoration:none;">手机商城</a><strong>&nbsp;|&nbsp;</strong>
					<a href=""style="text-decoration:none;">销售联盟</a><strong>&nbsp;|&nbsp;</strong>
					<a href=""style="text-decoration:none;">商城社区</a><strong>&nbsp;|&nbsp;</strong>
					<a href=""style="text-decoration:none;">企业文化</a><strong>&nbsp;|&nbsp;</strong>
					<a href=""style="text-decoration:none;">帮助中心</a><strong>&nbsp;|&nbsp;</strong>
					<a href=""style="text-decoration:none;">留言板</a>
				</p>
			</div>
		</div>
    </div>
  </body>
  <script type="text/javascript">
   var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        paginationClickable: true,
        autoplay: 3000,
    });
  </script>
</html>
