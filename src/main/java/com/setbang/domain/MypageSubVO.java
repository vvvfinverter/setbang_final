package com.setbang.domain;

public class MypageSubVO {
	
	// 전체현황 추출을 위한 mem_code
	private int mem_code;	
	
	
	// 업무지원서비스 신청 관련 vo
	private int support_indexnum;
	private int sup_apply_code;
	private int sup_code;
	private String sup_name;
	private String sup_content;
	private String sup_counseling_date;
	private String sup_apply_date;
	private String sup_email;

	
	// 협력업체지원서비스 신청 관련 vo
	private int partner_indexnum;
	private int ptr_apply_code;
	private int ptr_code;
	private int ptr_cat_code;
	private String ptr_cat;
	private String ptr_name;
	private String ptr_apply_date;
	private String ptr_start;
	private String ptr_end;
	private String ptr_apply_name;
	private String ptr_tel;
	
	
	// 공용오피스 신청 관련 vo
	private int book_indexnum;
	private int book_code;
	private int pub_code;
	private int pub_cat_code;
	private int num_of_per;
	private String book_start;
	private String book_date;
	private String pub_unit;
	private String pub_cat;
	
	
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
	
	
	
	// 협력업체지원서비스 신청
	public int getPartner_indexnum() {
		return partner_indexnum;
	}
	public void setPartner_indexnum(int partner_indexnum) {
		this.partner_indexnum = partner_indexnum;
	}
	public int getPtr_apply_code() {
		return ptr_apply_code;
	}
	public void setPtr_apply_code(int ptr_apply_code) {
		this.ptr_apply_code = ptr_apply_code;
	}
	public int getPtr_code() {
		return ptr_code;
	}
	public void setPtr_code(int ptr_code) {
		this.ptr_code = ptr_code;
	}
	public int getPtr_cat_code() {
		return ptr_cat_code;
	}
	public void setPtr_cat_code(int ptr_cat_code) {
		this.ptr_cat_code = ptr_cat_code;
	}
	public String getPtr_cat() {
		return ptr_cat;
	}
	public void setPtr_cat(String ptr_cat) {
		this.ptr_cat = ptr_cat;
	}
	public String getPtr_name() {
		return ptr_name;
	}
	public void setPtr_name(String ptr_name) {
		this.ptr_name = ptr_name;
	}
	public String getPtr_apply_date() {
		return ptr_apply_date;
	}
	public void setPtr_apply_date(String ptr_apply_date) {
		this.ptr_apply_date = ptr_apply_date;
	}
	public String getPtr_start() {
		return ptr_start;
	}
	public void setPtr_start(String ptr_start) {
		this.ptr_start = ptr_start;
	}
	public String getPtr_end() {
		return ptr_end;
	}
	public void setPtr_end(String ptr_end) {
		this.ptr_end = ptr_end;
	}
	public String getPtr_apply_name() {
		return ptr_apply_name;
	}
	public void setPtr_apply_name(String ptr_apply_name) {
		this.ptr_apply_name = ptr_apply_name;
	}
	public String getPtr_tel() {
		return ptr_tel;
	}
	public void setPtr_tel(String ptr_tel) {
		this.ptr_tel = ptr_tel;
	}
	
	// 공용오피스 신청 관련
	public int getBook_code() {
		return book_code;
	}
	public void setBook_code(int book_code) {
		this.book_code = book_code;
	}
	public int getPub_code() {
		return pub_code;
	}
	public void setPub_code(int pub_code) {
		this.pub_code = pub_code;
	}
	public int getPub_cat_code() {
		return pub_cat_code;
	}
	public void setPub_cat_code(int pub_cat_code) {
		this.pub_cat_code = pub_cat_code;
	}
	public String getBook_start() {
		return book_start;
	}
	public void setBook_start(String book_start) {
		this.book_start = book_start;
	}	
	public int getBook_indexnum() {
		return book_indexnum;
	}
	public void setBook_indexnum(int book_indexnum) {
		this.book_indexnum = book_indexnum;
	}
	public int getNum_of_per() {
		return num_of_per;
	}
	public void setNum_of_per(int num_of_per) {
		this.num_of_per = num_of_per;
	}
	public String getBook_date() {
		return book_date;
	}
	public void setBook_date(String book_date) {
		this.book_date = book_date;
	}
	public String getPub_unit() {
		return pub_unit;
	}
	public void setPub_unit(String pub_unit) {
		this.pub_unit = pub_unit;
	}
	public String getPub_cat() {
		return pub_cat;
	}
	public void setPub_cat(String pub_cat) {
		this.pub_cat = pub_cat;
	}
	

	
	

	

}
