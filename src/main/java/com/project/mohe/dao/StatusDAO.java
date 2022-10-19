package com.project.mohe.dao;

import com.project.mohe.domain.StatusVO;

public interface StatusDAO {
	// 수치 표기를 위한 db접속용 dao
	
	// 펀딩 총 참여인원과 총 펀딩 참여금액을 불러오는 메소드
	StatusVO getFdStatus();
	
	// 총 기부금액을 불러오는 메소드
	StatusVO getDonation();
	
	// 봉사 총 참여인원을 불러오는 메소드
	StatusVO getBsStatus();
	
	// 미승인 펀딩수 불러오는 메소드
	StatusVO getNewFdCnt();
	
	// 미승인 봉사수 불러오는 메소드
	StatusVO getNewBsCnt();
	
	// 확인전 기부수 불러오는메소드
	StatusVO getNewDntCnt();
	
}
