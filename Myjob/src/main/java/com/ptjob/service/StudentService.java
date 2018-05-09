package com.ptjob.service;

import com.ptjob.entity.Student;

public interface StudentService {

	public void insertStudent (Student student) ;
	
	public Student  selectStudentByUser(String userName);
	
	public boolean updateStudentByUser(Student student);
}
