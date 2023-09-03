package com.setbang.domain;

public class MyPageListVO {
	
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
	private int book_people;
	private String book_start;
	private String book_date;
	private String pub_unit;
	private String pub_cat;
	
	
	// 물품신청 관련 vo
	private int item_indexnum;
	private int i_cat_code;
	private int i_code;
	private int i_apply_code;
	private int i_apply_detail_code;
	private int i_cancel_code;
	private String i_cat;
	private String i_name;
	private String i_apply_date;
	private int i_unit_amount;
	private int i_amount;
	private int i_cancel_amount;
	private String i_cancel_date;
	private String i_cancel_yn;
	
	
	// 입대차계약서 관련 vo
	private int constract_indexnum;
	private int con_code;
	private int priv_code;
	private String con_start_date;
	private String con_end_date;
	private String con_date;
	private String lessor_name;
	private String lessee_name;
	private String lessee_tel;
	private int branch_code;
	private String priv_yn;
	private String priv_unit;
	private String branch_name;
	
	
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
	public int getBook_people() {
		return book_people;
	}
	public void setBook_people(int book_people) {
		this.book_people = book_people;
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
		
		
	// 물품 신청
	
	public int getItem_indexnum() {
		return item_indexnum;
	}
	public void setItem_indexnum(int item_indexnum) {
		this.item_indexnum = item_indexnum;
	}
	public int getI_cat_code() {
		return i_cat_code;
	}
	public void setI_cat_code(int i_cat_code) {
		this.i_cat_code = i_cat_code;
	}
	public int getI_code() {
		return i_code;
	}
	public void setI_code(int i_code) {
		this.i_code = i_code;
	}
	public int getI_apply_code() {
		return i_apply_code;
	}
	public void setI_apply_code(int i_apply_code) {
		this.i_apply_code = i_apply_code;
	}
	public int getI_apply_detail_code() {
		return i_apply_detail_code;
	}
	public void setI_apply_detail_code(int i_apply_detail_code) {
		this.i_apply_detail_code = i_apply_detail_code;
	}
	public int getI_cancel_code() {
		return i_cancel_code;
	}
	public void setI_cancel_code(int i_cancel_code) {
		this.i_cancel_code = i_cancel_code;
	}
	public String getI_cat() {
		return i_cat;
	}
	public void setI_cat(String i_cat) {
		this.i_cat = i_cat;
	}
	public String getI_name() {
		return i_name;
	}
	public void setI_name(String i_name) {
		this.i_name = i_name;
	}
	public String getI_apply_date() {
		return i_apply_date;
	}
	public void setI_apply_date(String i_apply_date) {
		this.i_apply_date = i_apply_date;
	}
	public int getI_unit_amount() {
		return i_unit_amount;
	}
	public void setI_unit_amount(int i_unit_amount) {
		this.i_unit_amount = i_unit_amount;
	}
	public int getI_amount() {
		return i_amount;
	}
	public void setI_amount(int i_amount) {
		this.i_amount = i_amount;
	}
	public int getI_cancel_amount() {
		return i_cancel_amount;
	}
	public void setI_cancel_amount(int i_cancel_amount) {
		this.i_cancel_amount = i_cancel_amount;
	}
	public String getI_cancel_date() {
		return i_cancel_date;
	}
	public void setI_cancel_date(String i_cancel_date) {
		this.i_cancel_date = i_cancel_date;
	}
	public String getI_cancel_yn() {
		return i_cancel_yn;
	}
	public void setI_cancel_yn(String i_cancel_yn) {
		this.i_cancel_yn = i_cancel_yn;
	}

	
	// 임대차계약서 현황 관련	
	public int getConstract_indexnum() {
		return constract_indexnum;
	}
	public void setConstract_indexnum(int constract_indexnum) {
		this.constract_indexnum = constract_indexnum;
	}
	public int getCon_code() {
		return con_code;
	}
	public void setCon_code(int con_code) {
		this.con_code = con_code;
	}
	public int getPriv_code() {
		return priv_code;
	}
	public void setPriv_code(int priv_code) {
		this.priv_code = priv_code;
	}
	public String getCon_start_date() {
		return con_start_date;
	}
	public void setCon_start_date(String con_start_date) {
		this.con_start_date = con_start_date;
	}
	public String getCon_end_date() {
		return con_end_date;
	}
	public void setCon_end_date(String con_end_date) {
		this.con_end_date = con_end_date;
	}
	public String getCon_date() {
		return con_date;
	}
	public void setCon_date(String con_date) {
		this.con_date = con_date;
	}
	public String getLessor_name() {
		return lessor_name;
	}
	public void setLessor_name(String lessor_name) {
		this.lessor_name = lessor_name;
	}
	public String getLessee_name() {
		return lessee_name;
	}
	public void setLessee_name(String lessee_name) {
		this.lessee_name = lessee_name;
	}
	public String getLessee_tel() {
		return lessee_tel;
	}
	public void setLessee_tel(String lessee_tel) {
		this.lessee_tel = lessee_tel;
	}
	public int getBranch_code() {
		return branch_code;
	}
	public void setBranch_code(int branch_code) {
		this.branch_code = branch_code;
	}
	public String getPriv_yn() {
		return priv_yn;
	}
	public void setPriv_yn(String priv_yn) {
		this.priv_yn = priv_yn;
	}
	public String getPriv_unit() {
		return priv_unit;
	}
	public void setPriv_unit(String priv_unit) {
		this.priv_unit = priv_unit;
	}
	public String getBranch_name() {
		return branch_name;
	}
	public void setBranch_name(String branch_name) {
		this.branch_name = branch_name;
	}
	
	

	

}
