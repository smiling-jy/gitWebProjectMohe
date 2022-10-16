package com.project.mohe.dao;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.DonationVO;
import com.project.mohe.domain.PagingVO;

public interface DonationDAO {
	// CRUD 기능 구현
		// 글 등록
		void insertDonation(DonationVO vo);
				
		// 글 수정
		void updateDonation(DonationVO vo); 
			
		// 글 삭제
		void deleteDonation(DonationVO vo);
			
		// 글 상세 조회
		DonationVO getDonation(DonationVO vo);
			
		// 글 목록 조회
		List<DonationVO> getDonationList();

		// 관리자 페이지에서 리스트 조회
		List<DonationVO> getAdDonationList(PagingVO vo);
		
		// 페이징을 위한 메소드 
		PagingVO getAllcnt(PagingVO vo);
		
		// 기부 확인하는 메소드
		void donationOk(DonationVO vo);
}
