package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.BoardVO;

public interface noticeService {
	// CRUD 기능 구현
		// 글 등록
		void insertNotice(BoardVO vo);
			
		// 글 수정
		void updateNotice(BoardVO vo);
		
		// 글 삭제
		void deleteNotice(BoardVO vo);
		
		// 글 상세 조회
		BoardVO getNotice(BoardVO vo);
		
		// 글 목록 조회
		List<BoardVO> getNoticeList(HashMap map);
}
 