<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
				background: url(img/bg_over.gif) center center no-repeat;
			}
			
			.daohang li{border: 0.5px solid #f0f0f0;height: 50px}
			.daohang li a{background-color: white;color:black} 
			.tab-content{
				width:900px;
				
				background-color: white;
				padding-top: 20px;
				padding-left: 50px;		
			}
</style>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css" />
<script src="bootstrap/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="layer/layer.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.provincesCity.js"></script>
<script type="text/javascript" src="js/GetAllJobs.js?id=29"></script>
<script type="text/javascript" src="js/resumemanger.js?version=4"></script>
<script type="text/javascript" src="js/provincesData.js?id=3"></script>
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

				$(function(){
					  $("#province").ProvinceCity()});
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
		<div class="col-md-2 column" style="margin-left: -30px ;">
			<div class="tabbable" id="tabs-768359" style="width: 100px;" >
				<ul class="nav nav-tabs nav-stacked daohang" style="" >
					<li  class="active">
						 <a id="companyinfo" style="background-color: orange; color: white"  href="#panel-1" data-toggle="tab">基本信息</a>
					</li>
					<li>
						 <a  id="publish" href="#panel-2" data-toggle="tab">发布职位</a>
					</li>
					<li>
						 <a  id="jobmanage" href="#panel-3" data-toggle="tab">岗位管理</a>
					</li>
					<!-- <li>
						 <a  href="#panel-4" data-toggle="tab">人才管理</a>
					</li>
					<li>
						 <a  href="#panel-5" data-toggle="tab">消息中心</a>
					</li> -->
					<li>
						 <a  href="#panel-6" data-toggle="tab">修改密码</a>
					</li>
				</ul>
				
			</div>
		</div>
		<div class="col-md-9 column">
		<div class="tab-content">
		<div class="tab-pane active" id="panel-1">
						
			<form class="form-horizontal" role="form">
			<h4>基本信息</h4>
						<hr>
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">公司名称：</label>
					<div class="col-sm-6">
					<input type="email" class="form-control" id="companyName" />
						
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">公司地址：</label>
					<div class="col-sm-6">
						<div id="province"></div>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">详细地址：</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="detailAdress" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">公司简介：</label>
					<div class="col-sm-6">
						  <textarea class="form-control" rows="3"  style="resize:none" id="remark" ></textarea>
					</div>
				</div>
				<h4>联系人信息</h4>
						<hr>
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">联系人姓名：</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="contact" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">手机号码：</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="phonenum" />
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
		<!-- 发布工作 -->
		<div class="tab-pane " id="panel-2">
									
			<form class="form-horizontal" role="form">
			<h4>基本信息</h4>
						<hr>
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">发布方：</label>
					<div class="col-sm-6">
						<input id="companyName2" class="form-control"  disabled="disabled" value="test2"/> 
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">
							<span class="glyphicon glyphicon-star" style="color:red;"></span>标题：</label>
					<div class="col-sm-6">
					<input type="text" class="form-control" id="jobTitle" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label"><span class="glyphicon glyphicon-star" style="color:red;"></span>岗位类型：</label>
					<div class="col-sm-4">						
							<select id="jobType" class="form-control">
								 <option>---请选择---</option>
								 <option value="派单">派单</option>
								 <option value="促销">促销</option>
								 <option value="家教">家教</option>
								 <option value="服务员">服务员</option>
								 <option value="话务员">话务员</option>
								 <option value="刷单">刷单</option>
								 <option value="销售">销售</option>
								 <option value="营业员">营业员</option>
								 <option value="其他">其他</option>
							</select>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label"><span class="glyphicon glyphicon-star" style="color:red;"></span>区域：</label>
					<div class="col-sm-6">
						 	<div id="area2"></div>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label"><span class="glyphicon glyphicon-star" style="color:red;"></span>具体工作地址：</label>
					<div class="col-sm-6">
			    		<input type="text" class="form-control" id="detailAdress2" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label"><span class="glyphicon glyphicon-star" style="color:red;"></span>联系人：</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="contact2" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label"><span class="glyphicon glyphicon-star" style="color:red;"></span>联系电话：</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="phonenum2" />
					</div>
				</div>
				<h4>具体信息</h4>
						<hr>
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label"><span class="glyphicon glyphicon-star" style="color:red;"></span>招聘人数：</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="peoplenum" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label"><span class="glyphicon glyphicon-star" style="color:red;"></span>性别要求：</label>
					<div class="col-sm-4">						
							<select id="sex" class="form-control">
								 <option value="男女不限"><span class="glyphicon glyphicon-star" style="color:red;"></span>男女不限</option>
								 <option value="男">男</option>
								 <option value="女">女</option>								 
							</select>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label"><span class="glyphicon glyphicon-star" style="color:red;"></span>薪资水平：</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="salary1" />
					</div>
					<div class="col-sm-3">						
							<select id="salary2" class="form-control">
								 <option value="元/时">元/时</option>
								 <option value="元/天">元/天</option>
								 <option value="元/月">元/月</option>
								 <option value="元/单">元/单</option>								 
							</select>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label"><span class="glyphicon glyphicon-star" style="color:red;"></span>工作时间：</label>
					<div class="col-sm-3">
						<input type="date" class="form-control" id="worktime1" />
					</div>
					<div class="col-sm-1">
					至
					</div>
					<div class="col-sm-3">
						<input type="date" class="form-control" id="worktime2" />
					</div>
				</div>
				
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">职位描述：</label>
					<div class="col-sm-6">
						  <textarea  id="jobremark" class="form-control" rows="3"  style="resize:none"  ></textarea>
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-2"></div>
					<div class="col-sm-4">
					<button type="button" class="btn btn-primary" id="publishjob">发布</button>
					</div> 
					<div class="col-sm-2"></div>
				</div>
				
		  </form>
					</div>
					<div class="tab-pane" id="panel-3">
<!--岗位管理  -->
			<div class="tabbable" id="tabs-991095">
				<ul class="nav nav-tabs daohang1">
					<li class="active" >
						 <a href="#panel-a" id="selecta" style="background-color: orange;color: white" data-toggle="tab" >所有岗位</a>
					</li>
					<li>
						 <a href="#panel-b" id="selectb" data-toggle="tab">等待审核</a>
					</li>
					<li>
						 <a href="#panel-c" id="selectc" data-toggle="tab">正在招聘</a>
					</li>
					<li>
						 <a href="#panel-d" id="selectd" data-toggle="tab">停止招聘</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="panel-a">
							<table style="margin-left: -50px" class="table table-bordered table-hover" id="notwantedjobtab">
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
					<div class="tab-pane " id="panel-b">
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
					<div class="tab-pane " id="panel-c">
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
					<div class="tab-pane " id="panel-d">
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
			</div>
					</div>
					<div class="tab-pane" id="panel-4">
						人才管理
					</div>
					<div class="tab-pane" id="panel-5">
						消息中心
					</div>
					<div class="tab-pane" id="panel-6">
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
				 $(".daohang1").on("click","li",function(){ 
					 $(".daohang1 li a").css("background-color","white");
					 $(".daohang1 li a").css("color","black");
					$(this).find("a").css("background-color","orange");
					$(this).find("a").css("color","white");
				}) 
				
				$("#saveInfo").click(function(){
					$(this).button('loading').delay(1000).queue(function() {
						$(this).button('complete');
					});        
				});
			})
		</script>
		
		
		<script type="text/javascript">

			$(function(){
				$("#area2").ProvinceCity();
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
				 	$.get("showcompany", {
						"userName" : userName
					}, function(pd, satus) {
						if(pd==""){
							flag=false;
						}else{
							flag=true;
							$("#companyName").val(pd.companyName);
							$("#detailAdress").val(pd.detailAdress);
							$("#remark").val(pd.remark);
							$("#contact").val(pd.contact);
							$("#phonenum").val(pd.phonenum);
							$("#email").val(pd.email);
							
						}
					
					}); 
				}
				
				///////////////////////////////////////////////
				function updatecompany(){
					var companyName=$("#companyName").val();
					var detailAdress=$("#detailAdress").val();
					var remark = $("#remark").val();
					var contact = $("#contact").val();
					var phonenum = $("#phonenum").val();
					var email = $("#email").val();
					alert(userName);
					$.post("updatecompany",{"userName":userName,"companyName":companyName,
						"detailAdress":detailAdress,"remark":remark,"contact":contact,
						"phonenum":phonenum,"email":email}
				, function(pd, satus) {
						writeinfo();
						
				
					}); 
				}
					
					function insertcompany(){
						var companyName=$("#companyName").val();
						var detailAdress=$("#detailAdress").val();
						var remark = $("#remark").val();
						var contact = $("#contact").val();
						var phonenum = $("#phonenum").val();
						var email = $("#email").val();
						alert(userName);
						$.post("insertcompany", {"userName":userName,"companyName":companyName,
							"detailAdress":detailAdress,"remark":remark,"contact":contact,
							"phonenum":phonenum,"email":email}
					, function(pd, satus) {
							writeinfo();
							
						}); 
					}
					
					$("#saveInfo").click(function(){
						if(flag=true){
							updatecompany();
						}
						else{
							insertcompany();
						}
					})
			/////////////////////////////////////////////////////
			///////////////////////////////////////////////////
			//发布工作脚本
				$("#publish").click(function(){
						if(flag==true){
							var companyName=$("#companyName").val();
							$("#companyName2").val(companyName);
							
						}else{
							alert("完善信息后方可发布工作");
							$("#publishjob").attr('disabled',true); 
						}
					
					})
					
					
				$("#publishjob").click(function(){
					var jobTitle = $("#jobTitle").val();
					var companyName=$("#companyName2").val();
					var jobType=$("#jobType").val();
					var detailAdress=$("#detailAdress2").val();
					var contact=$("#contact2").val();
					var phoneNum=$("#phonenum2").val();
					var sex=$("#sex").val();
					var salary=$("#salary1").val()+$("#salary2").val();
					var workTime=$("#worktime1").val()+"至"+$("#worktime2").val();
					var jobRemark=$("#jobremark").val();
					var peopleNum = $("#peoplenum").val();
					//获取省市县三级的值
					var area = $("#area2").find("select:eq(0)").val()+"-"+$("#area2").find("select:eq(1)").val()+"-"+$("#area2").find("select:eq(2)").val();
					$.post("addjob",{"userName":userName,"jobTitle":jobTitle,"companyName":companyName,"jobType":jobType,"area":area,
						"detailAdress":detailAdress,"contact":contact,"phoneNum":phoneNum,"sex":sex,"salary":salary,
						"workTime":workTime,"jobRemark":jobRemark,"peopleNum":peopleNum},
						function(pd, satus){
							if(pd=="发布成功"){
								layer.msg('发布成功', {icon: 6});
							}
						});
					
				})
				//////////////////////////////////////////////////////		
					$(document).on("click",".jobTitle",function(){
						var jobId =$(this).parent().prev().text();// 当前元素前一个兄弟节点
						layer.open({
							type: 2,
							title: '工作详情',
							maxmin: true,
							skin : 'layui-layer-lan',
							shadeClose: true, //点击遮罩关闭层
							area: ['800px', '750px'],
							content: 'jobdetail.jsp',
							success: function (layero, index) {  
			                    // 获取子页面的iframe  
			                    var iframe = window['layui-layer-iframe' + index];  
			                    // 向子页面的全局函数child传参  
			                    iframe.getJobDetail(jobId);  
			                }  
						});
						
					})
					
					
				
					
					
			})
			
		</script>
		
	</body>

</html>
</body>
</html>