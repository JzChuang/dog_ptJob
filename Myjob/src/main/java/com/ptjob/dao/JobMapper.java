package com.ptjob.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ptjob.entity.Job;
import com.ptjob.entity.JobPage;

public interface JobMapper {


	int deleteByPrimaryKey(Integer jobId);

	int insert(Job record);

	int insertSelective(Job record);

	Job selectByPrimaryKey(Integer jobId);

	int updateByPrimaryKeySelective(Job record);

	int updateByPrimaryKey(Job record);

	
    /***
     * 查询所有已经发布的工作
     * @return
     */
    List<Job> getAllJobs();
    
    List<Job> getJobByUserName(String userName);
    
    List<Job> getJobByJobType(String jobType);
    
    List<Job> getJobByNoChecked(String sicheck);
    
    List<Job> getJobByWanted(String wanted);
    
    int getJobsTotal(JobPage jp);
    
    List<Job> getJobsByPages(JobPage jp);
    
 }