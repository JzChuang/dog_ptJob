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
<title>Insert title here</title>
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
				
				background-color: white;
				padding-top: 20px;
				padding-left: 50px;	
				padding-bottom: 20px;	
			}
			
</style>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="${path}bootstrap/css/bootstrap.css" />
<script src="${path}bootstrap/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="${path}layer/layer.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="js/querymyoffer.js?version=15"></script>
<script type="text/javascript" src="js/mycollection.js?version=20"></script>
<script type="text/javascript" src="js/updatepsw.js?version=2"></script>
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
				  <li><a id="userNamelog" href="logout">注销</a></li>
				</c:otherwise>
				</c:choose>
				<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
			    <span id="area" style="float: left;color:white;margin-top: 20px">${param.city eq null?"厦门":param.city}</span><li><a href="region.jsp">[切换城市]</a></li>
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
						 <a style="background-color: orange; color: white"  href="#panel-1" data-toggle="tab">我的简历</a>
					</li>
					<li>
						 <a  href="#panel-2" id="application" data-toggle="tab">我的申请</a>
					</li>
					<li>
						 <a  href="#panel-3" id="mycollection" data-toggle="tab">我的收藏</a>
					</li>
					<li>
						 <a  href="#panel-4" id="updatapassword" data-toggle="tab">修改密码</a>
					</li>
				
				</ul>
				
			</div>
		</div>
		<div class="col-md-9 column">
		<div class="tab-content" >
					<div class="tab-pane active" id="panel-1">
						<form class="form-horizontal" role="form">
			<h4>基本信息</h4>
						<hr>
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">我的昵称：</label>
					<div class="col-sm-6">
					<input type="text"  class="form-control" id="nickName" />
						
					</div>
				</div>
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">真实姓名：</label>
					<div class="col-sm-6">
					<input type="text"  class="form-control" id="realName" placeholder="请输入真实姓名"/>
						
					</div>
				</div>
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">所在学校：</label>
					<div class="col-sm-6">
					<input type="text"  class="form-control" id="school" placeholder="请输入在读学校"/>
						
					</div>
				</div>
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">专业：</label>
					<div class="col-sm-6">
					<input type="text"  class="form-control" id="major" placeholder="请输入在读专业"/>
						
					</div>
				</div>
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">年龄：</label>
					<div class="col-sm-6">
					<input type="text"  class="form-control" id="age" placeholder=""/>
						
					</div>
				</div>
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">性别：</label>
					<div class="col-sm-4">						
							<select id="sex" class="form-control">
								 <option value="男">男</option>
								 <option value="女">女</option>								 
							</select>
					</div>
				</div>
			<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">联系电话：</label>
					<div class="col-sm-6">
					<input type="text"  class="form-control" id="phonenum" placeholder=""/>
						
					</div>
				</div>
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">电子邮箱：</label>
					<div class="col-sm-6">
						<input type="email" class="form-control" id="email" />
						<br>
						<button type="button" class="btn btn-primary" id="saveInfo" 
   					data-complete-text="保存成功">保存
				</button>
					</div>
				</div>
				
		  </form>
					</div>
					<div class="tab-pane " id="panel-2">
				<ul class="nav nav-tabs daohang1">
					<li class="active" >
						 <a href="#panel-a" id="selecta" style="background-color: orange;color: white" data-toggle="tab" >全部申请</a>
					</li>
					<li>
						 <a href="#panel-b" id="selectb" data-toggle="tab">已通过申请</a>
					</li>
					<li>
						 <a href="#panel-c" id="selectc" data-toggle="tab">未通过申请</a>
					</li>
					
				</ul>
				
					<div class="tab-content">
						<div class="tab-pane active" id="panel-a">
																					<table style="margin-left: -50px" class="table table-bordered table-hover" id="alljobtab">
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
	<tbody class="myjob01">

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
						<div class="tab-pane" id="panel-b">
																					<table style="margin-left: -50px" class="table table-bordered table-hover" id="alljobtab">
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
	<tbody class="myjob01">

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
						<div class="tab-pane" id="panel-c">
																					<table style="margin-left: -50px" class="table table-bordered table-hover" id="alljobtab">
	<thead >
		<tr>
			<th>工作标题</th>
			<th>工作地区</th>
			<th>性别要求</th>
			<th>薪资待遇</th>
			<th>发布时间</th>
			<th>操作</th>
		</tr>
	</thead>
	<tbody class="myjob01">

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
					</div>
					<div class="tab-pane" id="panel-3">
						<table style="margin-left: -50px" class="table table-bordered table-hover" >
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
	<tbody class="mycollect01">

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
					<div class="tab-pane " id="panel-4">
					<div class="row clearfix">
		<div class="col-md-12 column">
			<form class="form-horizontal" id="passwordform" role="form">
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">请输入原密码：</label>
					<div class="col-sm-8">
						<input type="password" class="form-control" id="oldpassword" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">请输入新密码：</label>
					<div class="col-sm-8">
						<input type="password" class="form-control" id="newpassword1" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">再次输入新密码：</label>
					<div class="col-sm-8">
						<input type="password" class="form-control" id="newpassword2" />
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-offset-4 col-sm-6">
						 <button id="updatepsw" type="button" class="btn btn-primary" style="width: 150px">确认修改</button>
					</div>
				</div>
			</form>
		</div>
	</div>
					</div>
				</div>
		</div>
		
	</div>
