package com.project.mohe.dao;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.EventVO;
import com.project.mohe.domain.NoticeVO;
import com.project.mohe.domain.PagingVO;

public interface EventDAO {
	// CRUD 기능 구현
		// 글 등록
		void insertEvent(EventVO vo);
				
		// 글 수정
		void updateEvent(EventVO vo); 
			
		// 글 삭제
		void deleteEvent(EventVO vo);
			
		// 글 상세 조회
		EventVO getEvent(EventVO vo);
		
		// 이전글 다음글
		EventVO movePage(EventVO vo);
			
		// 글 목록 조회
		List<EventVO> getEventList(HashMap map);
		
		// 페이징을 위한 메소드
		PagingVO getAllcnt(PagingVO vo);
		
		// 페이징 된 리스트 조회
		List<EventVO> getAdEventList(PagingVO vo);
}
