package com.ptjob.entity;

import org.springframework.stereotype.Component;

@Component
public class Users {
    private Integer logId;

    private String userName;

    private String passWord;

    private String userType;

    public Integer getLogId() {
        return logId;
    }

    public void setLogId(Integer logId) {
        this.logId = logId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord == null ? null : passWord.trim();
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType == null ? null : userType.trim();
    }

	public Users(Integer logId, String userName, String passWord, String userType) {
		super();
		this.logId = logId;
		this.userName = userName;
		this.passWord = passWord;
		this.userType = userType;
	}

	@Override
	public String toString() {
		return "Users [logId=" + logId + ", userName=" + userName + ", passWord=" + passWord + ", userType=" + userType
				+ "]";
	}
    
    public Users() {
		// TODO Auto-generated constructor stub
	}
}