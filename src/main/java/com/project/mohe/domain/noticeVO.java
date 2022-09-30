package com.project.mohe.domain;

import java.util.Date;


import lombok.Data;

@Data
public class noticeVO {
	 
	private int notice_no;
	private int adm_no;
	private String notice_title;
	private String notice_text;
	private int notice_img_cnt;
	private String notice_img;
	private int notice_readcnt;
	private Date notice_date;
	
}