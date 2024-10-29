package com.spring.mom.vo;

public class CartVO {

 	
	private int p_no;	
 	private String p_callno	;
 	private String u_id	;
	private int p_count	;
	private String p_name;
	private int p_price;
	private int p_total;
	private String p_img;
	private int c_total;
	
	
	
	public int getP_total() {
		return p_total;
	}
	public void setP_total(int p_total) {
		this.p_total = p_total;
	}
	public String getP_img() {
		return p_img;
	}
	public void setP_img(String p_img) {
		this.p_img = p_img;
	}
	public int getC_total() {
		return c_total;
	}
	public void setC_total(int c_total) {
		this.c_total = c_total;
	}
	public int getP_no() {
		return p_no;
	}
	public void setP_no(int p_no) {
		this.p_no = p_no;
	}
	public String getP_callno() {
		return p_callno;
	}
	public void setP_callno(String p_callno) {
		this.p_callno = p_callno;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public int getP_count() {
		return p_count;
	}
	public void setP_count(int p_count) {
		this.p_count = p_count;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	@Override
	public String toString() {
		return "CartVO [p_no=" + p_no + ", p_callno=" + p_callno + ", u_id=" + u_id + ", p_count=" + p_count
				+ ", p_name=" + p_name + ", p_price=" + p_price + ", p_total=" + p_total + ", p_img=" + p_img
				+ ", c_total=" + c_total + "]";
	}
}
