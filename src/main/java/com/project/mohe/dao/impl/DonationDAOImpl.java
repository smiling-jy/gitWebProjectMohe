package com.project.mohe.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.dao.DonationDAO;
import com.project.mohe.domain.AdminVO;
import com.project.mohe.domain.DonationVO;
import com.project.mohe.domain.EventVO;
import com.project.mohe.domain.PagingVO;


@Repository("donationDAO")
public class DonationDAOImpl implements DonationDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void insertDonation(DonationVO vo) {
		mybatis.insert("DonationDAO.insertDonation",vo);
		
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
		return mybatis.selectList("DonationDAO.getDonationList");
	}

	@Override
	public List<DonationVO> getAdDonationList(PagingVO vo) {
		return mybatis.selectList("DonationDAO.getAdDonationList",vo);
	}

	@Override
	public PagingVO getAllcnt(PagingVO vo) {
		return mybatis.selectOne("DonationDAO.getAllcnt",vo);
	}

	@Override
	public void donationOk(DonationVO vo) {
		mybatis.update("DonationDAO.donationOk",vo);
	}
	

}
