package com.project.mohe.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.dao.Funding_payDAO;
import com.project.mohe.domain.EventVO;
import com.project.mohe.domain.Funding_payVO;
import com.project.mohe.domain.PagingVO;
import com.project.mohe.domain.UserInfoVO;


@Repository("funding_payDAO")
public class Funding_payDAOImpl implements Funding_payDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void insertFunding_pay(Funding_payVO vo) {
		mybatis.insert("Funding_payDAO.insertFunding_pay",vo);
		
	}

	@Override
	public void updateFunding_pay(Funding_payVO vo) {
		mybatis.update("Funding_payDAO.updateFunding_pay", vo);
		
	}

	@Override
	public void deleteFunding_pay(Funding_payVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public EventVO getFunding_pay(Funding_payVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Funding_payVO> getFunding_payList(Funding_payVO vo) {
		return mybatis.selectList("Funding_payDAO.getPayList", vo);
	}

	@Override
	public List<Funding_payVO> adGetFunding_payList(PagingVO vo) {
		return mybatis.selectList("Funding_payDAO.adGetFunding_payList",vo);
	}

	@Override
	public Funding_payVO getPay_no(Funding_payVO vo) {
		return mybatis.selectOne("Funding_payDAO.getPay_no",vo);
	}

	@Override
	public PagingVO getAllcnt(PagingVO vo) {
		return mybatis.selectOne("Funding_payDAO.getAllcnt",vo);
	}

	@Override
	public UserInfoVO getJoinFd(UserInfoVO vo) {
		return mybatis.selectOne("Funding_payDAO.getJoinFd",vo);
	}


}
