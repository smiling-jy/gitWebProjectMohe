package com.project.mohe.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.Funding_payDAO;
import com.project.mohe.domain.Funding_payVO;
import com.project.mohe.service.Funding_payService;

@Service("Funding_payService")
public class Funding_payServiceImpl implements Funding_payService {
	
	@Autowired
	private Funding_payDAO funding_payDAO;

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
	public Funding_payVO getFunding_pay(Funding_payVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Funding_payVO> getFunding_payList(HashMap map) {
		// TODO Auto-generated method stub
		return null;
	}
	

}
