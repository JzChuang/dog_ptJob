var flag = 0;// 验证标识，分手机号、验证码、密码三级验证，每一级通过flag+1,flag==3时，验证通过，允许注册
var flag1;
var flag2;
var flag3;
function judgereg() {
	flag = flag1 + flag2 + flag3;
	if (flag == 3) {
		$(".regbtn").attr('disabled', false);
	} else {
		$(".regbtn").attr('disabled', true);
	}
}

//企业注册验证
$(function() {
	judgereg();
	// 1、验证手机号码
	$("#phonenum1").blur(
			function() {
				flag = 0;
				var userName = $(this).val();
				$.ajax({
					url : "judgePhoneNum",
					type : "get",
					data : {
						"userName" : userName
					},
					success : function(pd) {
						if (pd[0] == 1) {
							$("#phonenamspan1").attr('class',
									'glyphicon glyphicon-ok');
							$("#phonenamspan1").css('color', 'green');
							$("#phonenamspan1").html(pd.substring(1, 16));
							$("#send1").attr('disabled', false);
							flag1 = 1;
						}
						// 检测到手机号已经被注册
						else if (pd[0] == 2) {
							$("#phonenamspan1").attr('class',
									'glyphicon glyphicon-remove');
							$("#phonenamspan1").css('color', 'red');
							$("#phonenamspan1").html(
									"该手机号已经被注册，请<a id='tologin'>直接登录</a>");
							$("#send1").attr('disabled', true);
						} else if (pd[0] == 0) {
							$("#phonenamspan1").attr('class',
									'glyphicon glyphicon-remove');
							$("#phonenamspan1").css('color', 'red');
							$("#phonenamspan1").html(pd.substring(1, 16));
							$("#send1").attr('disabled', true);
						}
					}
				});
			})

	// 2、发送验证码
	$("#send1").click(
			function() {
				var phoneNum = $("#phonenum1").val();
				// 注意参数的传递 json格式
				$.get("sendYZM", {
					"phoneNum" : phoneNum
				}, function(pd, satus) {
					// 调用showData(pd,satus)
					var state = $.parseJSON(pd).respDesc;
					// 判断发送状态
					if (state == "请求成功。") {
						var second = 59;
						// 倒计时结束后才可再次发送
						var timer = setInterval(function() {
							$("#send1").html(second + "秒后重试");
							$("#send1").attr('disabled', true);
							if (second > 0)
								second--;
							else {
								$("#send1").html("重新发送");
								$("#send1").attr('disabled', false);
							}
						}, 1000);
					}
					// 未发送成功时提示用户
					else {
						$("#yanzhengmaspan1").attr('class',
								"	glyphicon glyphicon-remove");
						$("#yanzhengmaspan1").css('color', 'red');
						$("#yanzhengmaspan1").html(state.substring(0, 16));
						// alert(state);
					}
				});
			});

	// 3、判断验证码是否正确

	$("#yanzhengma1").blur(function() {
		flag2=0;
		var yznum = $(this).val();
		$.ajax({
			url : "judgeYZM",
			type : "get",
			data : {
				"yanzhengma" : yznum
			},
			success : function(state) {
				if(state[0]==1){
					$("#yanzhengmaspan1").attr('class','glyphicon glyphicon-ok');
					$("#yanzhengmaspan1").css('color','green');
					$("#yanzhengmaspan1").html("验证码正确");
					flag2=1;
				}
				else{
					$("#yanzhengmaspan1").attr('class','glyphicon glyphicon-remove');
					$("#yanzhengmaspan1").css('color','red');
					$("#yanzhengmaspan1").html("验证码错误");
				}
			}
		})
	})
	
	//4、验证密码是否符合规范
	$("#password1").blur(function(){
		flag3=0;
		var password = $(this).val();
		if(password.length>5&&password.length<20){
			$("#passwordspan1").attr('class','glyphicon glyphicon-ok');
			$("#passwordspan1").css('color','green');
			$("#passwordspan1").html("密码长度符合要求");
			flag3=1;
			judgereg();
		}
		else{
			$("#passwordspan1").attr('class','glyphicon glyphicon-remove');
			$("#passwordspan1").css('color','red');
			$("#passwordspan1").html("密码长度不符合规定");
		}
	})
	
	
//	注册！！！
	$("#reg-company").click(function(){
		var userName = $("#phonenum1").val();
		var passWord = $("#password1").val();
		var userType = "企业";
		$.ajax({
	        url:"register",
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
		var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
	     parent.layer.close(index);
	     parent.layer.msg('注册成功', {shade: 0.3});
	})
	})
	
	
/***
 * 学生用户注册
 */
//企业注册验证
$(function() {
	judgereg();
	// 1、验证手机号码
	$("#phonenum2").blur(
			function() {
				flag = 0;
				var userName = $(this).val();
				$.ajax({
					url : "judgePhoneNum",
					type : "get",
					data : {
						"userName" : userName
					},
					success : function(pd) {
						if (pd[0] == 1) {
							$("#phonenamspan2").attr('class',
									'glyphicon glyphicon-ok');
							$("#phonenamspan2").css('color', 'green');
							$("#phonenamspan2").html(pd.substring(1, 16));
							$("#send1").attr('disabled', false);
							flag1 = 1;
						}
						// 检测到手机号已经被注册
						else if (pd[0] == 2) {
							$("#phonenamspan2").attr('class',
									'glyphicon glyphicon-remove');
							$("#phonenamspan2").css('color', 'red');
							$("#phonenamspan2").html(
									"该手机号已经被注册，请<a id='tologin'>直接登录</a>");
							$("#send2").attr('disabled', true);
						} else if (pd[0] == 0) {
							$("#phonenamspan2").attr('class',
									'glyphicon glyphicon-remove');
							$("#phonenamspan2").css('color', 'red');
							$("#phonenamspan2").html(pd.substring(1, 16));
							$("#send2").attr('disabled', true);
						}
					}
				});
			})

	// 2、发送验证码
	$("#send2").click(
			function() {
				var phoneNum = $("#phonenum2").val();
				// 注意参数的传递 json格式
				$.get("sendYZM", {
					"phoneNum" : phoneNum
				}, function(pd, satus) {
					// 调用showData(pd,satus)
					var state = $.parseJSON(pd).respDesc;
					// 判断发送状态
					if (state == "请求成功。") {
						var second = 59;
						// 倒计时结束后才可再次发送
						var timer = setInterval(function() {
							$("#send2").html(second + "秒后重试");
							$("#send2").attr('disabled', true);
							if (second > 0)
								second--;
							else {
								$("#send2").html("重新发送");
								$("#send2").attr('disabled', false);
							}
						}, 1000);
					}
					// 未发送成功时提示用户
					else {
						$("#yanzhengmaspan2").attr('class',
								"	glyphicon glyphicon-remove");
						$("#yanzhengmaspan2").css('color', 'red');
						$("#yanzhengmaspan2").html(state.substring(0, 16));
						// alert(state);
					}
				});
			});

	// 3、判断验证码是否正确

	$("#yanzhengma2").blur(function() {
		flag2=0;
		var yznum = $(this).val();
		$.ajax({
			url : "judgeYZM",
			type : "get",
			data : {
				"yanzhengma" : yznum
			},
			success : function(state) {
				if(state[0]==1){
					$("#yanzhengmaspan2").attr('class','glyphicon glyphicon-ok');
					$("#yanzhengmaspan2").css('color','green');
					$("#yanzhengmaspan2").html("验证码正确");
					flag2=1;
				}
				else{
					$("#yanzhengmaspan2").attr('class','glyphicon glyphicon-remove');
					$("#yanzhengmaspan2").css('color','red');
					$("#yanzhengmaspan2").html("验证码错误");
				}
			}
		})
	})
	
	//4、验证密码是否符合规范
	$("#password2").blur(function(){
		flag3=0;
		var password = $(this).val();
		if(password.length>5&&password.length<20){
			$("#passwordspan2").attr('class','glyphicon glyphicon-ok');
			$("#passwordspan2").css('color','green');
			$("#passwordspan2").html("密码长度符合要求");
			flag3=1;
			judgereg();
		}
		else{
			$("#passwordspan2").attr('class','glyphicon glyphicon-remove');
			$("#passwordspan2").css('color','red');
			$("#passwordspan2").html("密码长度不符合规定");
		}
	})
	
	
//	注册！！！
	$("#reg-user").click(function(){
		
		var userName = $("#phonenum2").val();
		var passWord = $("#password2").val();
		var userType = "学生";
		$.ajax({
	        url:"register",
	         type: "POST",
	        data: 
	        	//表单提交 设置的请求参数Content-Type的值一定要有boundary的值，
	        	  JSON.stringify({"userName":userName,"passWord":passWord,"userType":userType}), 
	        	   contentType: "application/json",
	        	   dataType:"json",   
	              success: function (data) {
	            	
	            	 
	            	}
	    });
			 var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
		     parent.layer.close(index);
		     parent.layer.msg('注册成功', {shade: 0.3});
	})
	})
	
$(function(){
	$(".jumplogin").click(function(){
		 var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
	     parent.layer.close(index);
	     parent.layer.open({
			type: 2,
			title: '欢迎登录',
			maxmin: true,
			skin : 'layui-layer-lan',
			shadeClose: true, //点击遮罩关闭层
			area: ['500px', '300px'],
			content: 'login.jsp'
		});
	})
})