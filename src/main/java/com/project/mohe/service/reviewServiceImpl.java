package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.reviewDAO;
import com.project.mohe.domain.BoardVO;

@Service("reviewService")
public class reviewServiceImpl implements reviewService{
	
	@Autowired
	private reviewDAO reviewDAO;

	@Override
	public void insertReview(BoardVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateReview(BoardVO vo) {
		// TODO Auto-generated method stub
		
	} 

	@Override
	public void deleteReview(BoardVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public BoardVO getReview(BoardVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BoardVO> getReviewList(HashMap map) {
		// TODO Auto-generated method stub
		return null;
	}

}
