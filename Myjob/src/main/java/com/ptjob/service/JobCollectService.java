package com.ptjob.service;

import java.util.List;
import java.util.Map;

import com.ptjob.entity.Job;
import com.ptjob.entity.JobCollect;
import com.ptjob.entity.JobRelation;
import com.ptjob.entity.JobRelationPage;
import com.ptjob.util.PageData;

public interface JobCollectService {
	public PageData<JobCollect> getJobCollectionByPages(int page, int pageSize,JobCollect jobcollect);
	
	public boolean deleteCollection(JobCollect jobcollect);
}
