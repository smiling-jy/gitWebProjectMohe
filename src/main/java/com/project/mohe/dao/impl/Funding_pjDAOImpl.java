package com.project.mohe.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.dao.Funding_pjDAO;
import com.project.mohe.domain.EventVO;
import com.project.mohe.domain.Funding_pjVO;


@Repository("funding_pjDAO")
public class Funding_pjDAOImpl implements Funding_pjDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
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
	public EventVO getFunding_pj(Funding_pjVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Funding_pjVO> getFunding_pjList(HashMap map) {
		// TODO Auto-generated method stub
		return null;
	}


}
