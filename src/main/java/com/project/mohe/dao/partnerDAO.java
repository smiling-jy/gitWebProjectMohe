package com.project.mohe.dao;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.BoardVO;

public interface partnerDAO {
	// CRUD 기능 구현
		// 글 등록
		void insertPartner(BoardVO vo);
				
		// 글 수정
		void updatePartner(BoardVO vo);
			
		// 글 삭제
		void deletePartner(BoardVO vo);
			
		// 글 상세 조회
		BoardVO getPartner(BoardVO vo);
			
		// 글 목록 조회
		List<BoardVO> getPartnerList(HashMap map);
}
