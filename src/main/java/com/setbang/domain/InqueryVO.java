package com.setbang.domain;

import java.sql.Date;

public class InqueryVO {
	private String inq_title;
	private String inq_content;
	private Date inq_date;
	private String inq_name;
	private String inq_tel;
	private String inq_email;
	private String inq_people;
	private String inq_coname;
	private String inq_branch;
	private String inq_website;
	
	// 문의에 대한 답변 Email 관련
	private String subject;
	private String content;
	private String receiver;
	
	
	
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
				
	}
	public String getInq_people() {
		return inq_people;
	}
	public void setInq_people(String inq_people) {
		this.inq_people = inq_people;
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
	public Date getInq_date() {
		return inq_date;
	}
	public void setInq_date(Date inq_date) {
		this.inq_date = inq_date;
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
	
	
}
