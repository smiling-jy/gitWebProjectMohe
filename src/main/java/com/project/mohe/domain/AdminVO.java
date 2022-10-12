package com.project.mohe.domain;

import org.springframework.beans.factory.annotation.Autowired;

import lombok.Data;

@Data
public class AdminVO {
	private int adm_no;
	private String adm_id;
	private String adm_pass;
	private String adm_name;
	private String adm_dept;
	private String adm_phone;
	private String adm_adress;
	private String adm_hiredate;
	private String adm_enddate;

}
