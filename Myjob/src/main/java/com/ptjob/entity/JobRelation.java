package com.ptjob.entity;

public class JobRelation {
    private Integer jobId;

    private String jobTitle;

    private String userName;

    private String companyName;

    private String jobType;

    private String area;

    private String detailAdress;

    private String contact;

    private String phoneNum;

    private String peopleNum;

    private String sex;

    private String salary;

    private String workTime;

    private String jobRemark;

    private String publishTime;

    private String sicheck;

    private String wanted;

    private String studentName;

    private String studentflag;

    private String businessflag;

    private String stutime;
    
    private String nickName;

    public Integer getJobId() {
        return jobId;
    }

    public void setJobId(Integer jobId) {
        this.jobId = jobId;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle == null ? null : jobTitle.trim();
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName == null ? null : companyName.trim();
    }

    public String getJobType() {
        return jobType;
    }

    public void setJobType(String jobType) {
        this.jobType = jobType == null ? null : jobType.trim();
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area == null ? null : area.trim();
    }

    public String getDetailAdress() {
        return detailAdress;
    }

    public void setDetailAdress(String detailAdress) {
        this.detailAdress = detailAdress == null ? null : detailAdress.trim();
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact == null ? null : contact.trim();
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum == null ? null : phoneNum.trim();
    }

    public String getPeopleNum() {
        return peopleNum;
    }

    public void setPeopleNum(String peopleNum) {
        this.peopleNum = peopleNum == null ? null : peopleNum.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary == null ? null : salary.trim();
    }

    public String getWorkTime() {
        return workTime;
    }

    public void setWorkTime(String workTime) {
        this.workTime = workTime == null ? null : workTime.trim();
    }

    public String getJobRemark() {
        return jobRemark;
    }

    public void setJobRemark(String jobRemark) {
        this.jobRemark = jobRemark == null ? null : jobRemark.trim();
    }

    public String getPublishTime() {
        return publishTime;
    }

    public void setPublishTime(String publishTime) {
        this.publishTime = publishTime == null ? null : publishTime.trim();
    }

    public String getSicheck() {
        return sicheck;
    }

    public void setSicheck(String sicheck) {
        this.sicheck = sicheck == null ? null : sicheck.trim();
    }

    public String getWanted() {
        return wanted;
    }

    public void setWanted(String wanted) {
        this.wanted = wanted == null ? null : wanted.trim();
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName == null ? null : studentName.trim();
    }

    public String getStudentflag() {
        return studentflag;
    }

    public void setStudentflag(String studentflag) {
        this.studentflag = studentflag == null ? null : studentflag.trim();
    }

    public String getBusinessflag() {
        return businessflag;
    }

    public void setBusinessflag(String businessflag) {
        this.businessflag = businessflag == null ? null : businessflag.trim();
    }

    public String getStutime() {
        return stutime;
    }

    public void setStutime(String stutime) {
        this.stutime = stutime == null ? null : stutime.trim();
    }

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	@Override
	public String toString() {
		return "JobRelation [jobId=" + jobId + ", jobTitle=" + jobTitle + ", userName=" + userName + ", companyName="
				+ companyName + ", jobType=" + jobType + ", area=" + area + ", detailAdress=" + detailAdress
				+ ", contact=" + contact + ", phoneNum=" + phoneNum + ", peopleNum=" + peopleNum + ", sex=" + sex
				+ ", salary=" + salary + ", workTime=" + workTime + ", jobRemark=" + jobRemark + ", publishTime="
				+ publishTime + ", sicheck=" + sicheck + ", wanted=" + wanted + ", studentName=" + studentName
				+ ", studentflag=" + studentflag + ", businessflag=" + businessflag + ", stutime=" + stutime + "]";
	}
    
    
}