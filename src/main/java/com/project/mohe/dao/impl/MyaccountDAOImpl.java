package com.project.mohe.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.dao.MyaccountDAO;
import com.project.mohe.domain.BongsaVO;
import com.project.mohe.domain.Funding_cartVO;
import com.project.mohe.domain.Funding_payVO;
import com.project.mohe.domain.Funding_pjVO;
import com.project.mohe.domain.UserInfoVO;

@Repository("myaccountDAO")
public class MyaccountDAOImpl implements MyaccountDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void updateInfo(UserInfoVO vo) {
		mybatis.update("MyaccountDAO.updateInfo", vo);
	}

	@Override
	public List<Funding_payVO> getFunding_pjList(UserInfoVO vo) {
		return mybatis.selectList("MyaccountDAO.getAdFunding_pjList", vo);
	}
	
	@Override
	public List<BongsaVO> getBongsa_pjList(UserInfoVO vo) {
		return mybatis.selectList("MyaccountDAO.getBongs_pjList", vo);
	}

	@Override
	public int insertFunding_cart(Funding_cartVO vo) {
		return mybatis.insert("MyaccountDAO.insertFunding_cart", vo);
	}
	
	@Override
	public List<Funding_pjVO> getFunding_cartList(UserInfoVO vo) {
		return mybatis.selectList("MyaccountDAO.getFunding_cartList", vo);
	}

	@Override
	public List<BongsaVO> getBonsa_cartList(UserInfoVO vo) {
		// TODO Auto-generated method stub
		return null;
	}
}
