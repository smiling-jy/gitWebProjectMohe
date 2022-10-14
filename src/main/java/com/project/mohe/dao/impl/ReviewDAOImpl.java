package com.project.mohe.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.dao.ReviewDAO;
import com.project.mohe.domain.PagingVO;
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
		mybatis.update("ReviewDAO.updateReview", vo);
		
	} 

	@Override
	public void deleteReview(ReviewVO vo) {
		mybatis.delete("ReviewDAO.deleteReview",vo);
		
	}

	@Override
	public void incReadCount(ReviewVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ReviewVO getReview(ReviewVO vo) {
		System.out.println("==============>리뷰 읽기 DAO");
		return mybatis.selectOne("ReviewDAO.getReview", vo);
	}

	@Override
	public List<ReviewVO> getReviewList() {
		return mybatis.selectList("ReviewDAO.getReviewList");
	}
	// 배스트 리뷰 리스트
	@Override
	public List<ReviewVO> getBestReview() {
		return mybatis.selectList("ReviewDAO.getBestReview");
	}

	//이전글다음글
	@Override
	public ReviewVO movePage(ReviewVO vo) {
		System.out.println("==============>리뷰 이전글다음글 DAO");
		return mybatis.selectOne("ReviewDAO.movePageReview", vo);
	}

	@Override
	public PagingVO getAllcnt(PagingVO vo) {
		return mybatis.selectOne("ReviewDAO.getAllcnt",vo);
	}

	@Override
	public List<ReviewVO> getAdReviewList(PagingVO vo) {
		return mybatis.selectList("ReviewDAO.getAdReviewList",vo);
	}

	
	
	

}
