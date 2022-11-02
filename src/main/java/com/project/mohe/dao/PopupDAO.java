package com.project.mohe.dao;

import java.util.List;

import com.project.mohe.domain.PagingVO;
import com.project.mohe.domain.PopupVO;

public interface PopupDAO {
	
	// 팝업 등록
	void insertPopup(PopupVO vo);
			
	// 팝업 수정
	void updatePopup(PopupVO vo); 
		
	// 팝업 삭제
	void deletePopup(PopupVO vo);
		
	// 팝업 조회
	PopupVO getPopup(PopupVO vo);
		
	// 팝업 목록불러오기
	List<PopupVO> getPopupList(PagingVO vo);

	// 메인에 띄울 유효한 팝업 하나
	PopupVO getMainPopup();
	
	// 페이징을 위한 메소드
	PagingVO getAllcnt(PagingVO vo);
	
	// 팝업창 비활성화하는 메소드
	void setPopupFalse(PopupVO vo);
	
	// 기간이 지난 활성화 메소드를 조회
	List<PopupVO> timeOutPopup();
}
