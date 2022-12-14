package com.project.mohe.domain;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class EventVO {
	
	private int event_no;
	private int adm_no;
	private String event_title;
	private String event_text;
	private String event_img;
	private String event_stdate;
	private String event_eddate;
	private String event_thumbnail; //게시판에 띄울 썸네일
	private String event_main; //메인에 나올 이미지
	
	// join 해서 관리자 아이디를 adm_no 대신에 사용하기위해 추가한 변수
	private String adm_id;

	//이전글 다음글을 위한 추가 변수
	private int next;
	private int prev;
	private String next_title;
	private String prev_title;
	
	MultipartFile title_img; // 이벤트 타이틀 첨부파일 이미지
	MultipartFile main_img;  // 이벤트 메인 첨부파일 이미지
	
}
