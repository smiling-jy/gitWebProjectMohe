package com.project.mohe.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.dao.Funding_pjDAO;
import com.project.mohe.domain.Funding_pjVO;
import com.project.mohe.domain.PagingVO;


@Repository("funding_pjDAO")
public class Funding_pjDAOImpl implements Funding_pjDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public int insertFunding_pj(Funding_pjVO pj) {
		
		return mybatis.insert("Funding_pjDAO.insertFunding_pj" , pj);
	}
	
	

	@Override
	public void updateFunding_pj(Funding_pjVO pj) {
		mybatis.update("Funding_pjDAO.updateFunding_pj", pj);
		
	}

	@Override
	public void deleteFunding_pj(Funding_pjVO pj) {
		mybatis.delete("Funding_pjDAO.deleteFunding_pj",pj);
		
	}

	@Override
	public Funding_pjVO getFunding_pj(Funding_pjVO pj) {
		// 조회수 증가
		mybatis.update("Funding_pjDAO.upCount",pj);
		return mybatis.selectOne("Funding_pjDAO.getFunding_pj", pj);
	}

	@Override
	public List<Funding_pjVO> getFunding_pjList(HashMap map) {
		return mybatis.selectList("Funding_pjDAO.getFunding_pjList", map);
	}

	// 페이징펀딩 승인된 리스트 
	@Override
	public List<Funding_pjVO> getAdFunding_pjList(PagingVO vo) {
		return mybatis.selectList("Funding_pjDAO.getAdFunding_pjList",vo);
	}
	// 페이징펀딩 승인 안된 리스트 
	@Override
	public List<Funding_pjVO> getFdApprovalList(PagingVO vo) {
		return mybatis.selectList("Funding_pjDAO.getFdApprovalList",vo);
	}
	// 승인펀딩 페이징에 필요한 메소드
	@Override
	public PagingVO getAllcntOk(PagingVO vo) {
		return mybatis.selectOne("Funding_pjDAO.getAllcntOk",vo);
	}
	// 미승인펀딩 페이징에 필요한 메소드
	@Override
	public PagingVO getAllcntNo(PagingVO vo) {
		return mybatis.selectOne("Funding_pjDAO.getAllcntNo",vo);
	}
	
	// 펀딩 승인 업데이트
	public void okFdUpdate(Funding_pjVO vo) {
		mybatis.update("Funding_pjDAO.okFdUpdate", vo);
		
	}
	// 펀딩 비승인 업데이트
	public void noFdUpdate(Funding_pjVO vo) {
		mybatis.update("Funding_pjDAO.noFdUpdate", vo);
		
	}
	// 인기펀딩 리스트
	@Override
	public List<Funding_pjVO> getBestFd() {
		return mybatis.selectList("Funding_pjDAO.getBestFd");
	}



	@Override
	public List<Funding_pjVO> getSuccess_pjList(HashMap map) {
		
		return mybatis.selectList("Funding_pjDAO.getSuccess_pjList", map);
	}



	@Override
	public List<Funding_pjVO> getOngoing_pjlist(HashMap map) {
		return mybatis.selectList("Funding_pjDAO.getOngoing_pjlist", map);
	}

}
