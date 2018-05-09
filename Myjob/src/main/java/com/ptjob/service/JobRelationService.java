package com.ptjob.service;


import com.ptjob.entity.JobRelation;
import com.ptjob.entity.JobRelationPage;
import com.ptjob.util.PageData;

public interface JobRelationService {
	public PageData<JobRelation> getJobRelationByPage(int page, int pageSize,JobRelationPage jrp);
	
	public boolean hireStudent(JobRelation jr); 
	
	public boolean cancleApplication(JobRelation jr);
}
