package com.ptjob.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ptjob.dao.JobRelationMapper;
import com.ptjob.entity.Job;
import com.ptjob.entity.JobRelation;
import com.ptjob.entity.JobRelationPage;
import com.ptjob.service.JobRelationService;
import com.ptjob.util.PageData;

@Service
public class JobRelationServiceImpl implements JobRelationService {
	@Resource
	private JobRelationMapper jrm;
	
	public PageData<JobRelation> getJobRelationByPage(int page, int pageSize,JobRelationPage jrp) {
		// TODO Auto-generated method stub
		int start = (page -1)*pageSize;
		
		int total = jrm.getJobRelationTotal(jrp);
		System.out.println("servicejrp:"+jrp);
		System.out.println("×Ü¼ÇÂ¼Êý£º"+total);
		PageData<JobRelation> pd = new PageData<JobRelation>();
		//System.out.println("service"+jrp);
		jrp.setStart(start);
		jrp.setPagesize(pageSize);
		pd.setData(jrm.getJobRelationByPages(jrp));
		pd.setPage(page);
		pd.setPageSize(pageSize);
		pd.setTotal(total);
		return pd;
	
	}

	public boolean hireStudent(JobRelation jr) {
		// TODO Auto-generated method stub
		return jrm.hireStudent(jr)>0;
	}
	
	
	public boolean cancleApplication(JobRelation jr) {
		// TODO Auto-generated method stub
		return jrm.cancleApplication(jr)>0;
	}
}
