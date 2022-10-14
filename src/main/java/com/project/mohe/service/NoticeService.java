package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.NoticeVO;
import com.project.mohe.domain.PagingVO;

public interface NoticeService {
	// CRUD 기능 구현
		// 글 등록
		void insertNotice(NoticeVO vo);
			
		// 글 수정
		void updateNotice(NoticeVO vo);
		
		// 글 삭제
		void deleteNotice(NoticeVO vo);
		
		// 글 상세 조회
		NoticeVO getNotice(NoticeVO vo);
		
		// 글 목록 조회
		List<NoticeVO> getNoticeList(PagingVO vo);
		
		//이전글 다음글
		NoticeVO movePage(NoticeVO vo);
		
		// 페이징을 위한 메소드
		PagingVO getAllcnt(PagingVO vo);
		
		// 페이징 된 리스트 조회
		List<NoticeVO> getAdNoticeList(PagingVO vo);
		
		
}
 