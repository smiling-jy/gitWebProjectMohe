package com.project.mohe.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.dao.PopupDAO;
import com.project.mohe.domain.PagingVO;
import com.project.mohe.domain.PopupVO;


@Repository("popupDAO")
public class PopupDAOImpl implements PopupDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void insertPopup(PopupVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updatePopup(PopupVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deletePopup(PopupVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public PopupVO getPopup(PopupVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PopupVO> getPopupList(PagingVO vo,HashMap map) {
		return mybatis.selectList("PopupDAO.getPopupList",vo);
	}

	@Override
	public PagingVO getAllcnt() {
		return mybatis.selectOne("PopupDAO.getAllcnt");
	}

	@Override
	public PopupVO getMainPopup() {
		return mybatis.selectOne("PopupDAO.getMainPopup");
	}


}
