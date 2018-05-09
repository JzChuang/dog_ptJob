<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="layer/layer.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css" />
<script src="bootstrap/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<style type="text/css">
.form-group{text-align: center;}
</style>
</head>

<body scroll="no" style="overflow-x:hidden;overflow-y:hidden">
	<center>
<form class="form-horizontal" role="form" >
			<h4>学生简历信息</h4>
						<hr>
					
				<div class="form-group" >
				<div class="col-sm-3">
				</div>
					 <label for="inputEmail3" class="col-sm-2 control-label">我的昵称：</label>
					<div class="col-sm-4">
					<input type="text"  class="form-control" id="nickName" />
						
					</div>
				</div>
				<div class="form-group">
				<div class="col-sm-3">
				</div>
					 <label for="inputEmail3" class="col-sm-2 control-label">真实姓名：</label>
					<div class="col-sm-4">
					<input type="text"  class="form-control" id="realName" placeholder="请输入真实姓名"/>
						
					</div>
				</div>
				<div class="form-group">
				<div class="col-sm-3">
				</div>
					 <label for="inputEmail3" class="col-sm-2 control-label">所在学校：</label>
					<div class="col-sm-4">
					<input type="text"  class="form-control" id="school" placeholder="请输入在读学校"/>
						
					</div>
				</div>
				<div class="form-group">
				<div class="col-sm-3">
				</div>
					 <label for="inputEmail3" class="col-sm-2 control-label">专业：</label>
					<div class="col-sm-4">
					<input type="text"  class="form-control" id="major" placeholder="请输入在读专业"/>
						
					</div>
				</div>
				<div class="form-group">
				<div class="col-sm-3">
				</div>
					 <label for="inputEmail3" class="col-sm-2 control-label">年龄：</label>
					<div class="col-sm-4">
					<input type="text"  class="form-control" id="age" placeholder=""/>
						
					</div>
				</div>
				<div class="form-group">
				<div class="col-sm-3">
				</div>
					 <label for="inputEmail3" class="col-sm-2 control-label">性别：</label>
					<div class="col-sm-4">						
							<select id="sex" class="form-control">
								 <option value="男">男</option>
								 <option value="女">女</option>								 
							</select>
					</div>
				</div>
			<div class="form-group">
			<div class="col-sm-3">
				</div>
					 <label for="inputEmail3" class="col-sm-2 control-label">联系电话：</label>
					<div class="col-sm-4">
					<input type="text"  class="form-control" id="phonenum" placeholder=""/>
						
					</div>
				</div>
				<div class="form-group">
				<div class="col-sm-3">
				</div>
					 <label for="inputEmail3" class="col-sm-2 control-label">电子邮箱：</label>
					<div class="col-sm-4">
						<input type="email" class="form-control" id="email" />
						<br>
						<button type="button" class="btn btn-primary" id="back">返回
				</button>
					</div>
				</div>
				
		  </form>
		  </center>
<script type="text/javascript">
$(function(){
	$('form').find('input,textarea,select').attr('readonly',true);
	var username = GetQueryString("username");
		$.get("showStudent?userName="+username,function(pd){
			$("#nickName").val(pd.nickName);
			$("#realName").val(pd.realName);
			$("#school").val(pd.school);
			$("#major").val(pd.major);
			$("#age").val(pd.age);
			$("#sex").val(pd.sex);
			$("#phonenum").val(pd.phoneNum);
			$("#email").val(pd.email);
		})
})
function GetQueryString(name)
{
   var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
   var r = window.location.search.substr(1).match(reg);
   if(r!=null)return unescape(r[2]);
   return null;
}

$("#back").click(function(){
	window.history.go(-1);
})
</script>
</body>
</html>