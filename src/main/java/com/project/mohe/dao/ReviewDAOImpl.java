package com.project.mohe.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.domain.ReviewVO;

@Repository("reviewDAO")
public class ReviewDAOImpl implements ReviewDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
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
	public void incReadCount(ReviewVO vo) {
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
