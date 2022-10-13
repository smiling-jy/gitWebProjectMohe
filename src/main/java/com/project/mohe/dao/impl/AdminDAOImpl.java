package com.project.mohe.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.dao.AdminDAO;
import com.project.mohe.domain.AdminVO;
import com.project.mohe.domain.PagingVO;


@Repository("adminDAO")
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void insertAdmin(AdminVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateAdmin(AdminVO vo) {
		mybatis.update("AdminDAO.updateAdmin",vo);
		
	}

	@Override
	public void deleteAdmin(AdminVO vo) {
		// db 삭제 하지않고 퇴사일을 업데이트한다 
		mybatis.update("AdminDAO.updateEndDate",vo);
		
	}
	
	@Override
	public List<AdminVO> getAdminList(PagingVO vo) {
		return mybatis.selectList("AdminDAO.getAdminList",vo);
	}

	@Override
	public AdminVO getAdminDetail(AdminVO vo) {
		return mybatis.selectOne("AdminDAO.getAdminDetail",vo);
	}

	// 테이블의 데이터 갯수를 조회한다
	@Override
	public PagingVO getAllcnt(PagingVO vo) {
		System.out.println(vo);
		return mybatis.selectOne("AdminDAO.getAllcnt",vo);
	}

}
