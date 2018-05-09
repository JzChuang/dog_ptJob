<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
String path="http://"+request.getServerName()+":"+request.getLocalPort()+request.getContextPath()+"/";
pageContext.setAttribute("path", path);

%>
<script type="text/javascript"  charset="utf-8" src="js/jquery-2.1.0.js"></script>
<script type="text/javascript">
	$(function(){
		var userName = "15900000000";
		var passWord = "000000";
		var userType = "商户";
 		$("#btn").click(function(){
			 $.ajax({
		            url:"${path}register",
		             type: "POST",
		            data: 
		            	//表单提交 设置的请求参数Content-Type的值一定要有boundary的值，
		            	  JSON.stringify({"userName":userName,"passWord":passWord,"userType":userType}), 
		            	   contentType: "application/json",
		            	   dataType:"json",   
		                  success: function (data) {
		                	 
		                if(data)
		                	{layer.msg('操作成功');
		                	
		                	}
		                else
		                	{
		                	layer.msg('操作失败');
		                	}
		            }
		        });
		})
	})
</script>
</head>
<body>
<h2>Hello World!</h2>
<input type="button" id="btn" value="添加">
</body>
</html>
