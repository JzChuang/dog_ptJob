<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://validform.rjboy.cn/wp-content/themes/validform/js/jquery-1.6.2.min.js"></script>
<script type="text/javascript" src="js/Validform_v5.3.2.js"></script>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
<form class="demoform">
<input type="text" class="inputxt" value="" name="name" datatype="s5-16" errormsg="昵称至少5个字符,最多16个字符！" />
</form>
</body>
<script type="text/javascript">
$(function(){
	$(".demoform").Validform({
		tiptype:2,
		datatype:{//传入自定义datatype类型【方式二】;
			"s5-16" : /^[\u4E00-\u9FA5\uf900-\ufa2d]{2,4}$/
		}
	});
	
})
</script>
</html>