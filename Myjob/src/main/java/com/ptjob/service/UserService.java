package com.ptjob.service;

import java.util.List;

import com.ptjob.entity.Users;

public interface UserService {
	/**
	 * 根据学生的用户名在login表中查找用户类型为学生的用户
	 * @param userName 用户名
	 * @return
	 */
	public Users getUsersByNum (String userName);
	/**
	 * 用户注册
	 * @param u
	 * @return
	 */
	public boolean insertUsers(Users u);
	
	
	public List<Users> getAllUsers();
	
	
	public boolean updatePsw(Users u);
}
