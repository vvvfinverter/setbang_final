package com.setbang.domain;


/**
 * @author kohle
 *
 */
public class PubOfficeVO {

	
	private int pub_cat_code;
	private String pub_cat;
	private int pub_code;
	private String pub_yn;
	private String pub_unit;
	private int book_code;
	private String book_start;
	private String book_date;
//	private String formattedStartTime;
//	private String formattedEndTime;
	
	private int mem_code;
	private int ind_code;
	private String name;
	private String tel;
	private String id;
	private String pw;
	private int business_no;
	private String addr;
	private String email;
	private String mem_plan;
	private String signup_date;
	private int num_of_per;
	private String pub_time;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	
	public String getPub_cat() {
		return pub_cat;
	}
	public void setPub_cat(String pubCat) {
		this.pub_cat = pubCat;
	}
	public int getPubCatCode() {
		return pub_cat_code;
	}
	public void setPubCatCode(int pubCatCode) {
		this.pub_cat_code = pubCatCode;
	}
	public String getPubCat() {
		return pub_unit;
	}
	public void setPubCat(String pubCat) {
		this.pub_unit = pubCat;
	}
	public int getPubCode() {
		return pub_code;
	}
	public void setPubCode(int pubCode) {
		this.pub_code = pubCode;
	}
	public String getPubYn() {
		return pub_yn;
	}
	public void setPubYn(String pubYn) {
		this.pub_yn = pubYn;
	}
	public String getPubUnit() {
		return pub_unit;
	}
	public void setPubUnit(String pubUnit) {
		this.pub_unit = pubUnit;
	}
	public int getBookCode() {
		return book_code;
	}
	public void setBookCode(int bookCode) {
		this.book_code = bookCode;
	}
	public String getBookStart() {
		return book_start;
	}
	public void setBookStart(String bookStart) {
		this.book_start = bookStart;
	}
	public String getBookDate() {
		return book_date;
	}
	public void setBookDate(String bookDate) {
		this.book_date = bookDate;
	}
	public int getMemCode() {
		return mem_code;
	}
	public void setMemCode(int memCode) {
		this.mem_code = memCode;
	}
	public int getIndCode() {
		return ind_code;
	}
	public void setIndCode(int indCode) {
		this.ind_code = indCode;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getBusinessNo() {
		return business_no;
	}
	public void setBusinessNo(int businessNo) {
		this.business_no = businessNo;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMemPlan() {
		return mem_plan;
	}
	public void setMemPlan(String memPlan) {
		this.mem_plan = memPlan;
	}
	public String getSignupDate() {
		return signup_date;
	}
	public void setSignupDate(String signupDate) {
		this.signup_date = signupDate;
	}
	
	public int getNumOfPer() {
		return num_of_per;
	}
	public void setNumOfPer(int numOfPer) {
		this.num_of_per = numOfPer;
	}
	
	
	public String getPubTime() {
		return pub_time;
	}
	public void setPubTime(String pubTime) {
		this.pub_time = pubTime;
	}
	//	public String getFormattedStartTime() {
//		return formattedStartTime;
//	}
//	public void setFormattedStartTime(String formattedStartTime) {
//		this.formattedStartTime = formattedStartTime;
//	}
//	public String getFormattedEndTime() {
//		return formattedEndTime;
//	}
//	public void setFormattedEndTime(String formattedEndTime) {
//		this.formattedEndTime = formattedEndTime;
//	}
	//생성자
	public PubOfficeVO() {
		
	}

	//toString
//	@Override
//	public String toString() {
//		return "PubOfficeVO [id=" + id + ", pw=" + pw + "]";
//	}
	

}
