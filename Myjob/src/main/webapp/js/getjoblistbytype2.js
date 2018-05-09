
	//1 页面加载 就调用 ajax请求 同时包含了分页的显示
$(function(){
	var jobtype="";
	window.onload = function () {
		getjobbytype(1,"");
		}
	//判断所点击的是哪种类型的工作
	
	$("#jobtype0").click(function(){
		jobtype="";
		getjobbytype(1,jobtype);
	});
	//获取用户名
	$("#jobtype1").click(function(){
		jobtype="派单";
		getjobbytype(1,jobtype);
	});
	
	$("#jobtype2").click(function(){
		jobtype="促销";
		getjobbytype(1,jobtype);
	});
	
	$("#jobtype3").click(function(){
		jobtype="家教";
		getjobbytype(1,jobtype);
	});
	
	$("#jobtype4").click(function(){
		jobtype="服务员";
		getjobbytype(1,jobtype);
	});
	
	$("#jobtype5").click(function(){
		jobtype="话务员";
		getjobbytype(1,jobtype);
	});
	
	$("#jobtype6").click(function(){
		jobtype="刷单";
		getjobbytype(1,jobtype);
	});
	
	$("#jobtype7").click(function(){
		jobtype="销售";
		getjobbytype(1,jobtype);
	});
	
	$("#jobtype8").click(function(){
		jobtype="营业员";
		getjobbytype(1,jobtype);
	});
	
	$("#jobtype9").click(function(){
		jobtype="其他";
		getjobbytype(1,jobtype);
	});
	
	
	$(document).on("click",".pageNoAjax",function(){
		var page = $(this).text();
		getjobbytype(page,jobtype);
		
	});
	
	/***
	 * 获取userName发布的所有工作
	 */
	function getjobbytype(page,jobtype){
		$.get("getJobsByPage/page/"+page+"?jobType="+jobtype,function (pd,satus){
			//调用showData(pd,satus)
			 showData(pd,satus);
		});
	}
	
})
	
		




function showData(pd,satus)
{
	//清除 ul中分页有关的部分
	$(".pagination li").remove();
	//清除 表格中的分页数据内容
	$("tbody tr").remove();
	

	//遍历pd中data（集合）
	//因为在服务器端已经返回json对象，所以这里不用使用JSON.parse
	$.each(pd.data,function(index,job){
		//alert("总页数："+pd.totalPage);
		$("tbody").append("<tr><td class="+"jobId"+" style="+"display:none"+">"+job.jobId+"</td><td title="+job.jobTitle+"><a class='jobTitle'>"+job.jobTitle+"</a></td><td>"+job.area+"</td><td>"+job.sex+"</td>"+
				"<td>"+job.salary+"</td><td>"+job.publishTime+"</td><td><button class='btn btn-success resumes'>投递简历</button>&nbsp;&nbsp;<button class='btn btn-primary collect'>收藏</button></td></tr>");
	
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