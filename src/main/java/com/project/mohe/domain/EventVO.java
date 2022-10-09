package com.project.mohe.domain;
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
	
	// join 해서 관리자 아이디를 adm_no 대신에 사용하기위해 추가한 변수
	private String adm_id;

	
}
