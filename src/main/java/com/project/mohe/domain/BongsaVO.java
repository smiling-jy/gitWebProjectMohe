package com.project.mohe.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class BongsaVO {
	private int bs_no;
	private int user_no;
	private String bs_title;
	private String bs_content;
	private String bs_region;
	private String bs_place;
	private String bs_recruit_start;
	private String bs_recruit_end;
	private String bs_work_start;
	private String bs_work_end;
	private int bs_goal_cnt;
	private int bs_success_cnt;
	private String bs_ing; //진행 or 완료
	private String bs_name;
	private String bs_phone;
	private String bs_email;
	private int bs_img_cnt;
	private String bs_img_name;
	
	
	//db에 없는 변수들
	
	private String remain_day; //봉사 종료일
	private int bs_rate; //인원 모집 달성률
	// 관리자 페이지에서 user_no로 조인할 주최자 아이디 변수
	private String user_email;
	// 관리자 페이지에서 승인/취소에 쓰일 변수
	private String bs_judg;
	// 참여하기 페이지에서 사용
	private String user_name; //참여자 이름
	private String user_phone; //참여자 연락처
	private int pUser_no; // 봉사참여자 회원번호
	
	//봉사 참여할 때
	private int volun_no;
	private String vt_bs_name;
	private String vt_title;
	private String vt_place;
	private String vt_recruit_start;
	private String vt_recruit_end;
	private String vt_work_start;
	private String vt_work_end;
	private int vt_ing;
	private String vt_name;
	private String vt_user_phone;
	private String vt_user_email;
	private String re_bs_work_end;
	private String re_bs_work_start;
	
	// 첨부 파일
	private MultipartFile title_img;
	private MultipartFile[] file;
	

	
	
	
	
	
}
