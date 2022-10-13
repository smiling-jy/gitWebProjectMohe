package com.project.mohe.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.dao.Funding_qnaDAO;
import com.project.mohe.domain.EventVO;
import com.project.mohe.domain.Funding_qnaVO;


@Repository("funding_qnaDAO")
public class Funding_qnaDAOImpl implements Funding_qnaDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void insertFunding_qna(Funding_qnaVO vo) {
		mybatis.insert("Funding_qnaDAO.insertFunding_qna", vo);
		
	}

	@Override
	public void updateFunding_qna(Funding_qnaVO vo) {
		mybatis.update("Funding_qnaDAO.updateFunding_qna", vo);
		
	}

	@Override
	public void deleteFunding_qna(Funding_qnaVO vo) {
		mybatis.delete("Funding_qnaDAO.deleteFunding_qna",vo);
		
	}

	@Override
	public Funding_qnaVO getFunding_qna(Funding_qnaVO vo) {
		return mybatis.selectOne("Funding_qnaDAO.getFunding_qna", vo);
	}

	@Override
	public List<Funding_qnaVO> getFunding_qnaList(Funding_qnaVO vo) {
		return mybatis.selectList("Funding_qnaDAO.getFunding_qnaList", vo);
	}

	@Override
	public List<Funding_qnaVO> getHost_qnaList(Funding_qnaVO vo) {
		return mybatis.selectList("Funding_qnaDAO.getHost_qnaList", vo);
	}

}
