<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getScheme() + "://" + request.getServerName()
			+ ":" + request.getLocalPort() + request.getContextPath()
			+ "/";
	
	//折中处理一下
	pageContext.setAttribute("path",path);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>工作具体信息</title>
<style type="text/css">
		.menu {
				background-color:rgb(48,58,64);
				height: 80px;
				padding-top:10px;
				display: block;
			}
			.menu ul {
				list-style: none;
				padding: 0;
			}
			
			.menu ul li {
				float: left;
				/* 閼挎粌宕熺�鎰帗缁辩姷娈戦崘鍛啇鐡掑懎鍤稉宥呭讲鐟欙拷*/
				overflow: hidden;
				position: relative;
				text-align: center;
				line-height: 45px;
				color: rgb(204, 204, 204);
			}
			
			.menu ul li a {
				/* 韫囧懘銆忛弰顖滄祲鐎电懓鐣炬担锟�*/
				margin-top: 10px;
				position: relative;
				display: block;
				width: 110px;
				height: 45px;
				font-family: Arial;
				font-size: 16px;
				font-weight: bold;
				letter-spacing: 1px;
				text-transform: uppercase;
				text-decoration: none;
				cursor: pointer;
			}
			
			.menu ul li a span {
				/* 閹碉拷婀佺仦鍌氱殺娴ｈ法鏁ょ紒婵嗩嚠鐎规矮缍�*/
				position: absolute;
				left: 0;
				width: 110px;
			}
			
			.menu ul li a span.out {
				top: 0px;
			}
			
			.menu ul li a span.over,
			.menu ul li a span.bg {
				/* 鐠у嘲鍨�over鐏炲倸鎷�bg鐏炲倻娴夌�绛ч崗鍐-45px娴犮儴鎻崚浼存閽橈拷*/
				top: -45px;
			}
			/** 鐎瑰本鏆ｉ悧鍫€仛娓氾拷**/
			
			#menu {
				//background: url(img/bg_menu.gif) scroll 0 -1px repeat-x;
				//border: 1px solid #CCC;
				//background-color: rgb(106,192,189);
			}
			
			#menu ul li a {
				color: rgb(204, 204, 204);
			}
			
			#menu ul li a span.over {
				color: #FFF;
			}
			
			#menu ul li span.bg {
				height: 45px;
				background: url(${path}img/bg_over.gif) center center no-repeat;
			}
			
			.daohang li{border: 0.5px solid #f0f0f0;height: 50px}
			.daohang li a{background-color: white;color:black} 
			.tab-content{
				width:900px;
				height:500px;
				background-color: white;		
			}
			table{
   
    table-layout:fixed;/* 只有定义了表格的布局算法为fixed，下面td的定义才能起作用。 */
}
td{
    width:100%;
    word-break:keep-all;/* 不换行 */
    white-space:nowrap;/* 不换行 */
    overflow:hidden;/* 内容超出宽度时隐藏超出部分的内容 */
    text-overflow:ellipsis;/* 当对象内文本溢出时显示省略标记(...) ；需与overflow:hidden;一起使用。*/
}
			
</style>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="${path}bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="${path}css/jzsi.css?version=10"/>
<script src="${path}bootstrap/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="${path}layer/layer.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="js/checkjobs.js?version=5"></script>
<script src="js/index.js?version=8" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
			$(document).ready(function() {
				/* 	完整版示例	*/
				// 把每个a中的内容包含到一个层（span.out）中，在span.out层后面追加背景图层（span.bg）
				$("#menu li a").wrapInner('<span class="out"></span>').append('<span class="bg"></span>');
				// 循环为菜单的a每个添加一个层（span.over）
				$("#menu li a").each(function() {
					$('<span class="over">' + $(this).text() + '</span>').appendTo(this);
				});
				$("#menu li a").hover(function() {
					// 鼠标经过时候被触发的函数
					$(".out", this).stop().animate({
						'top': '45px'
					}, 250); // 向下滑动 - 隐藏
					$(".over", this).stop().animate({
						'top': '0px'
					}, 250); // 向下滑动 - 显示
					$(".bg", this).stop().animate({
						'top': '0px'
					}, 120); // 向下滑动 - 显示
				}, function() {
					// 鼠标移出时候被触发的函数
					$(".out", this).stop().animate({
						'top': '0px'
					}, 250); // 向上滑动 - 显示
					$(".over", this).stop().animate({
						'top': '-45px'
					}, 250); // 向上滑动 - 隐藏
					$(".bg").stop().animate({
						'top': '-45px'
					}, 120); // 向上滑动 - 隐藏
				});

			});
		</script>
</head>

<body style="background-color: rgb(251,251,251);">
<div id="menu" class="menu">
		<input type="hidden" id="susername" value="${userName}">
		<input type="hidden" id="susertype" value="${userType}">
			<ul>
				<li><img src="img/logo.png" width="300px" /></li>
				<li>
					<a href="index.jsp" >首页</a>
				</li>
				<li>
					<a href="joblist.jsp">热门职位</a>
				</li>
				<li>
					<a  id="publishjob_index">发布兼职</a>
				</li>
				<!-- <li>
					<a  id="contactus">联系我们</a>
				</li> -->
				<li>
					<a  id="mangercenter_index">管理中心</a>
				</li>
				<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<c:choose>
					<c:when test="${empty sessionScope.userName}">
					<li>
					<a  id="login" >登录</a>
				</li>
				<li><span id="|">|</span></li>
				<li>
					<a  id="register" >注册</a>
					<!--<input type="button" id="register" value="注册" />-->
				</li>
				</c:when>
				<c:otherwise>
				<c:choose>
				<c:when test="${userType=='student'}">
				 <li><a id="userNamelog" href="student-jump.jsp">${userName}</a></li>
				 </c:when>
				 <c:otherwise>
				 <li><a id="userNamelog" href="company-jump.jsp">${userName}</a></li>
				 </c:otherwise>
				 </c:choose>
				  <li><a id="" href="logout">注销</a></li>
				</c:otherwise>
				</c:choose>
				<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
			    <span id="area" style="float: left;color:white;margin-top: 20px">${param.city eq null?"厦门":param.city}</span><li><a href="region.jsp">[切换城市]</a></li>
			</ul>
		</div>
		<br>

	<div id="container" class="wrap">
			<div id="sidebar" class="sidebar">
				<div class="mainNavs box-shadow">

					<div id="industry">

						<div class="menu_box">
							<div class="menu_main">
								<h2><a id="notcheckedjobs" >未审核工作</a><span></span></h2>
							</div>
						</div>
						<div class="menu_box">
							<div class="menu_main">
								<h2><a id="checkedjobs" >已审核工作</a><span></span></h2>
							</div>
						</div>


					</div>
				</div>
			</div>
<div class="content box-shadow">
<table  class="table table-bordered table-hover" id="joblists">
	<thead>
		<tr>
			<th>工作标题</th>
			<th>工作地区</th>
			<th>性别要求</th>
			<th>薪资待遇</th>
			<th>发布时间</th>
			<th>操作</th>
		</tr>
	</thead>
	<tbody>

	 <!-- 这里的数据需要通过jquery(javascript) 的代码来做实现-->

	</tbody>
</table>

<div class="row">
<div class="col-md-4"></div>
<div class="col-md-4">
			<ul class="pagination jobpage">
               <!-- 分页的代码 需要使用jquery来完成 -->
			</ul>
		</div>
		
</div>
				
			</div>
		</div>

		
		<div>

			
	</body>

</html>
</body>
</html>