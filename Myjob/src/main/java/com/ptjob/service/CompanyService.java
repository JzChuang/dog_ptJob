package com.ptjob.service;

import com.ptjob.entity.Company;

public interface CompanyService {

	public void insertCompany (Company company) ;
	
	public Company selectCompanyByUser(String userName);
	
	public boolean updateCompanyByUser(Company company);
}
