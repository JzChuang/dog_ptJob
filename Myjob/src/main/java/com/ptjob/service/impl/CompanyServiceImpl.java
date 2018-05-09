package com.ptjob.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ptjob.dao.CompanyMapper;
import com.ptjob.entity.Company;
import com.ptjob.service.CompanyService;

@Service
public class CompanyServiceImpl implements CompanyService {
	@Resource
	private CompanyMapper cm;
	public void insertCompany(Company company) {
		// TODO Auto-generated method stub
		cm.insert(company);
	}

	
	public Company selectCompanyByUser(String userName) {
		// TODO Auto-generated method stub
		return cm.selectCompanyByUser(userName);
	}


	public boolean updateCompanyByUser(Company company) {
		// TODO Auto-generated method stub
		return cm.updateByUser(company)>0;
	}
}
