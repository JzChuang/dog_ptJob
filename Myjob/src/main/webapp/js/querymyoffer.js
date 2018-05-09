
	//1 页面加载 就调用 ajax请求 同时包含了分页的显示
$(function(){
	var userName=$("#userNamelog").text();
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
	var buttonflag;
	//获取用户名
	var userName=$("#userNamelog").text();
	$("#application").click(function(){
		getAllJobs(1);
		buttonflag=1;
	});
	
	$("#selecta").click(function(){
		getAllJobs(1);
		buttonflag=1;
	});
	
	$("#selectb").click(function(){
		getpassedjobs(1);
		buttonflag=2;
	});
	
	$("#selectc").click(function(){
		getnotpassedjobs(1);
		buttonflag=3;
	});
	
	
	$(document).on("click",".pageNoAjax",function(){
		var page = $(this).text();
		if(buttonflag==1){
			getAllJobs(page);
		}else if(buttonflag==2){
			getpassedjobs(page);
		}
		else if(buttonflag==3){
			getnotpassedjobs(page);
		}
		
	});
	
	
	function getAllJobs(page){
		$.get("getJobRelationByPage/page/"+page+"?studentName="+userName,function (pd,satus){
			//调用showData(pd,satus)
			 showData(pd,satus);
		});
	}
	
	
	function getnotpassedjobs(page){
		$.get("getJobRelationByPage/page/"+page+"?studentName="+userName+"&businessflag=否",function (pd,satus){
			//调用showData(pd,satus
			 showData(pd,satus);
		});
	}

	function getpassedjobs(page){
		$.get("getJobRelationByPage/page/"+page+"?studentName="+userName+"&businessflag=是",function (pd,satus){
			//调用showData(pd,satus)
			 showData(pd,satus);
		});
	}
	
	/***
	 * 取消申请
	 */
	$(document).on("click",".cancleapply",function(){				
		var tr = $(this).parent().parent();
		var jobId = tr.children("td").eq(0).text();

		$.post("cancleApplication",{"jobId":jobId,"studentName":userName},function(data) {
			
				});
		getAllJobs(1);
	})
	
	
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
		//alert(arti.articleTitle);
		$(".myjob01").append("<tr><td class="+"jobId"+" style="+"display:none"+">"+job.jobId+"</td><td><a class='jobTitle'>"+job.jobTitle+"</a></td><td>"+job.area+"</td><td>"+job.sex+"</td>"+
				"<td>"+job.salary+"</td><td>"+job.publishTime+"</td><td><button class='btn btn-warning cancleapply'>取消申请</button>");
	
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