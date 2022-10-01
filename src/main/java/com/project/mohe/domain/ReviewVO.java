package com.project.mohe.domain;

import java.util.Date;
import lombok.Data;

@Data
public class ReviewVO {
	
	private int review_no;
	private String review_title;
	private int review_img_cnt;
	private String review_text;
	private Date review_date;
	private int user_no;
	private String user_name;
	private int review_readcnt;
	
}
