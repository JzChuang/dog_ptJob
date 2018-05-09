$(document).on("click",".resumesinfo",function(){
	var tr = $(this).parent().parent();
	var jobId = tr.children("td").eq(0).text();
	layer.open({
		type: 2,
		title: '报名人员管理',
		maxmin: true,
		skin : 'layui-layer-lan',
		shadeClose: true, //点击遮罩关闭层
		area: ['800px', '600px'],
		content: 'resumemanger.jsp',
		success: function (layero, index) {  
            // 获取子页面的iframe  
            var iframe = window['layui-layer-iframe' + index];  
            // 向子页面的全局函数child传参  
            iframe.getJobResumeInfo(jobId);  
        }  
	});
})