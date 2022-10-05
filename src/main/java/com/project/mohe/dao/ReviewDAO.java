package com.project.mohe.dao;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.ReviewVO;

public interface ReviewDAO {

	// CRUD 기능 구현
	// 글 등록
	void insertReview(ReviewVO vo);
			
	// 글 수정
	void updateReview(ReviewVO vo);
		
	// 글 삭제
	void deleteReview(ReviewVO vo);
		 
	// 글 조회수 증가
	void incReadCount(ReviewVO vo);
		
	// 글 상세 조회
	ReviewVO getReview(ReviewVO vo);
		
	// 글 목록 조회
	List<ReviewVO> getReviewList();
}
