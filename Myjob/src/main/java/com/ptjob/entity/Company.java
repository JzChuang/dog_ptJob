package com.ptjob.entity;

public class Company {
    private Integer companyId;

    private String userName;

    private String companyName;

    private String companyAdress;

    private String detailAdress;

    private String companyRemark;

    private String contact;

    private String phonenum;

    private String email;

    public Integer getCompanyId() {
        return companyId;
    }

    public void setCompanyId(Integer companyId) {
        this.companyId = companyId;
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

    public String getCompanyAdress() {
        return companyAdress;
    }

    public void setCompanyAdress(String companyAdress) {
        this.companyAdress = companyAdress == null ? null : companyAdress.trim();
    }

    public String getDetailAdress() {
        return detailAdress;
    }

    public void setDetailAdress(String detailAdress) {
        this.detailAdress = detailAdress == null ? null : detailAdress.trim();
    }

    public String getCompanyRemark() {
        return companyRemark;
    }

    public void setCompanyRemark(String companyRemark) {
        this.companyRemark = companyRemark == null ? null : companyRemark.trim();
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact == null ? null : contact.trim();
    }

    public String getPhonenum() {
        return phonenum;
    }

    public void setPhonenum(String phonenum) {
        this.phonenum = phonenum == null ? null : phonenum.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }
    
    public Company() {
		// TODO Auto-generated constructor stub
	}

	public Company(Integer companyId, String userName, String companyName, String companyAdress, String detailAdress,
			String companyRemark, String contact, String phonenum, String email) {
		super();
		this.companyId = companyId;
		this.userName = userName;
		this.companyName = companyName;
		this.companyAdress = companyAdress;
		this.detailAdress = detailAdress;
		this.companyRemark = companyRemark;
		this.contact = contact;
		this.phonenum = phonenum;
		this.email = email;
	}

	@Override
	public String toString() {
		return "Company [companyId=" + companyId + ", userName=" + userName + ", companyName=" + companyName
				+ ", companyAdress=" + companyAdress + ", detailAdress=" + detailAdress + ", companyRemark="
				+ companyRemark + ", contact=" + contact + ", phonenum=" + phonenum + ", email=" + email + "]";
	}
    
    
}