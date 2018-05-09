package com.ptjob.dao;

import com.ptjob.entity.Relation;

public interface RelationMapper {
    int deleteByPrimaryKey(Integer relationId);

    int insert(Relation record);

    int insertSelective(Relation record);

    Relation selectByPrimaryKey(Integer relationId);

    int updateByPrimaryKeySelective(Relation record);

    int updateByPrimaryKey(Relation record);
    
    int updateByJobIdAndUserName(Relation record);
    
    Relation selectByRecord(Relation record);
}