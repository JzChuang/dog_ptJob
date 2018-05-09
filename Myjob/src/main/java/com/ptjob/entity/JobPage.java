package com.ptjob.entity;

public class JobPage {
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
		this.jobTitle = jobTitle;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getJobType() {
		return jobType;
	}
	public void setJobType(String jobType) {
		this.jobType = jobType;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getDetailAdress() {
		return detailAdress;
	}
	public void setDetailAdress(String detailAdress) {
		this.detailAdress = detailAdress;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public String getPeopleNum() {
		return peopleNum;
	}
	public void setPeopleNum(String peopleNum) {
		this.peopleNum = peopleNum;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getWorkTime() {
		return workTime;
	}
	public void setWorkTime(String workTime) {
		this.workTime = workTime;
	}
	public String getJobRemark() {
		return jobRemark;
	}
	public void setJobRemark(String jobRemark) {
		this.jobRemark = jobRemark;
	}
	public String getPublishTime() {
		return publishTime;
	}
	public void setPublishTime(String publishTime) {
		this.publishTime = publishTime;
	}
	public String getSicheck() {
		return sicheck;
	}
	public void setSicheck(String sicheck) {
		this.sicheck = sicheck;
	}
	public String getWanted() {
		return wanted;
	}
	public void setWanted(String wanted) {
		this.wanted = wanted;
	}
	private int start;
	private int pagesize;
	
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}
	
	public JobPage() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "JobPage [jobId=" + jobId + ", jobTitle=" + jobTitle + ", userName=" + userName + ", companyName="
				+ companyName + ", jobType=" + jobType + ", area=" + area + ", detailAdress=" + detailAdress
				+ ", contact=" + contact + ", phoneNum=" + phoneNum + ", peopleNum=" + peopleNum + ", sex=" + sex
				+ ", salary=" + salary + ", workTime=" + workTime + ", jobRemark=" + jobRemark + ", publishTime="
				+ publishTime + ", sicheck=" + sicheck + ", wanted=" + wanted + ", start=" + start + ", pagesize="
				+ pagesize + "]";
	}
	
	
	
}
