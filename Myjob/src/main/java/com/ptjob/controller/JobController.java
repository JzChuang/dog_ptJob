package com.ptjob.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ptjob.entity.Company;
import com.ptjob.entity.Job;
import com.ptjob.entity.JobPage;
import com.ptjob.service.CompanyService;
import com.ptjob.service.JobService;
import com.ptjob.util.PageData;

@Controller
public class JobController {

	@Resource
	private JobService js ;
	
//	
//	@RequestMapping(value="showcompany")
//	@ResponseBody
//	public Company showCompanyByUser(String userName) {
//		return cs.selectCompanyByUser(userName);
//	}
	
	@RequestMapping(value="addjob",method=RequestMethod.POST,produces="text/html; charset=UTF-8")
	@ResponseBody
	public String addjob(Job job) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String publitime=sdf.format(System.currentTimeMillis());
		job.setPublishTime(publitime);
		job.setsicheck("否");
		job.setWanted("是");
		if(js.addJob(job))
			return "发布成功";
		return "发布失败";
	}
	
//	@RequestMapping(value="updatecompany",method=RequestMethod.POST)
//	public void updateCompany( Company company) {
//		cs.updateCompanyByUser(company);
//	}
	
	@RequestMapping(value="getjobbyusername",method=RequestMethod.GET,produces="text/html; charset=UTF-8")
	@ResponseBody
	public List<Job> getJobByUserName(String userName){
		return js.getJobsByUserName(userName);
	}
	
	//按照各种条件进行分页查询
	@RequestMapping(value="getJobsByPage/page/{page}")
	@ResponseBody
	public PageData<Job> getJobsByPage(@PathVariable(value = "page") int page,
			@RequestParam(value = "pageSize", defaultValue = "3") int pageSize,
		 JobPage jp){
		pageSize = 5;
		//System.out.println(jp);
		PageData<Job> pd = js.getJobsByPage(page, pageSize, jp);
		//System.out.println(pd.getData().get(0).getJobTitle());
//		List<Job> list = pd.getData();
//		for (Job job : list) {
//			System.out.println("工作000"+job);
//		}
		return pd;
	}
	/***
	 * 获取工作详情
	 * @param jobId
	 * @return
	 */
	@RequestMapping(value="jobdetail/{jobId}",produces = "application/json")
	@ResponseBody
	public Job getJobDetail(@PathVariable(value="jobId")int jobId) {
		Job job = new Job();
		job = js.getJobById(jobId);
		return job;
	}
	
	/***
	 * 停止招聘
	 * @param jobId
	 * @return
	 */
	@RequestMapping(value="stopwanted/{jobId}",produces = "application/json")
	@ResponseBody
	public String stopWanted(@PathVariable(value="jobId")int jobId) {
		if(js.stopWanted(jobId)) {
			return "操作成功";
		}
		return "操作失败";
	}
	
	/***
	 * 删除职位
	 * @param jobId
	 * @return
	 */
	@RequestMapping(value="deletejob/{jobId}",produces = "application/json")
	@ResponseBody
	public String deleteJob(@PathVariable(value="jobId")int jobId) {
		if(js.deleteJob(jobId)) {
			return "操作成功";
		}
		return "操作失败";
	}
	
	
	/***
	 * 通过工作编号获取发布人用户名
	 * @param jobId
	 * @return
	 */
	@RequestMapping(value="getusername",produces = "application/json")
	@ResponseBody
	public String getUserNameByJobid(int jobId) {
		return js.getJobById(jobId).getUserName();
	}
	
	
	@RequestMapping(value="IsCheckedJobs",method=RequestMethod.POST,produces="text/html; charset=UTF-8")
	@ResponseBody
	public String IsCheckedJobs(int jobId,String check) {
		Job job = new Job();
		job = js.getJobById(jobId);
		job.setsicheck(check);
		if(js.updateByPrimaryKeySelective(job)) {
			return "操作成功";
		}
		return "系统错误";
	}
}
