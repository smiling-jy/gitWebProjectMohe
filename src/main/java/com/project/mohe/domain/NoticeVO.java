package com.project.mohe.domain;

import java.util.Date;


import lombok.Data;

@Data
public class NoticeVO {
	 
	private int notice_no;
	private int adm_no;
	private String notice_title;
	private String notice_text;
	private int notice_img_cnt;
	private String notice_img;
	private int notice_readcnt;
	private Date notice_date;
	// 관리자 아이디 명시하기위한 추가 변수
	private String adm_id;
	
}