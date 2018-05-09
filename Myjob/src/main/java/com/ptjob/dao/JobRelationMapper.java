package com.ptjob.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.PathVariable;

import com.ptjob.entity.JobRelation;
import com.ptjob.entity.JobRelationPage;

public interface JobRelationMapper {
  List<JobRelation> selectByUserName(String userName);
  int getJobRelationTotal(JobRelationPage jrp);
//  List<JobRelation> getJobRelationByPages(@Param(value= "jr")JobRelation jr,@Param (value="start") int start,@Param (value="pagesize") int pagesize);
  List<JobRelation> getJobRelationByPages(JobRelationPage jrp);
  
  int hireStudent(JobRelation jr);
  
  int cancleApplication(JobRelation jr);
}