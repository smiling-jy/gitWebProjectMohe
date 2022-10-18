package com.project.mohe.domain;

import java.util.Date;

import lombok.Data;

@Data
public class Funding_payVO {

	private int pay_no;
	private int fd_no;
	private int user_no;
	private String fd_title;
	private String fd_hostname;
	private String fd_img_name;
	private int fd_goals;
	private int fd_price;
	private String fd_status;
	private int pay_count;
	private int pay_total;
	private String pay_pn_name;
	private String pay_pn_phone;
	private String pay_pn_email;
	private String pay_pn_addr;
	private Date pay_date;
	private String pay_status;
	
	// 주소 + 상세주소 합치기 위한 변수
	private String addr1;
	private String addr2;

}
