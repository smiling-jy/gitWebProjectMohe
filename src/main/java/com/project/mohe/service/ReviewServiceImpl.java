package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.ReviewDAO;
import com.project.mohe.domain.ReviewVO;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService{
	
	@Autowired
	private ReviewDAO reviewDAO;

	@Override
	public void insertReview(ReviewVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateReview(ReviewVO vo) {
		// TODO Auto-generated method stub
		
	} 

	@Override
	public void deleteReview(ReviewVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ReviewVO getReview(ReviewVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ReviewVO> getReviewList(HashMap map) {
		// TODO Auto-generated method stub
		return null;
	}

}
