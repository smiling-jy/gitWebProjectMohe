package com.project.mohe.dao;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.PagingVO;
import com.project.mohe.domain.PopupVO;

public interface PopupDAO {
	// CRUD 기능 구현
		// 글 등록
		void insertPopup(PopupVO vo);
				
		// 글 수정
		void updatePopup(PopupVO vo); 
			
		// 글 삭제
		void deletePopup(PopupVO vo);
			
		// 글 상세 조회
		PopupVO getPopup(PopupVO vo);
			
		// 글 목록 조회
		List<PopupVO> getPopupList(PagingVO vo,HashMap map);
		
		// 페이징을 위한 메소드
		PagingVO getAllcnt();
}
