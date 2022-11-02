package com.project.mohe.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.dao.DonationDAO;
import com.project.mohe.domain.DonationVO;
import com.project.mohe.domain.PagingVO;


@Repository("donationDAO")
public class DonationDAOImpl implements DonationDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	// 기부 정보 추가하기
	public void insertDonation(DonationVO vo) {
		mybatis.insert("DonationDAO.insertDonation",vo);
	}
	
	// 확인된 기부 리스트 불러오기
	@Override
	public List<DonationVO> getDonationList() {
		return mybatis.selectList("DonationDAO.getDonationList");
	}

	// 기부리스트 전체 불러오기
	@Override
	public List<DonationVO> getAdDonationList(PagingVO vo) {
		return mybatis.selectList("DonationDAO.getAdDonationList",vo);
	}

	// 페이징을 위한 기부 테이블의 전체 데이터 수 불러오기
	@Override
	public PagingVO getAllcnt(PagingVO vo) {
		return mybatis.selectOne("DonationDAO.getAllcnt",vo);
	}

	// 기부 확인하는 메소드
	@Override
	public void donationOk(DonationVO vo) {
		mybatis.update("DonationDAO.donationOk",vo);
	}
	

}
