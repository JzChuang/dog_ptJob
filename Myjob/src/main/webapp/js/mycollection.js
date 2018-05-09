
$(function(){
	
/*	$("#jobmanage").click(function(page){
		alert(page)
		$.get("getJobsByPage/page/1?userName="+userName,function (pd,satus){
			//调用showData(pd,satus)
			 showData(pd,satus);
		});
	})*/
	
	/*$(document).on("click",".pageNoAjax",function(){

	//注意参数的传递 json格式
	$.get("getJobsByPage/page/"+$(this).text()+"?userName="+userName,function (pd,satus){
		//调用showData(pd,satus)
		showData(pd,satus);
	});

	
});*/
	//判断是哪个选项卡被激活。1-所有岗位  2-等待审核 3-正在招聘 4-招聘结束
	//获取用户名
	var userName1=$("#userNamelog").text();
	$("#mycollection").click(function(){
		getMyCollections(1);
	});
	
	
	
	$(document).on("click",".pageNoAjax",function(){
		var page = $(this).text();
		getMyCollections(page);
		
	});
	
	/***
	 * 获取userName发布的所有工作
	 */
	function getMyCollections(page){
		$.get("getJobCollectByPage/page/"+page+"?studentName="+userName1,function (pd,satus){
			//调用showData(pd,satus)
			 showData1(pd,satus);
		});
	}
	
	/***
	 * 取消收藏
	 */
	$(document).on("click",".cancollect",function(){				
		var tr = $(this).parent().parent();
		var jobId = tr.children("td").eq(0).text();

		$.post("deleteCollection",{"jobId":jobId,"userName":userName1},function(data) {
			
				});
		getMyCollections(1);
	})
	
	
})
	
		




function showData1(pd,satus)
{
	//清除 ul中分页有关的部分
	$(".pagination li").remove();
	//清除 表格中的分页数据内容
	$("tbody tr").remove();
	
	
	//遍历pd中data（集合）
	//因为在服务器端已经返回json对象，所以这里不用使用JSON.parse
	$.each(pd.data,function(index,job){
	
		//alert(arti.articleTitle);
		$(".mycollect01").append("<tr><td class="+"jobId"+" style="+"display:none"+">"+job.jobId+"</td><td><a class='jobTitle'>"+job.jobTitle+"</a></td><td>"+job.area+"</td><td>"+job.sex+"</td>"+
				"<td>"+job.salary+"</td><td>"+job.publishTime+"</td><td><button class='btn btn-warning cancollect'>取消收藏</button>");
	
	});
	
	$(".jobpage").append("<li><a href='#'>Prev</a></li>");
	//循环显示页码
	for(var i=1; i<=pd.totalPage;i++)
		{
		    if(pd.page == i)
		    	{
		    	 $(".jobpage").append("<li class='active'><a class='pageNoAjax'>"+i+"</a></li>");
		    	
		    	}
		    else
		    	{
		    	 $(".jobpage").append("<li class=''><a class='pageNoAjax'>"+i+"</a></li>");
		    	
		    	}
		  
		}

	
	$(".jobpage").append("<li><a href='#'>Next</a></li>");
	
	/*偶数行和奇数行背景色变化 .not(":first")*/
	$("tbody tr:even").attr("class", "info");
	$("tbody tr:odd").attr("class", "success");
	
	
}