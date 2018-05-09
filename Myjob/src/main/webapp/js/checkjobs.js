
	//1 页面加载 就调用 ajax请求 同时包含了分页的显示
$(function(){
	var check="否";
	window.onload = function () {
		getjobbyischecked(1,check);
		}
	//判断所点击的是哪种类型的工作
	
	$("#notcheckedjobs").click(function(){
		check="否";
		getjobbyischecked(1,check);
	});
	//获取用户名
	$("#checkedjobs").click(function(){
		check="是";
		getjobbyischecked(1,check);
	});
	
	
	
	$(document).on("click",".pageNoAjax",function(){
		var page = $(this).text();
		getjobbyischecked(page,check);
		
	});
	
	/***
	 * 获取userName发布的所有工作
	 */
	function getjobbyischecked(page,check){
		$.get("getJobsByPage/page/"+page+"?sicheck="+check,function (pd,satus){
			//调用showData(pd,satus)
			 showData(pd,satus);
		});
	}
	

	
		




function showData(pd,satus)
{
	//清除 ul中分页有关的部分
	$(".pagination li").remove();
	//清除 表格中的分页数据内容
	$("tbody tr").remove();
	$.each(pd.data,function(index,job){
		//alert("总页数："+pd.totalPage);
		if(check=="否"){
		$("tbody").append("<tr><td class="+"jobId"+" style="+"display:none"+">"+job.jobId+"</td><td title="+job.jobTitle+"><a class='jobTitle'>"+job.jobTitle+"</a></td><td>"+job.area+"</td><td>"+job.sex+"</td>"+
				"<td>"+job.salary+"</td><td>"+job.publishTime+"</td><td><button class='btn btn-success passed'>通过</button>");
		}
		else{
			$("tbody").append("<tr><td class="+"jobId"+" style="+"display:none"+">"+job.jobId+"</td><td title="+job.jobTitle+"><a class='jobTitle'>"+job.jobTitle+"</a></td><td>"+job.area+"</td><td>"+job.sex+"</td>"+
					"<td>"+job.salary+"</td><td>"+job.publishTime+"</td><td><button class='btn btn-warning return'>退回</button>");
		}
	
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


$(document).on("click",".passed",function(){
	var tr = $(this).parent().parent();
	var jobId = tr.children("td").eq(0).text();
	$.post("IsCheckedJobs",{"jobId":jobId,"check":"是"},function(pd){
		layer.msg(pd);
	})
	getjobbyischecked(1,"否");
})

$(document).on("click",".return",function(){
	var tr = $(this).parent().parent();
	var jobId = tr.children("td").eq(0).text();
	$.post("IsCheckedJobs",{"jobId":jobId,"check":"否"},function(pd){
		layer.msg(pd);
	})
	getjobbyischecked(1,"是");
})
})
