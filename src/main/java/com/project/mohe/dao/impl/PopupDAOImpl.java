package com.project.mohe.dao.impl;

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
		mybatis.insert("PopupDAO.insertPopup",vo);
	}

	@Override
	public void updatePopup(PopupVO vo) {
		mybatis.update("PopupDAO.updatePopup",vo);
	}

	@Override
	public void deletePopup(PopupVO vo) {
		mybatis.delete("PopupDAO.deletePopup",vo);
		
	}

	@Override
	public PopupVO getPopup(PopupVO vo) {
		return mybatis.selectOne("PopupDAO.getPopup",vo);
	}

	@Override
	public List<PopupVO> getPopupList(PagingVO vo) {
		return mybatis.selectList("PopupDAO.getPopupList",vo);
	}

	@Override
	public PagingVO getAllcnt(PagingVO vo) {
		return mybatis.selectOne("PopupDAO.getAllcnt",vo);
	}

	@Override
	public PopupVO getMainPopup() {
		return mybatis.selectOne("PopupDAO.getMainPopup");
	}

	@Override
	public void setPopupFalse(PopupVO vo) {
		mybatis.update("PopupDAO.setPopupFalse",vo);
	}

	@Override
	public List<PopupVO> timeOutPopup() {
		return mybatis.selectList("PopupDAO.timeOutPopup");
	}


}
