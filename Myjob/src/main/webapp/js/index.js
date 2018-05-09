$(function(){
	 var username = $("#susername").val();
	 var usertype = $("#susertype").val();
	 /***
	  * 发布职位选项卡
	  */
	$("#publishjob_index").click(function(){	
		 if(username!=null&&username!=""){
			 if(usertype=="company"){
				 window.location="company-jump.jsp";
				 
			 }else{
				 layer.msg("企业用户才可发布工作");
			 }
		 }
		 else{
			 layer.open({
					type: 2,
					title: '欢迎登录',
					maxmin: true,
					skin : 'layui-layer-lan',
					shadeClose: true, //点击遮罩关闭层
					area: ['500px', '300px'],
					content: 'login.jsp'
				});
		 }
	})
	/**
	 * 管理中心选项卡
	 */
	$("#mangercenter_index").click(function(){
		if(username!=null&&username!=""){
			 if(usertype=="student"){
				 window.location="student-jump.jsp";
			 }else if(usertype=="company"){
				 window.location="company-jump.jsp";
			 }else{
				 window.location="admin-jump.jsp";
			 }
		 }
		else{
			 layer.open({
					type: 2,
					title: '欢迎登录',
					maxmin: true,
					skin : 'layui-layer-lan',
					shadeClose: true, //点击遮罩关闭层
					area: ['500px', '300px'],
					content: 'login.jsp'
				});
		 }
	})
	
	$("#contactus").click(function(){
		
	})
})
