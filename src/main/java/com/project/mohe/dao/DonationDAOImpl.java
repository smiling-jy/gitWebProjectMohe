package com.project.mohe.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.domain.AdminVO;
import com.project.mohe.domain.DonationVO;
import com.project.mohe.domain.EventVO;


@Repository("donationDAO")
public class DonationDAOImpl implements DonationDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void insertDonation(DonationVO vo) {
		// TODO Auto-generated method stub
		
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
	public List<DonationVO> getDonationList(HashMap map) {
		// TODO Auto-generated method stub
		return null;
	}
	

}
