$(function(){
	$("#updatepsw").click(function(){
		var oldpassword = $("#oldpassword").val();
		var newpassword1 = $("#newpassword1").val();
		var newpassword2 = $("#newpassword2").val();
		$.post("updatepsw", {
			"oldpassword" : oldpassword,
			"newpassword1" : newpassword1,
			"newpassword2" : newpassword2
		}, function(pd, satus) {
			
			if (pd!="") {
				if(pd=="修改成功"){
					 $(':input','#passwordform')
				       .not(':button,:submit,:reset,:hidden')   //将myform表单中input元素type为button、submit、reset、hidden排除
				       .val('');  //将input元素的value设为空值
				}
				layer.msg(pd)
			}
		});
	})
})