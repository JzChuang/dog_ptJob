package com.ptjob.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ptjob.dao.StudentMapper;
import com.ptjob.entity.Student;
import com.ptjob.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService {
	@Resource
	private StudentMapper sm;
	
	public void insertStudent(Student student) {
		// TODO Auto-generated method stub
		 sm.insert(student);
	}

	public Student selectStudentByUser(String userName) {
		// TODO Auto-generated method stub
		return sm.selectStudentByUser(userName);
	}

	public boolean updateStudentByUser(Student student) {
		// TODO Auto-generated method stub
		return sm.updateByUserName(student)>0;
	}

}
