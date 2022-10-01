package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.Funding_pjDAO;
import com.project.mohe.domain.Funding_pjVO;

@Service("Funding_pjService")
public class Funding_pjServiceImpl implements Funding_pjService {
	
	@Autowired
	private Funding_pjDAO funding_pjDAO;

	@Override
	public void insertFunding_pj(Funding_pjVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateFunding_pj(Funding_pjVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteFunding_pj(Funding_pjVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Funding_pjVO getFunding_pj(Funding_pjVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Funding_pjVO> getFunding_pjList(HashMap map) {
		// TODO Auto-generated method stub
		return null;
	}
	

}
