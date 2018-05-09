package com.ptjob.entity;

public class JobRelationPage {
	private int jobId;
	private String userName;
	private String studentName;
	private String businessflag;
	private String studentflag;
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
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getBusinessflag() {
		return businessflag;
	}
	public void setBusinessflag(String businessflag) {
		this.businessflag = businessflag;
	}
	public String getStudentflag() {
		return studentflag;
	}
	public void setStudentflag(String studentflag) {
		this.studentflag = studentflag;
	}
	
	public int getJobId() {
		return jobId;
	}
	public void setJobId(int jobId) {
		this.jobId = jobId;
	}
	public JobRelationPage() {
		// TODO Auto-generated constructor stub
	}
	public JobRelationPage(String userName, String studentName, String businessflag, String studentflag, int start,
			int pagesize) {
		super();
		this.userName = userName;
		this.studentName = studentName;
		this.businessflag = businessflag;
		this.studentflag = studentflag;
		this.start = start;
		this.pagesize = pagesize;
	}
	@Override
	public String toString() {
		return "JobRelationPage [jobId=" + jobId + ", userName=" + userName + ", studentName=" + studentName
				+ ", businessflag=" + businessflag + ", studentflag=" + studentflag + ", start=" + start + ", pagesize="
				+ pagesize + "]";
	}
	
	
	
}
