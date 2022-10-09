package com.project.mohe.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.BongsaDAO;
import com.project.mohe.dao.DonationDAO;
import com.project.mohe.dao.EventDAO;
import com.project.mohe.dao.Funding_pjDAO;
import com.project.mohe.dao.PartnerDAO;
import com.project.mohe.dao.ReviewDAO;
import com.project.mohe.domain.BongsaVO;
import com.project.mohe.domain.DonationVO;
import com.project.mohe.domain.EventVO;
import com.project.mohe.domain.Funding_pjVO;
import com.project.mohe.domain.PartnerVO;
import com.project.mohe.domain.ReviewVO;
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

}
