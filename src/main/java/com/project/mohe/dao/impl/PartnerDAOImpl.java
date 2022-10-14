package com.project.mohe.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.dao.PartnerDAO;
import com.project.mohe.domain.PagingVO;
import com.project.mohe.domain.PartnerVO;

@Repository("partnerDAO")
public class PartnerDAOImpl implements PartnerDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
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
		mybatis.delete("PartnerDAO.deletePartner",vo);
		
	}

	@Override
	public PartnerVO getPartner(PartnerVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PartnerVO> getPartnerList(HashMap map) {
		return mybatis.selectList("PartnerDAO.getPartnerList");
	}

	@Override
	public PagingVO getAllcnt(PagingVO vo) {
		return mybatis.selectOne("PartnerDAO.getAllcnt",vo);
	}

	@Override
	public List<PartnerVO> getAdPartnerList(PagingVO vo) {
		return mybatis.selectList("PartnerDAO.getAdPartnerList",vo);
	}


	
}
