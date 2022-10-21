package com.project.mohe.domain;
import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class PartnerVO {
	
	private int partner_no;
	private String partner_name;
	private int partner_logo_cnt;
	private String partner_logo;
	private String partner_url;

	private MultipartFile logo_img_file;
}
