package com.project.mohe.domain;

import java.util.Date;
import lombok.Data;

@Data
public class Funding_payVO {

	private int pay_no;
	private int pay_fd_no;
	private int pay_user_no;
	private String pay_title;
	private String pay_hostname;
	private int pay_count;
	private int pay_total;
	private String pay_pn_name;
	private String pay_pn_phone;
	private String pay_pn_email;
	private String pay_pn_addr;
	private Date pay_date;

}
