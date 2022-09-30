package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.EventVO;

public interface EventService {
	// CRUD 기능 구현
	// 글 등록
	void insertEvent(EventVO vo);
				
	// 글 수정
	void updateEvent(EventVO vo);
			
	// 글 삭제
	void deleteEvent(EventVO vo);
			 
	// 글 상세 조회
	EventVO getEvent(EventVO vo);
			
	// 글 목록 조회
	List<EventVO> getEventList(HashMap map);
}
