package com.project.mohe.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.ReviewDAO;
import com.project.mohe.domain.PagingVO;
import com.project.mohe.domain.ReviewVO;
import com.project.mohe.service.ReviewService;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService{
	
	@Autowired
	private ReviewDAO reviewDAO;

	@Override
	public void insertReview(ReviewVO vo) {
		
		reviewDAO.insertReview(vo);
		
	}

	@Override
	public void updateReview(ReviewVO vo) {
		
		reviewDAO.updateReview(vo);
		
	} 

	@Override
	public void deleteReview(ReviewVO vo) {
	
		reviewDAO.deleteReview(vo);
		
	}

	@Override
	public ReviewVO getReview(ReviewVO vo) {
		System.out.println("==============>리뷰 읽기 service Impl");
		return reviewDAO.getReview(vo);
	}

	@Override
	public List<ReviewVO> getReviewList(HashMap map) {
		
		return reviewDAO.getReviewList(map);
	}

	@Override
	public ReviewVO movePage(ReviewVO vo) {
		System.out.println("==============>리뷰 이전글다음글 service Impl");
		return reviewDAO.movePage(vo);
	}

	@Override
	public PagingVO getAllcnt(PagingVO vo) {
		return reviewDAO.getAllcnt(vo);
	}

	
}
