package com.ptjob.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ptjob.dao.JobCollectMapper;
import com.ptjob.entity.JobCollect;
import com.ptjob.entity.JobRelation;
import com.ptjob.service.JobCollectService;
import com.ptjob.util.PageData;

@Service
public class JobCollectServiceImpl implements JobCollectService {
	@Resource
	private JobCollectMapper jcm;
	
	public PageData<JobCollect> getJobCollectionByPages(int page, int pageSize, JobCollect jobcollect) {
		int start = (page -1)*pageSize;
		int total = jcm.getJobConnectionTotal(jobcollect);
		PageData<JobCollect> pd = new PageData<JobCollect>();
		//System.out.println("service"+jrp);
		jobcollect.setStart(start);
		jobcollect.setPagesize(pageSize);
		pd.setData(jcm.getJobCollectionByPages(jobcollect));
		pd.setPage(page);
		pd.setPageSize(pageSize);
		pd.setTotal(total);
		return pd;
		
	}
	
	public boolean deleteCollection(JobCollect jobcollect) {
		// TODO Auto-generated method stub
		return jcm.deleteCollection(jobcollect)>0;
	}

}
