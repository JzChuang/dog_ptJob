<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>汪兼职首页</title>

<style type="text/css">
			.menu {
				height: 60px;
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
				background: url(img/bg_over.gif) center center no-repeat;
			}
			/**
				 * 闁喚顔堟潏鎾冲弳濡楀棗鎷伴幓鎰唉閹稿鎸虫径褍鐨�				 */
			
			.input {
				height: 40px;
				width: 200px;
			}
			
			#btn1 {
				width: 150px;
				height: 40px;
				background-color: rgb(79, 164, 175);
				border-radius: 25px;
			}
			
			#iframe {
				position: absolute;
				top: 28%;
				left: 21%;
				height: 400px;
				width: 800px;
				z-index: 10;
			}
			
			iframe {
				text-align: center;
				margin: auto;
			}
		</style>
		<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
		<script src="layer/layer.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/index.js?version=7" type="text/javascript" charset="utf-8"></script>
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

	<body background="img/bg.jpg">
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
				 <c:when test="${userType=='company'}">
				 <li><a id="userNamelog" href="company-jump.jsp">${userName}</a></li>
				 </c:when>
				 <c:otherwise>
				 <li><a id="userNamelog" href="admin-jump.jsp">${userName}</a></li>
				 </c:otherwise>
				 </c:choose>
				  <li><a id="userNamelog" href="logout">注销</a></li>
				</c:otherwise>
				</c:choose>
				<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
			    <span id="area" style="float: left;margin-top: 20px">${param.city eq null?"厦门":param.city}</span><li><a href="region.jsp">[切换城市]</a></li>
			</ul>
		</div>
		<br />
		<div id="content">
			<center>
				<img src="img/1.png" /><br />
			</center>
		</div>

		<center>
			<div id="iframe">

				<iframe name="message" src="1.html?version=1" frameborder="0" width="100%" height="100%">
				
				</iframe>
			</div>
		</center>
		<script type="text/javascript">
			$(function() {
				/* 注册弹窗 */
				$("#register").click(function() {
					layer.open({
						type: 2,
						title: '欢迎注册',
						maxmin: true,
						skin : 'layui-layer-lan',
						shadeClose: true, //点击遮罩关闭层
						area: ['740px', '480px'],
						content: 'register.jsp'
					});

				});
				/* 登录弹窗 */
				$("#login").click(function() {
					layer.open({
						type: 2,
						title: '欢迎登录',
						maxmin: true,
						skin : 'layui-layer-lan',
						shadeClose: true, //点击遮罩关闭层
						area: ['500px', '300px'],
						content: 'login.jsp'
					});

				});
			})
		</script>
	</body>

</html>