
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
	//判断是哪个选项卡被激活。1-所有岗位  2-等待审核 3-正在招聘 4-招聘结束
	var buttonflag;
	//获取用户名
	var userName=$("#userNamelog").text();
	$("#jobmanage").click(function(){
		getAllJobs(1);
		buttonflag=1;
	});
	
	$("#selecta").click(function(){
		getAllJobs(1);
		buttonflag=1;
	});
	
	$("#selectb").click(function(){
		getnotsicheckjobs(1);
		buttonflag=2;
	});
	
	$("#selectc").click(function(){
		getwantedjobs(1);
		buttonflag=3;
	});
	
	$("#selectd").click(function(){
		getnotwantedjobs(1);
		buttonflag=4;
	});
	$(document).on("click",".pageNoAjax",function(){
		var page = $(this).text();
		if(buttonflag==1){
			getAllJobs(page);
		}else if(buttonflag==2){
			getnotsicheckjobs(page);
		}
		else if(buttonflag==3){
			getwantedjobs(page);
		}
		else if(buttonflag==4){
			getnotwantedjobs(page);
		}
		
	});
	
	/***
	 * 获取userName发布的所有工作
	 */
	function getAllJobs(page){
		$.get("getJobsByPage/page/"+page+"?userName="+userName,function (pd,satus){
			//调用showData(pd,satus)
			 showData(pd,satus);
		});
	}
	
	/***
	 * 获取userName发布的没有通过审核的工作
	 */
	function getnotsicheckjobs(page){
		$.get("getJobsByPage/page/"+page+"?userName="+userName+"&sicheck=否",function (pd,satus){
			//调用showData(pd,satus)
			 showData(pd,satus);
		});
	}
	/***
	 * 获取userName发布的正在招聘的工作
	 */
	function getwantedjobs(page){
		$.get("getJobsByPage/page/"+page+"?userName="+userName+"&wanted=是"+"&sicheck=是",function (pd,satus){
			//调用showData(pd,satus)
			 showDatawanteding(pd,satus);
		});
	}
	/***
	 * 获取userName发布的已经停止招聘的工作
	 */
	function getnotwantedjobs(page){
		$.get("getJobsByPage/page/"+page+"?userName="+userName+"&wanted=否",function (pd,satus){
			//调用showData(pd,satus)
			 showData(pd,satus);
		});
	}
	
	
	/* 停止招聘 */
	$(document).on("click",".stopbtn",function(){				
		var tr = $(this).parent().parent();
		var jobId = tr.children("td").eq(0).text();

		$.post("stopwanted/"+jobId,"",function(data) {
			
				});
		getwantedjobs(1);
		
	})
	
	
		/* 删除工作 */
	$(document).on("click",".delbtn",function(){				
		var tr = $(this).parent().parent();
		var jobId = tr.children("td").eq(0).text();

		$.post("deletejob/"+jobId,"",function(data) {
			
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
		$("tbody").append("<tr><td class="+"jobId"+" style="+"display:none"+">"+job.jobId+"</td><td><a class='jobTitle'>"+job.jobTitle+"</a></td><td>"+job.area+"</td><td>"+job.sex+"</td>"+
				"<td>"+job.salary+"</td><td>"+job.publishTime+"</td><td>&nbsp;&nbsp;<button class='btn btn-danger delbtn'>删除</button></td></tr>");
	
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


function showDatawanteding(pd,satus)
{
	//清除 ul中分页有关的部分
	$(".pagination li").remove();
	//清除 表格中的分页数据内容
	$("tbody tr").remove();
	
	
	//遍历pd中data（集合）
	//因为在服务器端已经返回json对象，所以这里不用使用JSON.parse
	$.each(pd.data,function(index,job){
	
		//alert(arti.articleTitle);
		$("tbody").append("<tr><td class="+"jobId"+" style="+"display:none"+">"+job.jobId+"</td><td><a class='jobTitle'>"+job.jobTitle+"</a></td><td>"+job.area+"</td><td>"+job.sex+"</td>"+
				"<td>"+job.salary+"</td><td>"+job.publishTime+"</td><td><button class='btn btn-warning stopbtn'>停止招聘</button>&nbsp;&nbsp;&nbsp;<button class='btn btn-primary resumesinfo'>投递情况</button></td></tr>");
	
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

