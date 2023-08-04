package com.setbang.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class MemberVO {

	private String id;
	private String pw;
	
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

	//생성자
	public MemberVO() {
		
	}
	
	/*
	 * //toString
	 * 
	 * @Override public String toString() { return "MemberVO [id=" + id + ", pw=" +
	 * pw + "]"; }
	 */
	
	
	// 로그인 위해서 id와 pw만 받았음.

}
