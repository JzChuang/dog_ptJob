package com.ptjob.entity;

public class Relation {
    private Integer relationId;		//关系编号

    private Integer jobId;			//工作编号

    private String studentName;		//学生用户名

    private String studentflag;		//学生标识符

    private String businessflag;	//企业标识符

    private String stutime;			//简历投递时间

    public Integer getRelationId() {
        return relationId;
    }

    public void setRelationId(Integer relationId) {
        this.relationId = relationId;
    }

    public Integer getJobId() {
        return jobId;
    }

    public void setJobId(Integer jobId) {
        this.jobId = jobId;
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
    
    public Relation() {
		// TODO Auto-generated constructor stub
	}

	public Relation(Integer relationId, Integer jobId, String studentName, String studentflag, String businessflag,
			String stutime) {
		super();
		this.relationId = relationId;
		this.jobId = jobId;
		this.studentName = studentName;
		this.studentflag = studentflag;
		this.businessflag = businessflag;
		this.stutime = stutime;
	}

	@Override
	public String toString() {
		return "Relation [relationId=" + relationId + ", jobId=" + jobId + ", studentName=" + studentName
				+ ", studentflag=" + studentflag + ", businessflag=" + businessflag + ", stutime=" + stutime + "]";
	}
    
    
    
}