package com.ptjob.dao;

import java.util.List;

import com.ptjob.entity.JobCollect;
import com.ptjob.entity.JobRelation;
import com.ptjob.entity.JobRelationPage;

public interface JobCollectMapper {
	  int getJobConnectionTotal(JobCollect jobcollect);
	//  List<JobRelation> getJobRelationByPages(@Param(value= "jr")JobRelation jr,@Param (value="start") int start,@Param (value="pagesize") int pagesize);
	  List<JobCollect> getJobCollectionByPages(JobCollect jobcollect);
	  
	  int deleteCollection(JobCollect jobcollect);
}