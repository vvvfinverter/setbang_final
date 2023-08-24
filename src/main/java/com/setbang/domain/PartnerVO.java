package com.setbang.domain;


public class PartnerVO {
	private int ptr_cat_code;
	private String ptr_cat;
	private int ptr_code;
	private String ptr_name;
	private int ptr_apply_code;
	private int mem_code;
	private String ptr_apply_date;
	private String ptr_start;
	private String ptr_end;
	private String ptr_apply_name;
	private String ptr_tel;
	private String name;
	private String tel;
	private String id;

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

	public int getPtr_code() {
		return ptr_code;
	}

	public void setPtr_code(int ptr_code) {
		this.ptr_code = ptr_code;
	}
	
	public String getPtr_name() {
		System.out.println(ptr_name);
		return ptr_name;
	}

	public void setPtr_name(String ptr_name) {
		System.out.println(ptr_name);
		this.ptr_name = ptr_name;
	}

	public int getPtr_apply_code() {
		return ptr_apply_code;
	}

	public void setPtr_apply_code(int ptr_apply_code) {
		this.ptr_apply_code = ptr_apply_code;
	}

	public int getMem_code() {
		return mem_code;
	}

	public void setMem_code(int mem_code) {
		this.mem_code = mem_code;
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

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public PartnerVO() {

	}

}
