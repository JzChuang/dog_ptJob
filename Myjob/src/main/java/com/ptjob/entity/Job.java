package com.ptjob.entity;

public class Job {
   
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
    
    public Job() {
		// TODO Auto-generated constructor stub
	}

	public String getsicheck() {
		return sicheck;
	}

	public void setsicheck(String sicheck) {
		this.sicheck = sicheck;
	}

	public String getWanted() {
		return wanted;
	}

	public void setWanted(String wanted) {
		this.wanted= wanted;
	}

	public Job(Integer jobId, String jobTitle, String userName, String companyName, String jobType, String area,
			String detailAdress, String contact, String phoneNum, String peopleNum, String sex, String salary,
			String workTime, String jobRemark, String publishTime, String sicheck, String wanted) {
		super();
		this.jobId = jobId;
		this.jobTitle = jobTitle;
		this.userName = userName;
		this.companyName = companyName;
		this.jobType = jobType;
		this.area = area;
		this.detailAdress = detailAdress;
		this.contact = contact;
		this.phoneNum = phoneNum;
		this.peopleNum = peopleNum;
		this.sex = sex;
		this.salary = salary;
		this.workTime = workTime;
		this.jobRemark = jobRemark;
		this.publishTime = publishTime;
		this.sicheck = sicheck;
		this.wanted= wanted;
	}

	@Override
	public String toString() {
		return "Job [jobId=" + jobId + ", jobTitle=" + jobTitle + ", userName=" + userName + ", companyName="
				+ companyName + ", jobType=" + jobType + ", area=" + area + ", detailAdress=" + detailAdress
				+ ", contact=" + contact + ", phoneNum=" + phoneNum + ", peopleNum=" + peopleNum + ", sex=" + sex
				+ ", salary=" + salary + ", workTime=" + workTime + ", jobRemark=" + jobRemark + ", publishTime="
				+ publishTime + ", sicheck=" + sicheck + ", wanted=" + wanted+ "]";
	}

	
    
    
}