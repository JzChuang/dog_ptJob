<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
			/*.login{position: static; left: 150px; top: 50px;}*/
			.reg{margin-top: 20px;}
			.login{display: none;}
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
			.username{background: url(img/cd-icon-username.svg) no-repeat 0 center;}
			
			.password{background: url(img/lock.svg) no-repeat 0 center;}
			.phonenum{background: url(img/register.svg) no-repeat 0 center;}
			.yanzhengma{background: url(img/phone-r.svg) no-repeat 0 center;} */
			button{margin-left:10px;width: 90px; height: 40px;}
</style>
		<style type="text/css">
			body {
				/*text-align: center;*/
				margin-top: -470px;
				
			}
			
			a {
				font-size: 20px;
				font-weight: 300;
			}
			
			a:link {
				color: orange
			}
			/* 未访问的链接 */
			
			a:visited {
				color: orange
			}
			/* 已访问的链接 */
			
			a:hover {
				color: orange
			}
			/* 鼠标移动到链接上 */
			
			a:active {
				color: orange
			}
			/*跳转到登录*/
			/*商户注册部分*/
			.else1{
				position: absolute;
				left: 400px; 
				top: 80px;
				height: 350px;
				width: 300px;
				/*background: url(img/reg_people.png) no-repeat scroll top left;
				background-position: 20px 80px;*/
				background-image: url(img/reg_company.png);
			}
			.else2{
				position: absolute;
				left: 400px; 
				top: 80px;
				height: 350px;
				width: 300px;
				/*background: url(img/reg_people.png) no-repeat scroll top left;
				background-position: 20px 80px;*/
				background-image: url(img/reg_people.png);
			}
			/* 选定的链接 */
		</style>
		<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css" />
		<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
		<script src="js/register.js?haha=9"></script>
		<script src="bootstrap/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body style="background-color: white;">
		<div class="container">
			<div class="row clearfix">
				<div class="col-md-12 column">
					<div class="tabbable" id="tabs-771134">
						<ul class="nav nav-tabs">
							<li>
								<a href="#panel-456571" data-toggle="tab"><strong>招  人</strong></a>
							</li>
							<li class="active">
								<a href="#panel-770079" data-toggle="tab"><strong>找工作</strong></a>
							</li>
						</ul>
						<div class="tab-content">
							<!--商户注册-->
							<div class="tab-pane" id="panel-456571">
					
								<div class="reg">
										<form id="reg1" action="" method="post">
										
										<div class="inputdiv phonenum">
											<input  class="phonenum" id="phonenum1" type="text"  placeholder="请输入常用手机号" />
										</div>
										<span id="phonenamspan1"></span>
										<div class="inputdiv yanzhengma">
											<input id="yanzhengma1" class="yanzhengma" type="text" placeholder="请输入收到的验证码" style="width: 200px;" />
											<button id="send1" type="button" class="btn btn-info">发送验证码</button>
										</div>
										<span id="yanzhengmaspan1"></span>
										<div class="inputdiv password">
											<input id="password1" type="password" name="" id="" value="" placeholder="请输入登录密码" />
										</div>
										<span id="passwordspan1"></span>
										<br />
										<input type="checkbox" id="accept" checked>
										<label for="remember-me">阅读并同意网站协议</label>
										<a>智囊网用户协议</a>
										<br />
										<input  type="submit" id="reg-company" class="btn btn-primary regbtn" style="width: 300px;" id="" name="" value="注册" />
										
										</form>
									</div>
									<!--跳转到登录-->
									<div class="else1" style="position: absolute; ">
										已经注册？<a class="btn btn-info jumplogin">现在登录</a>
									</div>
							</div>
							<!-- 学生注册 -->
							<div class="tab-pane active" id="panel-770079">
									<div class="reg">
										<form action="" method="post">
										
										<div class="inputdiv phonenum">
											<input  id="phonenum2" type="text" name="" id="" value="" placeholder="请输入常用手机号" />
										</div>
										<span id="phonenamspan2"></span>
										<div class="inputdiv yanzhengma">
											<input id="yanzhengma2" type="text" name="" id="" value="" placeholder="请输入收到的验证码" style="width: 200px;" />
											<button id="send2" type="button" class="btn btn-info">发送验证码</button>
										</div>
										<span id="yanzhengmaspan2"></span>
										<div class="inputdiv password">
											<input id="password2" type="password" name="" id="" value="" placeholder="请输入登录密码" />
										</div>
										<span id="passwordspan2"></span>
										<br />
										<input type="checkbox" id="accept" checked>
										<label for="remember-me">阅读并同意网站协议</label>
										<a>智囊网用户协议</a>
										<br />
										<input  type="submit" id="reg-user" class="btn btn-primary regbtn" style="width: 300px;" id="" name="" value="注册" />
										
										</form>
									</div>
									<!--跳转到登录-->
									<div class="else2" style="position: absolute; ">
										已经注册？<a class="btn btn-info jumplogin">现在登录</a>
									</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>

</html>