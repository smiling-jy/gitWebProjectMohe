package com.project.mohe.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.Funding_qnaDAO;
import com.project.mohe.domain.Funding_qnaVO;
import com.project.mohe.service.Funding_qnaService;

@Service("Funding_qnaService")
public class Funding_qnaServiceImpl implements Funding_qnaService {
	
	@Autowired
	private Funding_qnaDAO funding_qnaDAO;

	@Override
	public void insertFunding_qna(Funding_qnaVO vo) {
		funding_qnaDAO.insertFunding_qna(vo);
		
	}

	@Override
	public void updateFunding_qna(Funding_qnaVO vo) {
		funding_qnaDAO.updateFunding_qna(vo);
		
	}

	@Override
	public void deleteFunding_qna(Funding_qnaVO vo) {
		funding_qnaDAO.deleteFunding_qna(vo);
		
	}

	@Override
	public Funding_qnaVO getFunding_qna(Funding_qnaVO vo) {
		return funding_qnaDAO.getFunding_qna(vo);
	}

	@Override
	public List<Funding_qnaVO> getFunding_qnaList(Funding_qnaVO vo) {
		return funding_qnaDAO.getFunding_qnaList(vo);
	}

	@Override
	public List<Funding_qnaVO> getHost_qnaList(Funding_qnaVO vo) {
		return funding_qnaDAO.getHost_qnaList(vo);
	}
	

}
