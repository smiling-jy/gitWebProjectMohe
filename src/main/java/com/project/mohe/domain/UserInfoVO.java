package com.project.mohe.domain;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class UserInfoVO {
	private Integer user_no;
	private String user_name;
	private String user_phone;
	private String user_addr;
	private String user_img;
	private String user_info;
	private String user_intype;
	private String user_email;
	private String user_password;
	private String user_indate;
	private String user_outdate;
	private String user_rating;

	private MultipartFile user_img_file;
	
	private int fdCnt;// 전체 펀딩참여수
	private int BsCnt;// 전체 펀딩참여수
	
}
