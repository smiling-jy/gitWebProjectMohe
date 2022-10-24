package com.project.mohe.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.Funding_payDAO;
import com.project.mohe.dao.UserInfoDAO;
import com.project.mohe.dao.VolunteerDAO;
import com.project.mohe.domain.PagingVO;
import com.project.mohe.domain.UserInfoVO;
import com.project.mohe.domain.VolunteerVO;
import com.project.mohe.service.VolunteerService;

@Service("volunteerService")
public class VolunteerServiceImpl implements VolunteerService {

	@Autowired
	private VolunteerDAO volunteerDao;
	
	@Autowired
	private UserInfoDAO userInfoDao;
	@Autowired
	private Funding_payDAO funding_payDao;
	
	
	
	@Override
	public void insertVolunteer(VolunteerVO vo) {
		System.out.println("insertVolun 서비스 입구");
		volunteerDao.insertVolunteer(vo);
		volunteerDao.incSuccessCnt(vo);
		  // > 파라미터로 user_no가 들어있는 UserInfoVO vo 객체를 받아옴
		
			UserInfoVO vu = new UserInfoVO();
			vu.setUser_no(vo.getUser_no());
	      // 참여하는 유저의 user_no로 등급값을 받아옴
			vu = userInfoDao.getUserInfo(vu);
	      // 포문으로 각각의 봉사,펀딩 참여 총갯수를 구한다
	      if(vu != null) {
	    	  vu.setFdCnt(funding_payDao.getJoinFd(vu).getFdCnt());
	    	  vu.setBsCnt(volunteerDao.getJoinBs(vu).getBsCnt());
	            if(vu.getFdCnt() != 0 || vu.getBsCnt() != 0) {
	               int allCnt = vu.getFdCnt()+vu.getBsCnt();
	               // 포문을 돌려서 등급을 조정한다 
	               if(allCnt >= 30 && ! vu.getUser_rating().equals("영웅")) {
	                  // 총합이 30 이상이고 등급이 영웅이 아니면 영웅으로 변경
	            	   vu.setUser_rating("영웅");
	                  userInfoDao.changeRating(vu);
	               }else if(allCnt >= 10 && !vu.getUser_rating().equals("고수")) {
	                  // 총합이 10 이상 30미만이고 등급이 고수가 아니면 고수로 변경 
	            	   vu.setUser_rating("고수");
	                  userInfoDao.changeRating(vu);
	               }else if(allCnt < 10  && !vu.getUser_rating().equals("시민")){
	                  // 총합이 10 미만이고 시민이 아니면 시민으로 변경
	            	   vu.setUser_rating("시민");
	                  userInfoDao.changeRating(vu);
	               }
	            }
	         
	      }
	      System.out.println("등급조정 완료");
	   }
		 
	
	
	@Override
	public void updateVolunteer(VolunteerVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteVolunteer(VolunteerVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public VolunteerVO getVolunteer(VolunteerVO vo) {
	
		return volunteerDao.getVolunteer(vo);
	}

	@Override
	public List<VolunteerVO> getVolunteerList(HashMap map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void incSuccessCnt(VolunteerVO vo) {
		// TODO Auto-generated method stub
		
	}

	
	@Override
	public List<VolunteerVO> adGetVolunteerList(PagingVO vo) {
		volunteerDao.updateVolunteerIng(vo);
		return volunteerDao.adGetVolunteerList(vo);
	}

	@Override
	public PagingVO getAllcnt(PagingVO vo) {
		return volunteerDao.getAllcnt(vo);
	}

	@Override
	public void updateVolunteerIng(PagingVO vo) {
		// TODO Auto-generated method stub
		
	}
	
}
