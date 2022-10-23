package com.project.mohe.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.BongsaDAO;
import com.project.mohe.dao.DonationDAO;
import com.project.mohe.dao.EventDAO;
import com.project.mohe.dao.Funding_payDAO;
import com.project.mohe.dao.Funding_pjDAO;
import com.project.mohe.dao.PartnerDAO;
import com.project.mohe.dao.PopupDAO;
import com.project.mohe.dao.ReviewDAO;
import com.project.mohe.dao.StatusDAO;
import com.project.mohe.dao.UserInfoDAO;
import com.project.mohe.dao.VolunteerDAO;
import com.project.mohe.domain.BongsaVO;
import com.project.mohe.domain.DonationVO;
import com.project.mohe.domain.EventVO;
import com.project.mohe.domain.Funding_pjVO;
import com.project.mohe.domain.PartnerVO;
import com.project.mohe.domain.PopupVO;
import com.project.mohe.domain.ReviewVO;
import com.project.mohe.domain.StatusVO;
import com.project.mohe.domain.UserInfoVO;
import com.project.mohe.service.MainService;

@Service
public class MainServiceImpl implements MainService{
	
	@Autowired
	private DonationDAO donationDao;
	@Autowired
	private PartnerDAO partnerDao;
	@Autowired
	private ReviewDAO reviewDao;
	@Autowired
	private BongsaDAO bongsaDao;
	@Autowired
	private Funding_pjDAO funding_pjDao;
	@Autowired
	private EventDAO eventDao;
	@Autowired
	private PopupDAO popupDao;
	@Autowired
	private StatusDAO statusDao;
	@Autowired
	private UserInfoDAO userInfoDao;
	@Autowired
	private Funding_payDAO funding_payDao;
	@Autowired
	private VolunteerDAO volunteerDao;

	@Override
	public List<Funding_pjVO> getFdList() {
		return funding_pjDao.getBestFd();
	}

	@Override
	public List<BongsaVO> getBsList() {
		return bongsaDao.getDeadlineBs();
	}

	@Override
	public List<PartnerVO> getPartnerList() {
		return partnerDao.getPartnerList(null);
	}

	@Override
	public List<ReviewVO> getReviewList() {
		return reviewDao.getBestReview();
	}

	@Override
	public List<DonationVO> getDonationList() {
		return donationDao.getDonationList();
	}

	@Override
	public List<EventVO> getEventList() {
		return eventDao.getEventList(null);
	}

	@Override
	public PopupVO getMainPopup() {
		return popupDao.getMainPopup();
	}

	@Override
	public StatusVO getStatus() {
		// 각각의 정보를 취합해서 전달하기 
		// 펀딩 참여인원, 총 참여금액을 불러오는 메소드
		StatusVO vo = statusDao.getFdStatus();

		// 총 기부금액을 불러오는 메소드
		vo.setAllDonate(statusDao.getDonation().getAllDonate());

		// 봉사 총 참여인원을 불러오는 메소드
		vo.setBsJoinCnt(statusDao.getBsStatus().getBsJoinCnt());
		
		return vo;
	}

	// 기간이 지난 팝업들을 비활성화 시킨다
	@Override
	public void timeOutPop() {
		List<PopupVO> vo = popupDao.timeOutPopup();
		if(vo != null) {
			// 기간이 지난 팝업이 존재한다면
			for(PopupVO pop : vo) {
				// 리스트 내부에있는 팝업들을 비활성화 시켜준다
				popupDao.setPopupFalse(pop);
			}
		}
	}

	// 회원 등급조정
	@Override
	public void userRating() {
		// 전체 유저의 no,등급값을 받아옴
		List<UserInfoVO> userList = userInfoDao.getUserNo();
		// 포문으로 각각의 봉사,펀딩 참여 총갯수를 구한다
		for(UserInfoVO user : userList) {
			user.setFdCnt(funding_payDao.getJoinFd(user).getFdCnt());
			user.setBsCnt(volunteerDao.getJoinBs(user).getBsCnt());
			int allCnt = user.getFdCnt()+user.getBsCnt();
			// 포문을 돌려서 등급을 조정한다 
			if(allCnt >= 30 && !user.getUser_rating().equals("영웅")) {
				// 총합이 30 이상이고 등급이 영웅이 아니면 영웅으로 변경
				user.setUser_rating("영웅");
				userInfoDao.changeRating(user);
			}else if(allCnt >= 10 && !user.getUser_rating().equals("고수")) {
				// 총합이 10 이상 30미만이고 등급이 고수가 아니면 고수로 변경 
				user.setUser_rating("고수");
				userInfoDao.changeRating(user);
			}else if(allCnt < 10  && !user.getUser_rating().equals("시민")){
				// 총합이 10 미만이고 시민이 아니면 시민으로 변경
				user.setUser_rating("시민");
				userInfoDao.changeRating(user);
			}
			
		}
		System.out.println("등급조정 완료");
	}

}
