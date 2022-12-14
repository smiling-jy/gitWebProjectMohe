package com.project.mohe.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.Funding_pjDAO;
import com.project.mohe.domain.Funding_pjVO;
import com.project.mohe.domain.PagingVO;
import com.project.mohe.service.Funding_pjService;

@Service("Funding_pjService")
public class Funding_pjServiceImpl implements Funding_pjService {
	
	@Autowired
	private Funding_pjDAO funding_pjDAO;

	@Override
	public int insertFunding_pj(Funding_pjVO pj) {
		
		return funding_pjDAO.insertFunding_pj(pj);
		
	}

	@Override
	public void updateFunding_pj(Funding_pjVO pj) {
		funding_pjDAO.updateFunding_pj(pj);
		
	}

	@Override
	public void deleteFunding_pj(Funding_pjVO pj) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Funding_pjVO getFunding_pj(Funding_pjVO pj) {
		return funding_pjDAO.getFunding_pj(pj);
	}

	@Override
	public List<Funding_pjVO> getFunding_pjList(HashMap map) {
		
		return funding_pjDAO.getFunding_pjList(map);
	}

	@Override
	public List<Funding_pjVO> getSuccess_pjList(HashMap map) {
		return funding_pjDAO.getSuccess_pjList(map);
	}

	@Override
	public List<Funding_pjVO> getOngoing_pjlist(HashMap map) {
		return funding_pjDAO.getOngoing_pjlist(map);
	}

	@Override
	public PagingVO getAllcntOk(PagingVO vo) {
		return funding_pjDAO.getAllcntOk(vo);
	}
	@Override
	public PagingVO getAllcntNo(PagingVO vo) {
		return funding_pjDAO.getAllcntNo(vo);
	}
	

}
