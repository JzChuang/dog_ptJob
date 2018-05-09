package com.ptjob.entity;

public class Student {
    private Integer studentId;

    private String userName;

    private String nickName;

    private String sex;

    private String realName;

    private Integer age;

    private String school;

    private String major;

    private String profilePhoto;

    private String email;

    private String phoneNum;

    public Integer getStudentId() {
        return studentId;
    }

    public void setStudentId(Integer studentId) {
        this.studentId = studentId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName == null ? null : nickName.trim();
    }

    public String getsex() {
        return sex;
    }

    public void setsex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName == null ? null : realName.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school == null ? null : school.trim();
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major == null ? null : major.trim();
    }

    public String getProfilePhoto() {
        return profilePhoto;
    }

    public void setProfilePhoto(String profilePhoto) {
        this.profilePhoto = profilePhoto == null ? null : profilePhoto.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum == null ? null : phoneNum.trim();
    }
    
    
    public Student() {
		// TODO Auto-generated constructor stub
	}

	public Student(Integer studentId, String userName, String nickName, String sex, String realName, Integer age,
			String school, String major, String profilePhoto, String email, String phoneNum) {
		super();
		this.studentId = studentId;
		this.userName = userName;
		this.nickName = nickName;
		this.sex = sex;
		this.realName = realName;
		this.age = age;
		this.school = school;
		this.major = major;
		this.profilePhoto = profilePhoto;
		this.email = email;
		this.phoneNum = phoneNum;
	}

	@Override
	public String toString() {
		return "Student [studentId=" + studentId + ", userName=" + userName + ", nickName=" + nickName + ", sex=" + sex
				+ ", realName=" + realName + ", age=" + age + ", school=" + school + ", major=" + major
				+ ", profilePhoto=" + profilePhoto + ", email=" + email + ", phoneNum=" + phoneNum + "]";
	}
    
    
}