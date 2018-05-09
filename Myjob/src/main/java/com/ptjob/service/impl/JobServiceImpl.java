package com.ptjob.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ptjob.dao.JobMapper;
import com.ptjob.entity.Job;
import com.ptjob.entity.JobPage;
import com.ptjob.service.JobService;
import com.ptjob.util.PageData;

@Service
public class JobServiceImpl implements JobService {
	@Resource
	private JobMapper jm;

	public boolean addJob(Job job) {
		// TODO Auto-generated method stub
		return jm.insert(job)>0;
	}

	public Job getJobById(int id) {
		// TODO Auto-generated method stub
		return jm.selectByPrimaryKey(id);
	}

	public List<Job> getAllJobs() {
		// TODO Auto-generated method stub
		return jm.getAllJobs();
	}

	public List<Job> getJobsByUserName(String userName) {
		// TODO Auto-generated method stub
		return jm.getJobByUserName(userName);
	}

	public List<Job> getJobsByJobType(String jobType) {
		// TODO Auto-generated method stub
		return jm.getJobByJobType(jobType);
	}

	public PageData<Job> getJobsByPage(int page, int pageSize,JobPage jp) {
		// TODO Auto-generated method stub
		int start = (page -1)*pageSize;
		int total = jm.getJobsTotal(jp);
		PageData<Job> pd = new PageData<Job>();
		System.out.println("service"+jp);
		jp.setStart(start);
		jp.setPagesize(pageSize);
		pd.setData(jm.getJobsByPages(jp));
		pd.setPage(page);
		pd.setPageSize(pageSize);
		pd.setTotal(total);
		return pd;
	}
	
	public boolean stopWanted(int jobId) {
		// TODO Auto-generated method stub
		Job job = jm.selectByPrimaryKey(jobId);
		job.setWanted("·ñ");		
		return jm.updateByPrimaryKey(job)>0;
	}
	
	public boolean deleteJob(int jobId) {
		// TODO Auto-generated method stub
		return jm.deleteByPrimaryKey(jobId)>0;
	}
	
	public boolean updateByPrimaryKeySelective(Job job) {
		// TODO Auto-generated method stub
		return jm.updateByPrimaryKey(job)>0;
	}
}
