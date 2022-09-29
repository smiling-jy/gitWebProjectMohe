package com.project.mohe.domain;

import java.util.Date;

public class reviewVO {
	
	private int review_no;
	private String review_title;
	private int review_img_cnt;
	private String review_text;
	private Date review_date;
	private int user_no;
	private String user_name;
	
	
	public int getReview_no() {
		return review_no;
	}
	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}
	public String getReview_title() {
		return review_title;
	}
	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}
	public int getReview_img_cnt() {
		return review_img_cnt;
	}
	public void setReview_img_cnt(int review_img_cnt) {
		this.review_img_cnt = review_img_cnt;
	}
	public String getReview_text() {
		return review_text;
	}
	public void setReview_text(String review_text) {
		this.review_text = review_text;
	}
	public Date getReview_date() {
		return review_date;
	}
	public void setReview_date(Date review_date) {
		this.review_date = review_date;
	}
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	
	
	
}
