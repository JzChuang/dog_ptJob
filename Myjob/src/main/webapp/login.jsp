<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="layer/layer.js" type="text/javascript" charset="utf-8"></script>
<script src="bootstrap/js/bootstrap.js" type="text/javascript"charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css" />
	<style type="text/css">
			.inputdiv{margin-top: 0px;width: 300px;height: 40px; display: block;}
			.inputdiv input {
				float: left;
				border: 1px solid lightgrey;
				border-radius: 5px;
				background: none;
				height: 40px;
				line-height: 40px;
				width: 300px;
				text-indent: 32px;
			}
			span{height:25px;display:block}
			#username{background: url(img/phone-r.svg) no-repeat 0 center;}
			#password{background: url(img/lock.svg) no-repeat 0 center;}
			a:link {color:black; text-decoration: none;}
			a:visited {color:black; text-decoration: none;}
			a:hover {color:orange; text-decoration: none;}
			a:active {color: orange}
	</style>
</head>
<body>
<center>
<div class="login">
		<span></span>
		<div class="inputdiv username">
				<input id="username" type="text" name="" id="" value="${reguser}" placeholder="请输入注册手机号" />
		</div>
		<span></span>
		<div class="inputdiv password">
				<input id="password" type="password" name="" id="" value="" placeholder="请输入密码" />
		</div>
		<span></span>
		<a id="jumpreg" >没有账号？点击注册</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
		<a id="findpwd" >忘记密码</a>
		<br>
		<input type="submit" id="login" class="btn btn-primary" style="width: 300px;" id="" name="" />			
	</div>
	</center>
</body>
<script type="text/javascript">
$(function(){
	$("#jumpreg").click(function(){
		 var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
	     parent.layer.close(index);
	     parent.layer.open({
			type: 2,
			title: '欢迎注册',
			maxmin: true,
			skin : 'layui-layer-lan',
			shadeClose: true, //点击遮罩关闭层
			area: ['740px', '480px'],
			content: 'register.jsp'
		});
	})
	
	
	$("#login").click(function(){
		var userName = $("#username").val();
		var passWord = $("#password").val();
		$.get("login", {
			"userName" : userName,
			"passWord" : passWord
		}, function(pd, satus) {
			
			if (pd!="") {
				/* 根据登录的用户类型判断该跳往哪个主页 */
				if(pd=="学生登录"){
					 var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
				     parent.layer.close(index);
					 parent.location="student-jump.jsp";
				}
				else if(pd=="企业登录"){
					 var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
				     parent.layer.close(index);
					 parent.location="company-jump.jsp";
				}
				else{
					 var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
				     parent.layer.close(index);
					 parent.location="admin-jump.jsp";
				}
			}
			// 未发送成功时提示用户
			else {
				/*  var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
			     parent.layer.close(index); */
			     parent.layer.msg('用户名或密码错误', {shade: 0.3});
			}
		});
	})
})
</script>
</html>