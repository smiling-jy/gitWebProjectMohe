package com.project.mohe.dao;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.NoticeVO;

public interface NoticeDAO {
	
		
		// CRUD 기능 구현
		// 글 등록
		void insertNotice(NoticeVO vo);
				
		// 글 수정
		void updateNotice(NoticeVO vo);
			 
		// 글 삭제
		void deleteNotice(NoticeVO vo);
			
		// 글 조회수 증가
		void incReadCount(NoticeVO vo);
			
		// 글 상세 조회
		NoticeVO getNotice(NoticeVO vo);
			
		// 글 목록 조회
		List<NoticeVO> getNoticeList(HashMap map);
		
		// 이전글 다음글
		NoticeVO movePage(NoticeVO vo);
}


