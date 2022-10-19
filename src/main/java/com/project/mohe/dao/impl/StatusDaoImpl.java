package com.project.mohe.dao.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.dao.StatusDAO;
import com.project.mohe.domain.StatusVO;

@Repository("StatusDAO")
public class StatusDaoImpl implements StatusDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public StatusVO getFdStatus() {
		return mybatis.selectOne("StatusDAO.getFdStatus");
	}

	@Override
	public StatusVO getDonation() {
		return mybatis.selectOne("StatusDAO.getDonation");
	}

	@Override
	public StatusVO getBsStatus() {
		return mybatis.selectOne("StatusDAO.getBsStatus");
	}

	@Override
	public StatusVO getNewFdCnt() {
		return mybatis.selectOne("StatusDAO.getNewFdCnt");
	}

	@Override
	public StatusVO getNewBsCnt() {
		return mybatis.selectOne("StatusDAO.getNewBsCnt");
	}

	@Override
	public StatusVO getNewDntCnt() {
		return mybatis.selectOne("StatusDAO.getNewDntCnt");
	}

}
