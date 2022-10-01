package com.project.mohe.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.domain.EventVO;
import com.project.mohe.domain.Funding_cartVO;


@Repository("funding_cartDAO")
public class Funding_cartDAOImpl implements Funding_cartDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void insertFunding_cart(Funding_cartVO vo) {
		// TODO Auto-generated method stub
		
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
	public EventVO getFunding_cart(Funding_cartVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Funding_cartVO> getFunding_cartList(HashMap map) {
		// TODO Auto-generated method stub
		return null;
	}


}
