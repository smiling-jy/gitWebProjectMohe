package com.project.mohe.dao;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.Funding_qnaVO;

public interface Funding_qnaDAO {
	// CRUD 기능 구현
		// 글 등록
		void insertFunding_qna(Funding_qnaVO vo);
				
		// 글 수정
		void updateFunding_qna(Funding_qnaVO vo); 
			
		// 글 삭제
		void deleteFunding_qna(Funding_qnaVO vo);
			
		// 글 상세 조회
		Funding_qnaVO getFunding_qna(Funding_qnaVO vo);
			
		// 글 목록 조회
		List<Funding_qnaVO> getFunding_qnaList(HashMap map);
		//<BoardVO> 가 <eventVO> 로 되어야하는게 아닌가
}
