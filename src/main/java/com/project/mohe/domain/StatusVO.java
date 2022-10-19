package com.project.mohe.domain;

import org.springframework.beans.factory.annotation.Autowired;

import lombok.Data;

@Data
public class StatusVO {
	// 수치 표기를 위한 VO
	
	private int fdJoinCnt; // 기부펀딩 참여인원
	private int bsJoinCnt; // 봉사 참여인원
	private long allDonate; //총 기부금액
	private long allFdPrice; // 펀딩 총 참여 금액
	
	private int fdNewCnt; // 승인대기 펀딩수
	private int bsNewCnt; // 승인대기 봉사수
	private int dntNewCnt; // 확인대기 기부

}
