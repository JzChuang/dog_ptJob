package com.ptjob.dao;

import java.util.List;

import com.ptjob.entity.Users;

public interface UsersMapper {
	//查询所有的用户
	List<Users> getAllUsers();
	//根据用户名查询用户
	Users selectStuByName(String userName);
	
    int deleteByPrimaryKey(Integer logId);

    int insertUsers(Users record);

    int insertSelective(Users record);
    //根据手机号查询用户是否
    Users getUsersByNum(String userName);
    
    Users selectByPrimaryKey(Integer logId);

    int updateByPrimaryKeySelective(Users record);

    int updateByPrimaryKey(Users record);
    //修改用户密码
    int updatePsw(Users user);
}