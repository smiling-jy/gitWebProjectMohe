package com.project.mohe.domain;

import java.util.Date;
import lombok.Data;

@Data
public class Funding_pjVO {

	private int fd_user_no;
	private int fd_no;
	private String fd_category;
	private String fd_title;
	private String fd_content;
	private String fd_receiver;
	private int fd_price;
	private int fd_goals;
	private Date fd_startdate;
	private Date fd_enddate;
	private String fd_hostname;
	private String fd_host_phone;
	private String fd_host_email;
	private int fd_img_cnt;
	private String fd_img_name;
	private String fd_satatus;
	private int fd_read_cnt; 

//	 DB에 칼럼 추가할 필요 X 함수로 생성된 칼럼용 변수
	private String remain_day; // 펀딩종료까지 남은 일수
	private int total_sum; // 현재 모인 금액
	private int rate; // 현재 달성 퍼센트
	private int total_people; // 현재 모인 인원수
}
