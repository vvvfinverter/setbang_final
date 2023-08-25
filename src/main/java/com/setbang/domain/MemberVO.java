package com.setbang.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class MemberVO {

	private int mem_code;
	private String id;
	private String pw;
	private String name;
	private String tel;
	private String business_no;
	private String addr;
	private String email;
	private String mem_plan;
	private String signup_date;
	private int ind_code;
	private String approval;
	private String profile_name;
	private String profile;
	private long profile_size;
	
	
	MultipartFile file;	// jsp에 파일첨부시 name="file"과 동일한 변수명
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
		
		// 업로드 파일 접근
		if(! file.isEmpty()){
			this.profile_name = file.getOriginalFilename();
			this.profile_size = file.getSize();
			
			// 실제 저장된 파일명 만들기
			UUID uuid = UUID.randomUUID();
			profile = uuid.toString() + "_" + profile_name;
			
			// 해당 경로로 변경 (task - 나중에 경로 다시 변경해야함)
			File f = new File("C:\\workspaces\\Setbang\\setbang\\src\\main\\webapp\\resources\\upload\\" + profile);
			
			try {
				file.transferTo(f);
				
			} catch (IllegalStateException e) {				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}
	}
	

	public int getMem_code() {
		return mem_code;
	}

	public void setMem_code(int mem_code) {
		this.mem_code = mem_code;
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

	public String getBusiness_no() {
		return business_no;
	}

	public void setBusiness_no(String business_no) {
		this.business_no = business_no;
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

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public int getInd_code() {
		return ind_code;
	}

	public void setInd_code(int ind_code) {
		this.ind_code = ind_code;
	}
	
	public String getProfile_name() {
		return profile_name;
	}

	public void setProfile_name(String profile_name) {
		this.profile_name = profile_name;
	}

	public String getApproval() {
		return approval;
	}

	public void setApproval(String approval) {
		this.approval = approval;
	}

	public long getProfile_size() {
		return profile_size;
	}
	public void setProfile_size(long profile_size) {
		this.profile_size = profile_size;
	}
	
	// 생성자
	public MemberVO() {

	}

}
