package com.ptjob.dao;

import com.ptjob.entity.Company;

public interface CompanyMapper {
    int deleteByPrimaryKey(Integer companyId);

    int insert(Company record);

    int insertSelective(Company record);

    Company selectByPrimaryKey(Integer companyId);

    int updateByPrimaryKeySelective(Company record);

    int updateByPrimaryKey(Company record);
    
    Company selectCompanyByUser (String userName);
    
    int updateByUser (Company company);
}