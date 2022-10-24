package com.project.mohe.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.Funding_payDAO;
import com.project.mohe.dao.UserInfoDAO;
import com.project.mohe.dao.VolunteerDAO;
import com.project.mohe.domain.Funding_payVO;
import com.project.mohe.domain.PagingVO;
import com.project.mohe.domain.UserInfoVO;
import com.project.mohe.service.Funding_payService;

@Service("Funding_payService")
public class Funding_payServiceImpl implements Funding_payService {
	
	@Autowired
	private Funding_payDAO funding_payDAO;
	@Autowired
	private UserInfoDAO userInfoDao;
	@Autowired
	private VolunteerDAO volunteerDao;

	@Override
	public void insertFunding_pay(Funding_payVO vo, UserInfoVO us) {
		funding_payDAO.insertFunding_pay(vo);
		
		// 참여하는 유저의 user_no로 등급값을 받아옴
		us = userInfoDao.getUserInfo(us);
		// 포문으로 각각의 봉사,펀딩 참여 총갯수를 구한다
		us.setFdCnt(funding_payDAO.getJoinFd(us).getFdCnt());
		us.setBsCnt(volunteerDao.getJoinBs(us).getBsCnt());
		if (us.getFdCnt() != 0 || us.getBsCnt() != 0) {
			int allCnt = us.getFdCnt() + us.getBsCnt();
			// 포문을 돌려서 등급을 조정한다
			if (allCnt >= 30 && !us.getUser_rating().equals("영웅")) {
				// 총합이 30 이상이고 등급이 영웅이 아니면 영웅으로 변경
				us.setUser_rating("영웅");
				userInfoDao.changeRating(us);
			} else if (allCnt >= 10 && !us.getUser_rating().equals("고수")) {
				// 총합이 10 이상 30미만이고 등급이 고수가 아니면 고수로 변경
				us.setUser_rating("고수");
				userInfoDao.changeRating(us);
			} else if (allCnt < 10 && !us.getUser_rating().equals("시민")) {
				// 총합이 10 미만이고 시민이 아니면 시민으로 변경
				us.setUser_rating("시민");
				userInfoDao.changeRating(us);
			}
		}
		System.out.println("등급조정 완료");
	}

	@Override
	public void updateFunding_pay(Funding_payVO vo) {
		funding_payDAO.updateFunding_pay(vo);
		
	}

	@Override
	public void deleteFunding_pay(Funding_payVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Funding_payVO getFunding_pay(Funding_payVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Funding_payVO> getFunding_payList(Funding_payVO vo) {
		
		return funding_payDAO.getFunding_payList(vo);
	}

	@Override
	public Funding_payVO getPay_no(Funding_payVO vo) {
		return funding_payDAO.getPay_no(vo);
	}

	@Override
	public List<Funding_payVO> adGetFunding_payList(PagingVO vo) {
		return funding_payDAO.adGetFunding_payList(vo);
	}

	@Override
	public PagingVO getAllcnt(PagingVO vo) {
		// TODO Auto-generated method stub
		return funding_payDAO.getAllcnt(vo);
	}
	

}
