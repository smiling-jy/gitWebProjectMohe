package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.partnerDAO;
import com.project.mohe.domain.BoardVO;

@Service("partnerService")
public class partnerServiceImpl implements partnerService {
	
	@Autowired
	private partnerDAO partnerDAO;

	@Override
	public void insertPartner(BoardVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updatePartner(BoardVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deletePartner(BoardVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public BoardVO getPartner(BoardVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BoardVO> getPartnerList(HashMap map) {
		// TODO Auto-generated method stub
		return null;
	}

}
