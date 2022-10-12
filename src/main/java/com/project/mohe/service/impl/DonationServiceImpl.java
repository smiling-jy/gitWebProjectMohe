package com.project.mohe.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.DonationDAO;
import com.project.mohe.domain.AdminVO;
import com.project.mohe.domain.DonationVO;
import com.project.mohe.domain.PagingVO;
import com.project.mohe.service.DonationService;

@Service("donationService")
public class DonationServiceImpl implements DonationService {

	@Autowired
	private DonationDAO donationDao;

	@Override
	public void insertDonation(DonationVO vo) {
		donationDao.insertDonation(vo);
		
	}

	@Override
	public void updateDonation(DonationVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteDonation(DonationVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public DonationVO getDonation(DonationVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<DonationVO> getDonationList() {
		return donationDao.getDonationList();
	}

	@Override
	public PagingVO getAllcnt() {
		return donationDao.getAllcnt();
	}
	
}
