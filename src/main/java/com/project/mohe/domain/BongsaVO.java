package com.project.mohe.domain;

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
	private int bs_read_cnt;
}
