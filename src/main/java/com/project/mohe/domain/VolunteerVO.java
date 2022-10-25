package com.project.mohe.domain;

import java.sql.Date;

import lombok.Data;



@Data
public class VolunteerVO {
	private int volun_no;
	private int bs_no;
	private int user_no;
	private String vt_bs_name;
	private String bs_img_name;
	private String vt_title;
	private String vt_place;
	private String vt_recruit_start;
	private String vt_recruit_end;
	private String vt_work_start;
	private String vt_work_end;
	private String vt_ing;
	private String vt_name;
	private String vt_user_phone;
	private String vt_user_email;
	

}
