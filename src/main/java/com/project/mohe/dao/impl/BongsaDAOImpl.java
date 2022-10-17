package com.project.mohe.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.dao.BongsaDAO;
import com.project.mohe.domain.AdminVO;
import com.project.mohe.domain.BongsaVO;
import com.project.mohe.domain.EventVO;
import com.project.mohe.domain.PagingVO;


@Repository("bongsaDAO")
public class BongsaDAOImpl implements BongsaDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void insertBongsa(BongsaVO vo) {
		mybatis.insert("BongsaDAO.insertBongsa",vo);
		
	}

	@Override
	public void updateBongsa(BongsaVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteBongsa(BongsaVO vo) {
		mybatis.delete("BongsaDAO.deleteBongsa",vo);
		
	}

	@Override
	public BongsaVO getBongsa(BongsaVO vo) {
	
		return mybatis.selectOne("BongsaDAO.getBongsa",vo);
	}

	@Override
	public List<BongsaVO> getBongsaList(HashMap map) {
		System.out.println("조건 : " + map.get("searchCondition"));// 키인 searchCondition로 value 받기  
		System.out.println("키워드 : " + map.get("searchKeyword"));
		System.out.println("지역 : " + map.get("bs_region"));
		return mybatis.selectList("BongsaDAO.getBongsaList", map);
	}
	
	
	// 봉사 신청 승인 업데이트
	@Override
	public void okBsUpdate(BongsaVO vo) {
		mybatis.update("BongsaDAO.okBsUpdate", vo);
	}

	// 봉사 신청 반려 업데이트
	@Override
	public void noBsUpdate(BongsaVO vo) {
		mybatis.update("BongsaDAO.noBsUpdate", vo);
	}
	
	// 마감임박 봉사 리스트
	@Override
	public List<BongsaVO> getDeadlineBs() {
		return mybatis.selectList("BongsaDAO.getDeadlineBs");
	}

	@Override
	public List<BongsaVO> getBsApprovalList(HashMap map) {
		return mybatis.selectList("BongsaDAO.getBsApprovalList",map);
	}
	
	//참여하기 페이지
	@Override
	public BongsaVO getParticipateInfo(BongsaVO vo) {
	
		return mybatis.selectOne("BongsaDAO.getParticipateInfo",vo);
	}

	@Override
	public PagingVO getAllcntOk(PagingVO vo) {
		return mybatis.selectOne("BongsaDAO.getAllcntOk",vo);
	}

	@Override
	public PagingVO getAllcntNo(PagingVO vo) {
		return mybatis.selectOne("BongsaDAO.getAllcntNo",vo);
	}

	@Override
	public List<BongsaVO> getAdBsList(PagingVO vo) {
		return mybatis.selectList("BongsaDAO.getAdBsList",vo);
	}

	@Override
	public List<BongsaVO> getAdBsApprovalList(PagingVO vo) {
		return mybatis.selectList("BongsaDAO.getAdBsApprovalList",vo);
	}


}
