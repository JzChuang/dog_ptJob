package com.ptjob.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ptjob.entity.Company;
import com.ptjob.service.CompanyService;

@Controller
public class CompanyController {

	@Resource
	private CompanyService cs ;
	
	
	@RequestMapping(value="showcompany")
	@ResponseBody
	public Company showCompanyByUser(String userName) {
		return cs.selectCompanyByUser(userName);
	}
	
	@RequestMapping(value="insertcompany",method=RequestMethod.POST,produces="text/html; charset=UTF-8")
	public void insertCompany( Company company) {
		cs.insertCompany(company);
	}
	
	@RequestMapping(value="updatecompany",method=RequestMethod.POST)
	public void updateCompany( Company company) {
		cs.updateCompanyByUser(company);
	}
	
	
}
