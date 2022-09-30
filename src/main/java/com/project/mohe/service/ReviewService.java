package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.ReviewVO;

public interface ReviewService {
	// CRUD 기능 구현
	// 글 등록
	void insertReview(ReviewVO vo);
			
	// 글 수정
	void updateReview(ReviewVO vo);
		
	// 글 삭제
	void deleteReview(ReviewVO vo);
		
	// 글 상세 조회
	ReviewVO getReview(ReviewVO vo); 
		
	// 글 목록 조회
	List<ReviewVO> getReviewList(HashMap map);
}
