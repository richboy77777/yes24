package com.mycompany.lucky.modules.member;

public class Member {
	//infrMember
	private String ifmmSeq = "";
	private String ifmmId = "";
	private String ifmmName= "";
	private String ifmmPassword= "";
	private String ifmmDob="";
	private Integer ifmmDelNy;
	
	//infrMemberEmail
	private String ifmeEmailFull = "";
	
	//infrMemberPhone
	private String ifmpNumber = "";
	
	//infrMemberNationality
	
	//infrMemberAddress
	private Double ifmaLat;
	private Double ifmaLng;
	
	//time
	private String regDateTime="";
	private String modDateTime="";
//------------
	public String getIfmmSeq() {
		return ifmmSeq;
	}
	public void setIfmmSeq(String ifmmSeq) {
		this.ifmmSeq = ifmmSeq;
	}
	public String getIfmmId() {
		return ifmmId;
	}
	public void setIfmmId(String ifmmId) {
		this.ifmmId = ifmmId;
	}
	public String getIfmmName() {
		return ifmmName;
	}
	public void setIfmmName(String ifmmName) {
		this.ifmmName = ifmmName;
	}
	public Integer getIfmmDelNy() {
		return ifmmDelNy;
	}
	public void setIfmmDelNy(Integer ifmmDelNy) {
		this.ifmmDelNy = ifmmDelNy;
	}
	public String getIfmmPassword() {
		return ifmmPassword;
	}
	public void setIfmmPassword(String ifmmPassword) {
		this.ifmmPassword = ifmmPassword;
	}
	public String getIfmeEmailFull() {
		return ifmeEmailFull;
	}
	public void setIfmeEmailFull(String ifmeEmailFull) {
		this.ifmeEmailFull = ifmeEmailFull;
	}
	public String getIfmpNumber() {
		return ifmpNumber;
	}
	public void setIfmpNumber(String ifmpNumber) {
		this.ifmpNumber = ifmpNumber;
	}
	public String getRegDateTime() {
		return regDateTime;
	}
	public void setRegDateTime(String regDateTime) {
		this.regDateTime = regDateTime;
	}
	public String getModDateTime() {
		return modDateTime;
	}
	public void setModDateTime(String modDateTime) {
		this.modDateTime = modDateTime;
	}
	public String getIfmmDob() {
		return ifmmDob;
	}
	public void setIfmmDob(String ifmmDob) {
		this.ifmmDob = ifmmDob;
	}
	public Double getIfmaLat() {
		return ifmaLat;
	}
	public void setIfmaLat(Double ifmaLat) {
		this.ifmaLat = ifmaLat;
	}
	public Double getIfmaLng() {
		return ifmaLng;
	}
	public void setIfmaLng(Double ifmaLng) {
		this.ifmaLng = ifmaLng;
	}

	
}