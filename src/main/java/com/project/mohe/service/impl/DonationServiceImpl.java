package com.project.mohe.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.DonationDAO;
import com.project.mohe.domain.DonationVO;
import com.project.mohe.domain.PagingVO;
import com.project.mohe.service.DonationService;

@Service("donationService")
public class DonationServiceImpl implements DonationService {

	@Autowired
	private DonationDAO donationDao;

	// 기부 등록
	@Override
	public void insertDonation(DonationVO vo) {
		donationDao.insertDonation(vo);
		
	}

	// 기부 리스트 조회
	@Override
	public List<DonationVO> getDonationList() {
		return donationDao.getDonationList();
	}


	// 페이징 서비스를 위한 메소드
	@Override
	public PagingVO getAllcnt(PagingVO vo) {
		return donationDao.getAllcnt(vo);
	}

	
}
