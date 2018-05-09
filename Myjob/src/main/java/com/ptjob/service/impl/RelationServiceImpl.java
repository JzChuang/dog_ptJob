package com.ptjob.service.impl;

import java.text.SimpleDateFormat;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ptjob.dao.RelationMapper;
import com.ptjob.entity.Relation;
import com.ptjob.service.RelationService;

@Service
public class RelationServiceImpl implements RelationService {
	
	@Resource
	private RelationMapper rm;
	
	public boolean sendResumes(Relation relation) {
		// TODO Auto-generated method stub
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
		String time = sdf.format(System.currentTimeMillis());
		relation.setStudentflag("是");
		relation.setStutime(time);
		return rm.insert(relation)>0;

	}

	public boolean cancelResumes(Relation relation) {
		// TODO Auto-generated method stub
		relation.setStudentflag("否");
		return rm.updateByJobIdAndUserName(relation)>0;
	}

	public boolean employStudent(Relation relation) {
		// TODO Auto-generated method stub
		relation.setBusinessflag("是");
		return rm.updateByJobIdAndUserName(relation)>0;
	}

	public Relation selectByRecord(Relation relation) {
		// TODO Auto-generated method stub
		return rm.selectByRecord(relation);
	}

}
