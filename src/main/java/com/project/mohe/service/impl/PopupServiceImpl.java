package com.project.mohe.service.impl;

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

	// 팝업목록조회
	@Override
	public List<PopupVO> getPopupList(PagingVO vo) {
		return popupDao.getPopupList(vo);
	}

	// 페이징을 위한 메소드
	@Override
	public PagingVO getAllcnt(PagingVO vo) {
		return popupDao.getAllcnt(vo);
	}

	
}
