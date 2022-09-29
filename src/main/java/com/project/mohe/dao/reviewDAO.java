package com.project.mohe.dao;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.BoardVO;

public interface reviewDAO {

	// CRUD 기능 구현
	// 글 등록
	void insertReview(BoardVO vo);
			
	// 글 수정
	void updateReview(BoardVO vo);
		
	// 글 삭제
	void deleteReview(BoardVO vo);
		
	// 글 조회수 증가
	void incReadCount(BoardVO vo);
		
	// 글 상세 조회
	BoardVO getReview(BoardVO vo);
		
	// 글 목록 조회
	List<BoardVO> getReviewList(HashMap map);
}
