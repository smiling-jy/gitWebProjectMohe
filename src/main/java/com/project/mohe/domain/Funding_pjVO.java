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
	private int fd_goals;
	private Date fd_startdate;
	private Date fd_enddate;
	private String fd_hostname;
	private String fd_host_phone;
	private String fd_host_email;
	private int fd_img_cnt;
	private String fd_img_name;
	private String fd_satatus;

	
}
