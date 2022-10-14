package com.project.mohe.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.PopupDAO;
import com.project.mohe.domain.PagingVO;
import com.project.mohe.domain.PopupVO;
import com.project.mohe.service.PopupService;

@Service("popupService")
public class PopupServiceImpl implements PopupService {

	@Autowired
	private PopupDAO popupDao;

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
	public List<PopupVO> getPopupList(PagingVO vo) {
		return popupDao.getPopupList(vo);
	}

	@Override
	public PagingVO getAllcnt(PagingVO vo) {
		return popupDao.getAllcnt(vo);
	}

	
}
