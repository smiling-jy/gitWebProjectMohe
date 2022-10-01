package com.project.mohe.dao;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.EventVO;
import com.project.mohe.domain.Funding_cartVO;

public interface Funding_cartDAO {
	// CRUD 기능 구현
		// 글 등록
		void insertFunding_cart(Funding_cartVO vo);
				
		// 글 수정
		void updateFunding_cart(Funding_cartVO vo); 
			
		// 글 삭제
		void deleteFunding_cart(Funding_cartVO vo);
			
		// 글 상세 조회
		EventVO getFunding_cart(Funding_cartVO vo);
			
		// 글 목록 조회
		List<Funding_cartVO> getFunding_cartList(HashMap map);
		//<BoardVO> 가 <eventVO> 로 되어야하는게 아닌가
}