</div>
		<script type="text/javascript">
			$(function(){
				 $(".daohang").on("click","li",function(){ 
					 $(".daohang li a").css("background-color","white");
					 $(".daohang li a").css("color","black");
					$(this).find("a").css("background-color","orange");
					$(this).find("a").css("color","white");
				}) 
				 $(".daohang1").on("click","li",function(){ 
					 $(".daohang1 li a").css("background-color","white");
					 $(".daohang1 li a").css("color","black");
					$(this).find("a").css("background-color","orange");
					$(this).find("a").css("color","white");
				}) 
				
			
			})
		</script>
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
			
			$(function(){
//////////////////////////////////////////
				///////////////////////////////////////////
				var userName= "<%=session.getAttribute("userName")%>";
					writeinfo();
					//flag为信息录入标志，假如数据库查询不到此条信息，则说明未填写资料，此时
					//flag值为false进行插入操作，反之，flag值为true进行更新操作
					var flag="false";
					$("#companyinfo").click(function(){
						writeinfo();
					})
					////////////////////////////////////////////////////////
					//此方法通过ajax读取数据库记录并写入到界面
					function writeinfo(){
					 	$.get("showStudent", {
							"userName" : userName
						}, function(pd, satus) {
							if(pd==""){
								flag=false;
							}else{
								flag=true;
								$("#nickName").val(pd.nickName);
								$("#realName").val(pd.realName);
								$("#school").val(pd.school);
								$("#major").val(pd.major);
								$("#age").val(pd.age);
								$("#sex").val(pd.sex);
								$("#phonenum").val(pd.phoneNum);
								$("#email").val(pd.email);
								
							}
						
						}); 
					}
					
					///////////////////////////////////////////////
					function updateStudent(){
						var nickName=$("#nickName").val();
						var realName=$("#realName").val();
						var school = $("#school").val();
						var major = $("#major").val();
						var age = $("#age").val();
						var sex = $("#sex").val();
						var phoneNum = $("#phonenum").val();
						var email = $("#email").val();
						
						$.post("updateStudent",{"userName":userName,"nickName":nickName,
							"realName":realName,"school":school,"major":major,
							"age":age,"sex":sex,"phoneNum":phoneNum,"email":email}
					, function(pd, satus) {
						if(pd=="是"){
							layer.msg("保存成功", {icon: 6});
						}else{
							layer.msg("保存失败，手机号码格式错误！", {icon: 5});
						}
						 
							writeinfo();
							
					
						}); 
					}
						
						function insertStudent(){
							layer.msg('提交成功', {icon: 6});
							var nickName=$("#nickName").val();
							var realName=$("#realName").val();
							var school = $("#school").val();
							var major = $("#major").val();
							var age = $("#age").val();
							var sex = $("#sex").val();
							var phoneNum = $("#phonenum").val();
							var email = $("#email").val();
							$.post("insertStudent", {"userName":userName,"nickName":nickName,
								"realName":realName,"school":school,"major":major,
								"age":age,"sex":sex,"phoneNum":phoneNum,"email":email}
						, function(pd, satus) {
							if(pd=="是"){
								layer.msg("保存成功", {icon: 6});
							}else{
								layer.msg("保存失败，手机号码格式错误！", {icon: 5});
							}
								writeinfo();
								
							}); 
						}
						
						$("#saveInfo").click(function(){
							
							if(flag==true){
								updateStudent();
							}
							else{
								insertStudent();
							}
						})
			})
			
		</script>
	</body>

</html>
