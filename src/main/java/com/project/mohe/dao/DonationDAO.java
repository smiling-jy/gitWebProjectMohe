package com.project.mohe.dao;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.DonationVO;

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
		//<BoardVO> 가 <eventVO> 로 되어야하는게 아닌가
}
