package com.ptjob.controller;

import java.util.regex.Pattern;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ptjob.entity.Student;
import com.ptjob.service.StudentService;

@Controller
public class StudentController {
	@Resource
	private StudentService ss;
	
	@RequestMapping(value="showStudent")
	@ResponseBody
	public Student showStudentByUser(String userName) {
		return ss.selectStudentByUser(userName);
	}
	
	@RequestMapping(value="updateStudent",method=RequestMethod.POST,produces="text/html; charset=UTF-8")
	@ResponseBody
	public String updateStudent(Student student) {
		String regex = "^((13[0-9])|(15[^4])|(18[0,2,3,5-9])|(17[0-8])|(147))\\d{8}$";
		Boolean flag = Pattern.matches(regex, student.getPhoneNum());
		if(flag) {
		ss.updateStudentByUser(student);
		return "ÊÇ";
		}else {
			return "·ñ";
		}
	}
	@RequestMapping(value="insertStudent",method=RequestMethod.POST,produces="text/html; charset=UTF-8")
	@ResponseBody
	public String insertStudent(Student student) {
		String regex = "^((13[0-9])|(15[^4])|(18[0,2,3,5-9])|(17[0-8])|(147))\\d{8}$";
		Boolean flag = Pattern.matches(regex, student.getPhoneNum());
		if(flag) {
			ss.insertStudent(student);
		return "ÊÇ";
		}else {
			return "·ñ";
		}
		
	}
}
