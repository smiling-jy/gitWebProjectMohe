package com.project.mohe.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.ReviewDAO;
import com.project.mohe.domain.ReviewVO;
import com.project.mohe.service.ReviewService;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService{
	
	@Autowired
	private ReviewDAO reviewDAO;

	@Override
	public void insertReview(ReviewVO vo) {
		System.out.println("=============>insert서비스");
		reviewDAO.insertReview(vo);
		
	}

	@Override
	public void updateReview(ReviewVO vo) {
		System.out.println("=============>업데이트 서비스");
		reviewDAO.updateReview(vo);
		
	} 

	@Override
	public void deleteReview(ReviewVO vo) {
		System.out.println("=============>딜리트 서비스");
		reviewDAO.deleteReview(vo);
		
	}

	@Override
	public ReviewVO getReview(ReviewVO vo) {
		
		return reviewDAO.getReview(vo);
	}

	@Override
	public List<ReviewVO> getReviewList() {
		
		return reviewDAO.getReviewList();
	}

}
