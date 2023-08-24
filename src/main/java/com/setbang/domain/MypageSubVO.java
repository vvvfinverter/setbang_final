package com.setbang.domain;

public class MypageSubVO {
	
	
	// 업무지원서비스 신청 관련 vo
	private int support_indexnum;
	private int sup_apply_code;
	private int mem_code;
	private int sup_code;
	private String sup_name;
	private String sup_content;
	private String sup_counseling_date;
	private String sup_apply_date;
	private String sup_email;
	
	
	
	
	// 업무지원서비스 신청
	
	
	public int getSup_apply_code() {
		return sup_apply_code;
	}
	public String getSup_email() {
		return sup_email;
	}
	public void setSup_email(String sup_email) {
		this.sup_email = sup_email;
	}
	public int getSupport_indexnum() {
		return support_indexnum;
	}
	public void setSupport_indexnum(int support_indexnum) {
		this.support_indexnum = support_indexnum;
	}
	public void setSup_apply_code(int sup_apply_code) {
		this.sup_apply_code = sup_apply_code;
	}
	public int getMem_code() {
		return mem_code;
	}
	public void setMem_code(int mem_code) {
		this.mem_code = mem_code;
	}
	public int getSup_code() {
		return sup_code;
	}
	public void setSup_code(int sup_code) {
		this.sup_code = sup_code;
	}
	public String getSup_name() {
		return sup_name;
	}
	public void setSup_name(String sup_name) {
		this.sup_name = sup_name;
	}
	public String getSup_content() {
		return sup_content;
	}
	public void setSup_content(String sup_content) {
		this.sup_content = sup_content;
	}
	public String getSup_counseling_date() {
		return sup_counseling_date;
	}
	public void setSup_counseling_date(String sup_counseling_date) {
		this.sup_counseling_date = sup_counseling_date;
	}
	public String getSup_apply_date() {
		return sup_apply_date;
	}
	public void setSup_apply_date(String sup_apply_date) {
		this.sup_apply_date = sup_apply_date;
	}
	
	

	

}
