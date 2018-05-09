package com.ptjob.service;

import com.ptjob.entity.Relation;

public interface RelationService {
	
	/***
	 * 投递简历
	 * 
	 * @param relation
	 */
	public boolean sendResumes(Relation relation);
	
	/***
	 * 取消投递
	 * 
	 */
	public boolean cancelResumes(Relation relation);
	
	/***
	 * 录用
	 */
	public boolean employStudent(Relation relation);
	
	
	public Relation selectByRecord(Relation relation);
	
}
 