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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BongsaVO> getBongsaList(HashMap map) {
		System.out.println("dao진입");
		System.out.println("조건 : " + map.get("searchCondition"));// 키인 searchCondition로 value 받기  
		System.out.println("키워드 : " + map.get("searchKeyword"));
		return mybatis.selectList("BongsaDAO.getBongsaList", map);
	}
	
	

}
