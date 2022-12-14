package com.project.mohe.service;

import java.util.List;

import com.project.mohe.domain.Funding_payVO;
import com.project.mohe.domain.PagingVO;
import com.project.mohe.domain.UserInfoVO;

public interface Funding_payService {
	// CRUD 기능 구현
	// 글 등록
	void insertFunding_pay(Funding_payVO vo , UserInfoVO us);
				
	// 글 수정
	void updateFunding_pay(Funding_payVO vo);
			
	// 글 삭제
	void deleteFunding_pay(Funding_payVO vo);
			 
	// 글 상세 조회
	Funding_payVO getFunding_pay(Funding_payVO vo);
	
	// 배송상태 변경 후 ajax로 화면 전환하기 위한 select
	Funding_payVO getPay_no(Funding_payVO vo);

			
	// 글 목록 조회
	List<Funding_payVO> getFunding_payList(Funding_payVO vo);
	
	// 마이페이지에서 참여목록 보기
	List<Funding_payVO> adGetFunding_payList(PagingVO vo);
	
	// 페이징
	PagingVO getAllcnt(PagingVO vo);
}
