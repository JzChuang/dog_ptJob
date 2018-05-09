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
<title>工作详情</title>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="${path}bootstrap/css/bootstrap.css" />
<script src="${path}bootstrap/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="${path}layer/layer.js" type="text/javascript" charset="utf-8"></script>
<style type="text/css">
span {
	font-size: 16px;
}
</style>
</head>
<script type="text/javascript">

function getJobDetail(jobId){
	$.get("jobdetail/"+jobId,function (pd,satus){
		//调用showData(pd,satus)
		showJobDetail(pd);
	});
}

function showJobDetail(pd){
	
	$("#title").text(pd.jobTitle);
	$(".salary").text(pd.salary);
	$(".area").text(pd.area);
	$(".publishtime").text(pd.publishTime);
	$(".adress").text(pd.detailAdress);
	$(".peoplenum").text(pd.peopleNum);
	$(".jobType").text(pd.jobType);
	$(".companyName").text(pd.companyName);
	$(".contact").text(pd.contact);
	$(".phoneNum").text(pd.phoneNum);
	$(".remark").text(pd.jobRemark);
}
</script>
<body style="background-color: rgb(241,243,248);">
<div id="top" style="background-color: white;padding-top: 20px;padding-left: 30px;padding-bottom: 30px">
<h2 id="title"></h2>
<span class="salary" style="font-size:24px; color:orange"></span>
&nbsp;&nbsp;&nbsp;<span class="area" style="font-size: 16px"></span>
&nbsp;&nbsp;&nbsp;<span class="publishtime" style="font-size: 16px"></span>    
</div>

<div id="middle" style="margin-top:30px;background-color: white;padding-top: 20px;padding-left: 30px;padding-bottom: 30px"">
<h3 >职位详情</h3>
<hr>
<span style="color:rgb(153,153,153);">工作地址：</span><span class="adress"></span><br>
<span style="color:rgb(153,153,153);">招聘人数：</span><span class="peoplenum"></span><br>
<span style="color:rgb(153,153,153);">性别要求：</span><span class="sex"></span><br>
<span style="color:rgb(153,153,153);">工作类型：</span><span class="jobType"></span><br>
<span style="color:rgb(153,153,153);">公司名称：</span><span class="companyName"></span><br>
<span style="color:rgb(153,153,153);">联  系  人 ：</span><span class="contact"></span><br>
<span style="color:rgb(153,153,153);">联系电话：</span><span class="phoneNum"></span><br>
</div>

<div id="bottom"style="margin-top:30px;background-color: white;padding-top: 20px;padding-left: 30px;padding-bottom: 30px"">
<h3 >职位描述</h3>
<p class="remark"></p>
<hr>
</div>
</body>
</html>