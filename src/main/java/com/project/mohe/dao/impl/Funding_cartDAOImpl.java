package com.project.mohe.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.dao.Funding_cartDAO;
import com.project.mohe.domain.EventVO;
import com.project.mohe.domain.Funding_cartVO;


@Repository("funding_cartDAO")
public class Funding_cartDAOImpl implements Funding_cartDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void insertFunding_cart(Funding_cartVO vo) {
		mybatis.insert("Funding_cartDAO.insertFunding_cart", vo);
		
	}

	@Override
	public void updateFunding_cart(Funding_cartVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteFunding_cart(Funding_cartVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Funding_cartVO getFunding_cart(Funding_cartVO vo) {
		return mybatis.selectOne("Funding_cartDAO.getFunding_cart", vo);
	}

	@Override
	public List<Funding_cartVO> getFunding_cartList(HashMap map) {
		// TODO Auto-generated method stub
		return null;
	}


}
