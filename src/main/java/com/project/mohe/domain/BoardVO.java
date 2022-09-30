package com.project.mohe.domain;

import java.util.Date;

//VO(Value Object)
import lombok.Data;

@Data
public class BoardVO {

	private int seq;
	private String title;
	private String writer;
	private String content;
	private Date regDate;
	private int cnt;

}