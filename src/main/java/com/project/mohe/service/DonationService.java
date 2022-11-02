package com.project.mohe.service;

import java.util.List;

import com.project.mohe.domain.DonationVO;
import com.project.mohe.domain.PagingVO;

public interface DonationService {
	
	// 기부 등록
	void insertDonation(DonationVO vo);
			
	// 기부 리스트 조회
	List<DonationVO> getDonationList();
	
	// 페이징 서비스를 위한 메소드
	PagingVO getAllcnt(PagingVO vo);
}
