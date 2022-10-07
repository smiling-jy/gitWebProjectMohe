package com.project.mohe.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.DonationDAO;
import com.project.mohe.dao.PartnerDAO;
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

	@Override
	public List<Funding_pjVO> adGetFdList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BongsaVO> getBsList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PartnerVO> getPartnerList() {
		return partnerDao.getPartnerList(null);
	}

	@Override
	public List<ReviewVO> getReviewList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<DonationVO> getDonationList() {
		return donationDao.getDonationList();
	}

	@Override
	public List<EventVO> getEventList() {
		// TODO Auto-generated method stub
		return null;
	}

}
