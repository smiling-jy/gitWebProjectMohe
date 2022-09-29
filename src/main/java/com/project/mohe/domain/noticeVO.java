package com.project.mohe.domain;

import java.util.Date;



public class noticeVO {
	
	private int notice_no;
	private int adm_no;
	private String notice_title;
	private String notice_text;
	private int notice_img_cnt;
	private String notice_img;
	private int notice_readcnt;
	private Date notice_date;
	
	
	public int getNotice_no() {
		return notice_no;
	}
	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
	}
	public int getAdm_no() {
		return adm_no;
	}
	public void setAdm_no(int adm_no) {
		this.adm_no = adm_no;
	}
	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	public String getNotice_text() {
		return notice_text;
	}
	public void setNotice_text(String notice_text) {
		this.notice_text = notice_text;
	}
	public int getNotice_img_cnt() {
		return notice_img_cnt;
	}
	public void setNotice_img_cnt(int notice_img_cnt) {
		this.notice_img_cnt = notice_img_cnt;
	}
	public String getNotice_img() {
		return notice_img;
	}
	public void setNotice_img(String notice_img) {
		this.notice_img = notice_img;
	}
	public int getNotice_readcnt() {
		return notice_readcnt;
	}
	public void setNotice_readcnt(int notice_readcnt) {
		this.notice_readcnt = notice_readcnt;
	}
	public Date getNotice_date() {
		return notice_date;
	}
	public void setNotice_date(Date notice_date) {
		this.notice_date = notice_date;
	}
	
	
	
}