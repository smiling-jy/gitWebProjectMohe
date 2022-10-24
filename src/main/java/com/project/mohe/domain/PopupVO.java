package com.project.mohe.domain;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class PopupVO {
	
	private int pop_no;
	private String pop_title;
	private String pop_img;
	private String pop_start_date;
	private String pop_end_date;
	private String pop_use;
	private int pop_url_no;
	
	// 첨부 파일
	MultipartFile title_img;
}
