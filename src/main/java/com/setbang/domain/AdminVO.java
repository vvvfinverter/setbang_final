package com.setbang.domain;

import java.util.Date;

public class AdminVO {

	// 관리자 로그인 관련 vo
	private int admin_code;
	private String admin_name;
	private String admin_id;
	private String admin_pw;

	// 임대차계약서 관련 vo
	private int con_code;
	private int priv_code;
	private String con_start_date;
	private String con_end_date;
	private String con_date;
	private String lessor_name;
	private String lessee_name;
	private String lessee_tel;
	private int con_indexnum;
	
	
	// 총 회원수 관련 vo
	private int totalmember;
	
	
	// 지점별 회원수 관련 vo
	private int guromember;
	private int pangyomember;
	private int gangnammember;
	
	
	// 서비스 플랜별 회원수 관련 vo
	private int basic;
	private int standard_monthly;
	private int standard_annual;
	private int premium_monthly;
	private int premium_annual;
	
	
	// 문의게시판 관련 vo
	private int inq_code;
	private String inq_title;
	private String inq_content;
	private String inq_date;
	private String inq_name;
	private String inq_tel;
	private String inq_email;
	private String inq_people;
	private String inq_coname;
	private String inq_branch;
	private String inq_website;
	private int inq_indexnum;
	
	
	// 답변 관련 vo
	private int reply_code;
	private String re_yn;
	private int mem_code;
	
	
	// 회원가입 승인 관련 vo
	private int member_indexnum;
	private String name;
	private String tel;
	private String email;
	private String business_no;
	private String ind_name;
	private String addr;
	private String id;
	private String pw;
	private String mem_plan;
	private String signup_date;
	private String approval;
	
	
	
	
	
	public int getCon_indexnum() {
		return con_indexnum;
	}

	public void setCon_indexnum(int con_indexnum) {
		this.con_indexnum = con_indexnum;
	}

	public int getInq_indexnum() {
		return inq_indexnum;
	}

	public void setInq_indexnum(int inq_indexnum) {
		this.inq_indexnum = inq_indexnum;
	}
	

	public String getInq_title() {
		return inq_title;
	}

	public void setInq_title(String inq_title) {
		this.inq_title = inq_title;
	}

	public String getInq_content() {
		return inq_content;
	}

	public void setInq_content(String inq_content) {
		this.inq_content = inq_content;
	}

	public String getInq_name() {
		return inq_name;
	}

	public void setInq_name(String inq_name) {
		this.inq_name = inq_name;
	}

	public String getInq_tel() {
		return inq_tel;
	}

	public void setInq_tel(String inq_tel) {
		this.inq_tel = inq_tel;
	}

	public String getInq_email() {
		return inq_email;
	}

	public void setInq_email(String inq_email) {
		this.inq_email = inq_email;
	}
	
	
	public String getInq_date() {
		return inq_date;
	}

	public void setInq_date(String inq_date) {
		this.inq_date = inq_date;
	}

	public String getInq_people() {
		return inq_people;
	}

	public void setInq_people(String inq_people) {
		this.inq_people = inq_people;
	}

	public String getInq_coname() {
		return inq_coname;
	}

	public void setInq_coname(String inq_coname) {
		this.inq_coname = inq_coname;
	}

	public String getInq_branch() {
		return inq_branch;
	}

	public void setInq_branch(String inq_branch) {
		this.inq_branch = inq_branch;
	}

	public String getInq_website() {
		return inq_website;
	}

	public void setInq_website(String inq_website) {
		this.inq_website = inq_website;
	}

	public int getBasic() {
		return basic;
	}

	public void setBasic(int basic) {
		this.basic = basic;
	}

	public int getStandard_monthly() {
		return standard_monthly;
	}

	public void setStandard_monthly(int standard_monthly) {
		this.standard_monthly = standard_monthly;
	}

	public int getStandard_annual() {
		return standard_annual;
	}

	public void setStandard_annual(int standard_annual) {
		this.standard_annual = standard_annual;
	}

	public int getPremium_monthly() {
		return premium_monthly;
	}

	public void setPremium_monthly(int premium_monthly) {
		this.premium_monthly = premium_monthly;
	}

	public int getPremium_annual() {
		return premium_annual;
	}

	public void setPremium_annual(int premium_annual) {
		this.premium_annual = premium_annual;
	}

	public int getGuromember() {
		return guromember;
	}

	public void setGuromember(int guromember) {
		this.guromember = guromember;
	}

	public int getPangyomember() {
		return pangyomember;
	}

	public void setPangyomember(int pangyomember) {
		this.pangyomember = pangyomember;
	}

	public int getGangnammember() {
		return gangnammember;
	}

	public void setGangnammember(int gangnammember) {
		this.gangnammember = gangnammember;
	}

	public String getLessee_tel() {
		return lessee_tel;
	}

	public void setLessee_tel(String lessee_tel) {
		this.lessee_tel = lessee_tel;
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
	
	public int getMember_indexnum() {
		return member_indexnum;
	}

	public void setMember_indexnum(int member_indexnum) {
		this.member_indexnum = member_indexnum;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBusiness_no() {
		return business_no;
	}

	public void setBusiness_no(String business_no) {
		this.business_no = business_no;
	}

	public String getInd_name() {
		return ind_name;
	}

	public void setInd_name(String ind_name) {
		this.ind_name = ind_name;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

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

	public String getMem_plan() {
		return mem_plan;
	}

	public void setMem_plan(String mem_plan) {
		this.mem_plan = mem_plan;
	}

	public String getSignup_date() {
		return signup_date;
	}

	public void setSignup_date(String signup_date) {
		this.signup_date = signup_date;
	}

	public String getApproval() {
		return approval;
	}

	public void setApproval(String approval) {
		this.approval = approval;
	}
	
	
}
