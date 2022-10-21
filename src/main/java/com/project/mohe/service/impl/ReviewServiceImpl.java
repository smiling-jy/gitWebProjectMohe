package com.project.mohe.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.ReviewDAO;
import com.project.mohe.dao.UserInfoDAO;
import com.project.mohe.domain.PagingVO;
import com.project.mohe.domain.ReviewVO;
import com.project.mohe.domain.UserInfoVO;
import com.project.mohe.service.ReviewService;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService{
	
	@Autowired
	private ReviewDAO reviewDAO;
	@Autowired
	private UserInfoDAO userinfoDAO;
	
	
	@Override
	public void insertReview(UserInfoVO user_vo,ReviewVO vo) {
		//user_vo에 userinfo에 저장된 값을 넣어줌
		user_vo=userinfoDAO.getUserInfo(user_vo);
		//reviewVO의 username에 userinfo에서 가져온 username을 넣어줌
		//user rating도 넣어줌
		vo.setUser_name(user_vo.getUser_name());
		vo.setUser_rating(user_vo.getUser_rating());
		
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
		return reviewDAO.getReview(vo);
	}

	@Override
	public List<ReviewVO> getReviewList(HashMap map) {
		
		return reviewDAO.getReviewList(map);
	}

	@Override
	public ReviewVO movePage(ReviewVO vo) {
		return reviewDAO.movePage(vo);
	}

	@Override
	public PagingVO getAllcnt(PagingVO vo) {
		return reviewDAO.getAllcnt(vo);
	}

	@Override
	public List<ReviewVO> getMyReviewList(HashMap map) {
		return reviewDAO.getMyReview(map);
	}

	
}
