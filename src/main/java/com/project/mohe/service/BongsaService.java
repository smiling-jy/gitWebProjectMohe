package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.BongsaVO;
import com.project.mohe.domain.PagingVO;

public interface BongsaService {
	// CRUD 기능 구현
	// 글 등록
	void insertBongsa(BongsaVO vo);
				
	// 글 수정
	void updateBongsa(BongsaVO vo);
			
	// 글 삭제
	void deleteBongsa(BongsaVO vo);
			 
	// 글 상세 조회
	BongsaVO getBongsa(BongsaVO vo);
			
	// 글 목록 조회
	List<BongsaVO> getBongsaList(HashMap map);
	
	
	BongsaVO getParticipateInfo(BongsaVO vo);
	
	//승인된 봉사 페이징 조회
	PagingVO getAllcntOk(PagingVO vo);
	
	//승인된 봉사 페이징 조회
	PagingVO getAllcntNo(PagingVO vo);
	
}
