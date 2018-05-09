<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="layer/layer.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css" />
<script src="bootstrap/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
</head>
<script type="text/javascript">
function getJobResumeInfo(jobId){
	var flag=1;
	getnotpassedjobs(1)
	$("#hired").click(function(){
		flag=2;
		getpassedjobs(1);
	})
	$("#nothired").click(function(){
		flag=1;
		getnotpassedjobs(1);
	})
	function getnotpassedjobs(page){
		$.get("getJobRelationByPage/page/"+page+"?jobId="+jobId+"&businessflag=否",function (pd,satus){
			//调用showData(pd,satus
			 showData(pd,1);
		});
	}
	function getpassedjobs(page){
		$.get("getJobRelationByPage/page/"+page+"?jobId="+jobId+"&businessflag=是",function (pd,satus){
			//调用showData(pd,satus
			 showData(pd,2);
		});
	}
	
	function showData(pd,satus)
	{
		//清除 ul中分页有关的部分
		$(".pagination li").remove();
		//清除 表格中的分页数据内容
		$("tbody tr").remove();
		
		
		//遍历pd中data（集合）
		//因为在服务器端已经返回json对象，所以这里不用使用JSON.parse
		$.each(pd.data,function(index,jr){
			//alert(arti.articleTitle);
			if(satus==1)
				$("tbody").append("<tr><td class="+"jobId"+" style="+"display:none"+">"+jr.jobId+"</td><tr><td class="+"studentName"+" style="+"display:none"+">"+jr.studentName+"</td><td><a class='nickName'>"+jr.nickName+"</a></td><td>"+jr.stutime+"</td><td><button class='btn btn-primary queryinfo'>查看简历</button>&nbsp;&nbsp<button class='btn btn-success apply'>录用</button>");
			else
				$("tbody").append("<tr><td class="+"jobId"+" style="+"display:none"+">"+jr.jobId+"</td><tr><td class="+"studentName"+" style="+"display:none"+">"+jr.studentName+"</td><td><a class='nickName'>"+jr.nickName+"</a></td><td>"+jr.stutime+"</td><td><button class='btn btn-primary queryinfo'>查看简历</button>");
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
	
	
	/* 录用学生 */
	$(document).on("click",".apply",function(){
		var tr = $(this).parent().parent();
		
		var studentName = tr.children("td").eq(0).text();
		//alert("工作编号："+jobId+"学生名"+studentName)
		 $.post("hireStudent",{"jobId":jobId,"studentName":studentName},function(pd,stues){
			 getnotpassedjobs(1);
			layer.msg(pd);
		}) 
	})
	
	
	/* 查看学生简历 */
	$(document).on("click",".queryinfo",function(){
		var tr = $(this).parent().parent();
		
		var studentName = tr.children("td").eq(0).text();
		window.location.href = "studentinfo.jsp?username="+studentName;
		
	})
	
}

</script>
<body>
<h3>报名人员列表</h3>
<hr>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="tabbable" id="tabs-125582">
				<ul class="nav nav-tabs daohang">
					<li class="active">
						 <a href="#panel-948879" id="nothired" data-toggle="tab">未录用</a>
					</li>
					<li>
						 <a href="#panel-768697" id="hired" data-toggle="tab">已录用</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="panel-948879">
						<table  class="table table-bordered table-hover" id="joblists">
	<thead>
		<tr>
			<th>投递人</th>
			<th>投递时间</th>
			<th>操作</th>
		</tr>
	</thead>
	<tbody>

	 <!-- 这里的数据需要通过jquery(javascript) 的代码来做实现-->

	</tbody>
</table>

<center>
			<ul class="pagination jobpage">
               <!-- 分页的代码 需要使用jquery来完成 -->
			</ul>
	</center>

					</div>
					<div class="tab-pane" id="panel-768697">
						<table  class="table table-bordered table-hover" id="joblists">
	<thead>
		<tr>
			<th>投递人</th>
			<th>投递时间</th>
			<th>操作</th>
		</tr>
	</thead>
	<tbody>

	 <!-- 这里的数据需要通过jquery(javascript) 的代码来做实现-->

	</tbody>
</table>

<center>
			<ul class="pagination jobpage">
               <!-- 分页的代码 需要使用jquery来完成 -->
			</ul>
	</center>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
<script type="text/javascript">
$(function(){
	/* 初始化导航栏样式 */
	$(".daohang li a").eq(0).css("background-color","orange");
	$(".daohang li a").eq(0).css("color","white");
	 $(".daohang").on("click","li",function(){ 
		 $(".daohang li a").css("background-color","white");
		 $(".daohang li a").css("color","black");
		$(this).find("a").css("background-color","orange");
		$(this).find("a").css("color","white");
	}) 
	
	
	
	 
})

</script>
</html>