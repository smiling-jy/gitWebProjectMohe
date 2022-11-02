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
		}else {
			return;
		}
	}

}