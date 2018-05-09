package com.ptjob.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ptjob.entity.JobRelation;
import com.ptjob.entity.JobRelationPage;
import com.ptjob.service.JobRelationService;
import com.ptjob.util.PageData;

@Controller
public class JobRelationController {
	@Resource
	private JobRelationService jrs;
	
	//按照各种条件进行分页查询
		@RequestMapping(value="getJobRelationByPage/page/{page}")
		@ResponseBody
		public PageData<JobRelation> getJobRelationByPage(@PathVariable(value = "page") int page,
				@RequestParam(value = "pageSize", defaultValue = "3") int pageSize,
			 JobRelationPage jrp){
			pageSize = 5;
		 //   System.out.println(jrp);
	
			PageData<JobRelation> pd = jrs.getJobRelationByPage(page, pageSize, jrp);
			//System.out.println(pd.getData().get(0).getJobTitle());
			/*List<JobRelation> list = pd.getData();
			for (JobRelation jr : list) {
				System.out.println("工作000"+jr);
			}*/
			return pd;
		}
		@RequestMapping(value="hireStudent",method=RequestMethod.POST,produces="text/html; charset=UTF-8")
		@ResponseBody
		public String hireStudent(JobRelation jr) {
			jr.setBusinessflag("是");
			if(jrs.hireStudent(jr))
				return "录用成功";
			return "系统错误";
		}
		
		@RequestMapping(value="cancleApplication",method=RequestMethod.POST,produces="text/html; charset=UTF-8")
		@ResponseBody
		public String cancleApplication(JobRelation jr) {
			if(jrs.cancleApplication(jr))
				return "取消成功";
			return "系统错误";
		}
		
		
		
}
