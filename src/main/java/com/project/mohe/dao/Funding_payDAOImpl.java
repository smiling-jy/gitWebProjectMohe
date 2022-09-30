package com.project.mohe.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.domain.EventVO;
import com.project.mohe.domain.Funding_payVO;


@Repository("funding_payDAO")
public class Funding_payDAOImpl implements Funding_payDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void insertFunding_pay(Funding_payVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateFunding_pay(Funding_payVO vo) {
		// TODO Auto-generated method stub
		
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
	public List<Funding_payVO> getFunding_payList(HashMap map) {
		// TODO Auto-generated method stub
		return null;
	}


}
