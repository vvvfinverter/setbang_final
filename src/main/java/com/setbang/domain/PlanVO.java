package com.setbang.domain;

public class PlanVO {

	private int plan_code;
	private String plan_name;
	private int plan_price;
	private int plan_apply_code;
	private int card_code;
	private String payment_date;
	private String plan_start;
	private String plan_end;
	private String plan_apply_yn;
	private int plan_cancel_code;
	private String plan_cancel_date;
	private String plan_cancel_reason;
	private String plan_cancel_yn;
	
	public String getPlan_name() {
		return plan_name;
	}
	public void setPlan_name(String plan_name) {
		this.plan_name = plan_name;
	}
	public int getPlan_price() {
		return plan_price;
	}
	public void setPlan_price(int plan_price) {
		this.plan_price = plan_price;
	}
	public int getPlan_code() {
		return plan_code;
	}
	public void setPlan_code(int plan_code) {
		this.plan_code = plan_code;
	}
	public int getPlan_apply_code() {
		return plan_apply_code;
	}
	public void setPlan_apply_code(int plan_apply_code) {
		this.plan_apply_code = plan_apply_code;
	}
	public String getPayment_date() {
		return payment_date;
	}
	public void setPayment_date(String payment_date) {
		this.payment_date = payment_date;
	}
	public String getPlan_start() {
		return plan_start;
	}
	public void setPlan_start(String plan_start) {
		this.plan_start = plan_start;
	}
	public String getPlan_end() {
		return plan_end;
	}
	public void setPlan_end(String plan_end) {
		this.plan_end = plan_end;
	}
	public int getPlan_cancel_code() {
		return plan_cancel_code;
	}
	public void setPlan_cancel_code(int plan_cancel_code) {
		this.plan_cancel_code = plan_cancel_code;
	}
	public String getPlan_cancel_date() {
		return plan_cancel_date;
	}
	public void setPlan_cancel_date(String plan_cancel_date) {
		this.plan_cancel_date = plan_cancel_date;
	}
	public int getCard_code() {
		return card_code;
	}
	public void setCard_code(int card_code) {
		this.card_code = card_code;
	}
	public String getPlan_cancel_reason() {
		return plan_cancel_reason;
	}
	public void setPlan_cancel_reason(String plan_cancel_reason) {
		this.plan_cancel_reason = plan_cancel_reason;
	}
	public String getPlan_apply_yn() {
		return plan_apply_yn;
	}
	public void setPlan_apply_yn(String plan_apply_yn) {
		this.plan_apply_yn = plan_apply_yn;
	}
	public String getPlan_cancel_yn() {
		return plan_cancel_yn;
	}
	public void setPlan_cancel_yn(String plan_cancel_yn) {
		this.plan_cancel_yn = plan_cancel_yn;
	}
	
	// 생성자
	public PlanVO() {

	}
}
