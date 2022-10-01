package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.Funding_cartVO;

public interface Funding_cartService {
	// CRUD 기능 구현
	// 글 등록
	void insertFunding_cart(Funding_cartVO vo);
				
	// 글 수정
	void updateFunding_cart(Funding_cartVO vo);
			
	// 글 삭제
	void deleteFunding_cart(Funding_cartVO vo);
			 
	// 글 상세 조회
	Funding_cartVO getFunding_cart(Funding_cartVO vo);
			
	// 글 목록 조회
	List<Funding_cartVO> getFunding_cartList(HashMap map);
}