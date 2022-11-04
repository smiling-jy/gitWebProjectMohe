package com.project.mohe.service;

import java.util.List;

import com.project.mohe.domain.PagingVO;
import com.project.mohe.domain.PopupVO;

public interface PopupService {
			
	// 팝업 목록 조회
	List<PopupVO> getPopupList(PagingVO vo);
	
	// 페이징을 위한 메소드
	PagingVO getAllcnt(PagingVO vo);
}
