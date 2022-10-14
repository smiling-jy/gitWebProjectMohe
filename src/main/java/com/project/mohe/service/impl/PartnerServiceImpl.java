package com.project.mohe.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.PartnerDAO;
import com.project.mohe.domain.PagingVO;
import com.project.mohe.domain.PartnerVO;
import com.project.mohe.service.PartnerService;

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
		return partnerDAO.getPartnerList(map);
	}

	@Override
	public PagingVO getAllcnt(PagingVO vo) {
		return partnerDAO.getAllcnt(vo);
	}

	@Override
	public List<PartnerVO> getAdPartnerList(PagingVO vo) {
		return partnerDAO.getAdPartnerList(vo);
	}

}
