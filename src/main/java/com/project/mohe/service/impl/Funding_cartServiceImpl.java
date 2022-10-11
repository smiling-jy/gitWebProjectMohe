package com.project.mohe.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.Funding_cartDAO;
import com.project.mohe.domain.Funding_cartVO;
import com.project.mohe.service.Funding_cartService;

@Service("Funding_cartService")
public class Funding_cartServiceImpl implements Funding_cartService {
	
	@Autowired
	private Funding_cartDAO funding_cartDAO;

	@Override
	public void insertFunding_cart(Funding_cartVO vo) {
		funding_cartDAO.insertFunding_cart(vo);
		
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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Funding_cartVO> getFunding_cartList(HashMap map) {
		// TODO Auto-generated method stub
		return null;
	}


}
