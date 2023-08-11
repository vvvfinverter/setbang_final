package com.setbang.domain;


public class PubOfficeVO {

	
	private int pubCatCode;
	private String pubCat;
	private int pubCode;
	private String pubYn;
	private String pubUnit;
	private int bookCode;
	private String bookStart;
	private String bookEnd;
	private String bookDate;
//	private String formattedStartTime;
//	private String formattedEndTime;
	
	private int MemCode;
	private int IndCode;
	private String name;
	private String tel;
	private String id;
	private String pw;
	private int businessNo;
	private String addr;
	private String email;
	private String memPlan;
	private String signupDate;
	private int numOfPer;
	
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
	
	public int getPubCatCode() {
		return pubCatCode;
	}
	public void setPubCatCode(int pubCatCode) {
		this.pubCatCode = pubCatCode;
	}
	public String getPubCat() {
		return pubCat;
	}
	public void setPubCat(String pubCat) {
		this.pubCat = pubCat;
	}
	public int getPubCode() {
		return pubCode;
	}
	public void setPubCode(int pubCode) {
		this.pubCode = pubCode;
	}
	public String getPubYn() {
		return pubYn;
	}
	public void setPubYn(String pubYn) {
		this.pubYn = pubYn;
	}
	public String getPubUnit() {
		return pubUnit;
	}
	public void setPubUnit(String pubUnit) {
		this.pubUnit = pubUnit;
	}
	public int getBookCode() {
		return bookCode;
	}
	public void setBookCode(int bookCode) {
		this.bookCode = bookCode;
	}
	public String getBookStart() {
		return bookStart;
	}
	public void setBookStart(String bookStart) {
		this.bookStart = bookStart;
	}
	public String getBookEnd() {
		return bookEnd;
	}
	public void setBookEnd(String bookEnd) {
		this.bookEnd = bookEnd;
	}
	public String getBookDate() {
		return bookDate;
	}
	public void setBookDate(String bookDate) {
		this.bookDate = bookDate;
	}
	public int getMemCode() {
		return MemCode;
	}
	public void setMemCode(int memCode) {
		MemCode = memCode;
	}
	public int getIndCode() {
		return IndCode;
	}
	public void setIndCode(int indCode) {
		IndCode = indCode;
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
		return businessNo;
	}
	public void setBusinessNo(int businessNo) {
		this.businessNo = businessNo;
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
		return memPlan;
	}
	public void setMemPlan(String memPlan) {
		this.memPlan = memPlan;
	}
	public String getSignupDate() {
		return signupDate;
	}
	public void setSignupDate(String signupDate) {
		this.signupDate = signupDate;
	}
	
	public int getNumOfPer() {
		return numOfPer;
	}
	public void setNumOfPer(int numOfPer) {
		this.numOfPer = numOfPer;
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
