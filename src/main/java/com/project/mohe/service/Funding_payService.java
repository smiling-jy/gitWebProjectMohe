package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.Funding_payVO;

public interface Funding_payService {
	// CRUD 기능 구현
	// 글 등록
	void insertFunding_pay(Funding_payVO vo);
				
	// 글 수정
	void updateFunding_pay(Funding_payVO vo);
			
	// 글 삭제
	void deleteFunding_pay(Funding_payVO vo);
			 
	// 글 상세 조회
	Funding_payVO getFunding_pay(Funding_payVO vo);
			
	// 글 목록 조회
	List<Funding_payVO> getFunding_payList(HashMap map);
}