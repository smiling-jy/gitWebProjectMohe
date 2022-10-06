package com.project.mohe.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.dao.ReviewDAO;
import com.project.mohe.domain.ReviewVO;

@Repository("reviewDAO")
public class ReviewDAOImpl implements ReviewDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void insertReview(ReviewVO vo) {
		mybatis.insert("ReviewDAO.insertReview",vo);
		
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
	public void incReadCount(ReviewVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ReviewVO getReview(ReviewVO vo) {
		return null;
	}

	@Override
	public List<ReviewVO> getReviewList() {
		System.out.println("========>리뷰리스트 DAOimpl");
		return mybatis.selectList("ReviewDAO.getReivewList");
	}

	

}
