package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.Funding_pjVO;
import com.project.mohe.domain.PagingVO;

public interface Funding_pjService {
	// CRUD 기능 구현
	// 글 등록
	int insertFunding_pj(Funding_pjVO vo);
				
	// 글 수정
	void updateFunding_pj(Funding_pjVO vo);
			
	// 글 삭제
	void deleteFunding_pj(Funding_pjVO vo);
			 
	// 글 상세 조회
	Funding_pjVO getFunding_pj(Funding_pjVO vo);
			
	// 글 목록 조회
	List<Funding_pjVO> getFunding_pjList(HashMap map);
	
	// 성공한 프로젝트 목록 조회 
	List<Funding_pjVO> getSuccess_pjList(HashMap map);
	
	// 진행중인 프로젝트 목록 조회
	List<Funding_pjVO> getOngoing_pjlist(HashMap map);
	
	// 승인펀딩 페이징을 위한 메소드
	PagingVO getAllcntOk(PagingVO vo);
	
	// 미승인펀딩 페이징을 위한 메소드
	PagingVO getAllcntNo(PagingVO vo);
}
