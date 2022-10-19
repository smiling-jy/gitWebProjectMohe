package com.project.mohe.domain;

import java.io.IOException;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ReviewVO {
	
	private int review_no;
	private String review_title;
	private int review_img_cnt;
	private String review_img;
	private String review_text;
	private Date review_date;
	private int user_no;
	private String user_name;
	private int review_read_cnt;
	
	//이전글 다음글을 위한 추가 변수
	private int next;
	private int prev;
	private String next_title;
	private String prev_title;
	
	
	//파일첨부
	
	private String fName; 
	private String fileExtension;
	private long fsize;
	
	MultipartFile file; //리뷰작성폼jsp에서 name="file"과 동일한 변수명 
	
	
		
}


	

