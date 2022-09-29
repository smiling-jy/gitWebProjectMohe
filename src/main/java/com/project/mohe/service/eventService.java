package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.BoardVO;

public interface eventService {
	// CRUD 기능 구현
	// 글 등록
	void insertEvent(BoardVO vo);
				
	// 글 수정
	void updateEvent(BoardVO vo);
			
	// 글 삭제
	void deleteEvent(BoardVO vo);
			
	// 글 상세 조회
	BoardVO getEvent(BoardVO vo);
			
	// 글 목록 조회
	List<BoardVO> getEventList(HashMap map);
}
