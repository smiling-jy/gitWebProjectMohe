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


@Repository("bongsaDAO")
public class BongsaDAOImpl implements BongsaDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void insertBongsa(BongsaVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateBongsa(BongsaVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteBongsa(BongsaVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public BongsaVO getBongsa(BongsaVO vo) {
	
		return mybatis.selectOne("BongsaDAO.getBongsa",vo);
	}

	@Override
	public List<BongsaVO> getBongsaList(HashMap map) {
		System.out.println("dao진입");
		System.out.println("조건 : " + map.get("searchCondition"));// 키인 searchCondition로 value 받기  
		System.out.println("키워드 : " + map.get("searchKeyword"));
		System.out.println("지역 : " + map.get("bs_region"));
		return mybatis.selectList("BongsaDAO.getBongsaList", map);
	}
	
	// 봉사 미승인 리스트
	@Override
	public List<BongsaVO> getBsApprovalList(HashMap map) {
		return mybatis.selectList("BongsaDAO.getBsApprovalList", map);
	}
	
	// 봉사 신청 승인 업데이트
	@Override
	public void okBsUpdate(BongsaVO vo) {
		mybatis.update("BongsaDAO.noBsUpdate", vo);
	}

	// 봉사 신청 반려 업데이트
	@Override
	public void noBsUpdate(BongsaVO vo) {
		mybatis.update("BongsaDAO.noBsUpdate", vo);
	}

	

}
