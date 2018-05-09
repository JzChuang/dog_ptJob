package com.ptjob.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ptjob.dao.UsersMapper;
import com.ptjob.entity.Users;
import com.ptjob.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Resource
	private UsersMapper um;
	
	public Users getUsersByNum(String userName) {
		// TODO Auto-generated method stub
		Users u = um.getUsersByNum(userName);
		return u;
	}

	public boolean insertUsers(Users u) {
		// TODO Auto-generated method stub
		return um.insertUsers(u)>0;
	}
	
	public List<Users> getAllUsers() {
		// TODO Auto-generated method stub
		return um.getAllUsers();
	}
	
	public boolean updatePsw(Users u) {
		// TODO Auto-generated method stub
		return um.updatePsw(u)>0;
	}

}
