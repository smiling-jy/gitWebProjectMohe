package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.PartnerDAO;
import com.project.mohe.domain.PartnerVO;

@Service("partnerService")
public class PartnerServiceImpl implements PartnerService {
	
	@Autowired
	private PartnerDAO partnerDAO;

	@Override
	public void insertPartner(PartnerVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updatePartner(PartnerVO vo) {
		// TODO Auto-generated method stub
		
	}
  
	@Override
	public void deletePartner(PartnerVO vo) {
		// TODO Auto-generated method stub
		 
	}

	@Override
	public PartnerVO getPartner(PartnerVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PartnerVO> getPartnerList(HashMap map) {
		// TODO Auto-generated method stub
		return null;
	}

}
