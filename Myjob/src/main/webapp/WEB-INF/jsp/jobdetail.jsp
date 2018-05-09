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
				background-color:white;
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
				background: url(${path}img/bg_over.gif) center center no-repeat;
			}
			
			.daohang li{border: 0.5px solid #f0f0f0;height: 50px}
			.daohang li a{background-color: white;color:black} 
			.tab-content{
				width:900px;
				height:500px;
				background-color: white;		
			}
			
</style>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="${path}bootstrap/css/bootstrap.css" />
<script src="${path}bootstrap/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="${path}layer/layer.js" type="text/javascript" charset="utf-8"></script>
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
			<ul>
				<li><img src="${path}img/logo.png" width="300px" /></li>
				<li>
					<a href="1.html" target="message">首页${param.city}</a>
				</li>
				<li>
					<a href="javascript:;">热门职位</a>
				</li>
				<li>
					<a href="javascript:;">发布兼职</a>
				</li>
				<li>
					<a href="javascript:;">联系我们</a>
				</li>
				<li>
					<a href="javascript:;">管理中心</a>
				</li>
				<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li>
					<a  id="login" >登录</a>
				</li>
				<li><span id="|">|</span></li>
				<li>
					<a  id="register" >注册</a>
					<!--<input type="button" id="register" value="注册" />-->
				</li>
				<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
			    <span id="area" style="float: left;margin-top: 20px">${param.city eq null?"厦门":param.city}</span><li><a href="region.jsp">[切换城市]</a></li>
			</ul>
		</div>
		<br>
		<div class="container">
	<div class="row clearfix">
	<div class="col-md-1 column">
	</div>
		<div class="col-md-2 column">
			<div class="tabbable" id="tabs-768359" style="width: 100px;" >
				<ul class="nav nav-tabs nav-stacked daohang" style="" >
					<li  class="active">
						 <a style="background-color: orange; color: white"  href="#panel-1" data-toggle="tab">基本信息</a>
					</li>
					<li>
						 <a  href="#panel-2" data-toggle="tab">发布职位</a>
					</li>
					<li>
						 <a  href="#panel-3" data-toggle="tab">岗位管理</a>
					</li>
					<li>
						 <a  href="#panel-4" data-toggle="tab">人才管理</a>
					</li>
					<li>
						 <a  href="#panel-5" data-toggle="tab">消息中心</a>
					</li>
					<li>
						 <a  href="#panel-6" data-toggle="tab">修改密码</a>
					</li>
				</ul>
				
			</div>
		</div>
		<div class="col-md-9 column">
		<div class="tab-content">
					<div class="tab-pane active" id="panel-1">
						基本信息
					</div>
					<div class="tab-pane " id="panel-2">
						发布职位
					</div>
					<div class="tab-pane" id="panel-3">
						岗位管理
					</div>
					<div class="tab-pane" id="panel-4">
						人才管理
					</div>
					<div class="tab-pane" id="panel-5">
						消息中心
					</div>
					<div class="tab-pane" id="panel-6">
						修改密码
					</div>
				</div>
		</div>
		
	</div>
</div>
		
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
		<script type="text/javascript">
			$(function(){
				 $(".daohang").on("click","li",function(){ 
					 $(".daohang li a").css("background-color","white");
					 $(".daohang li a").css("color","black");
					$(this).find("a").css("background-color","orange");
					$(this).find("a").css("color","white");
				}) 
			})
		</script>
	</body>

</html>
</body>
</html>