package com.project.mohe.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.domain.EventVO;
import com.project.mohe.domain.Funding_qnaVO;


@Repository("funding_qnaDAO")
public class Funding_qnaDAOImpl implements Funding_qnaDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void insertFunding_qna(Funding_qnaVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateFunding_qna(Funding_qnaVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteFunding_qna(Funding_qnaVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Funding_qnaVO getFunding_qna(Funding_qnaVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Funding_qnaVO> getFunding_qnaList(HashMap map) {
		// TODO Auto-generated method stub
		return null;
	}

}
