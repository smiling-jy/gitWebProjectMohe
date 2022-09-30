package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.Funding_pjVO;

public interface Funding_pjService {
	// CRUD 기능 구현
	// 글 등록
	void insertFunding_pj(Funding_pjVO vo);
				
	// 글 수정
	void updateFunding_pj(Funding_pjVO vo);
			
	// 글 삭제
	void deleteFunding_pj(Funding_pjVO vo);
			 
	// 글 상세 조회
	Funding_pjVO getFunding_pj(Funding_pjVO vo);
			
	// 글 목록 조회
	List<Funding_pjVO> getFunding_pjList(HashMap map);
}
