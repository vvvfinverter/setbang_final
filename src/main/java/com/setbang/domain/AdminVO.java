package com.setbang.domain;

public class AdminVO {

	private int admin_code;
	private String admin_name;
	private String admin_id;
	private String admin_pw;
	private int totalmember;
	
	private int reply_code;
	private String re_yn;
	private int inq_code;
	private int mem_code;
	
	
	public int getTotalmember() {
		return totalmember;
	}

	public void setTotalmember(int totalmember) {
		this.totalmember = totalmember;
	}

	public int getMem_code() {
		return mem_code;
	}

	public void setMem_code(int mem_code) {
		this.mem_code = mem_code;
	}

	public int getReply_code() {
		return reply_code;
	}
	
	public void setReply_code(int reply_code) {
		this.reply_code = reply_code;
	}
	
	public String getRe_yn() {
		return re_yn;
	}
	
	public void setRe_yn(String re_yn) {
		this.re_yn = re_yn;
	}
	
	public int getInq_code() {
		return inq_code;
	}
	
	public void setInq_code(int inq_code) {
		this.inq_code = inq_code;
	}
	
	public int getAdmin_code() {
		return admin_code;
	}
	
	public void setAdmin_code(int admin_code) {
		this.admin_code = admin_code;
	}
	
	public String getAdmin_name() {
		return admin_name;
	}
	
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	
	public String getAdmin_id() {
		return admin_id;
	}
	
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	
	public String getAdmin_pw() {
		return admin_pw;
	}
	
	public void setAdmin_pw(String admin_pw) {
		this.admin_pw = admin_pw;
	}
	
	public int getTotalMember() {
		return totalmember;
	}
	
	public void setTotalMember(int totalmember) {
		this.totalmember = totalmember;
	}
}
