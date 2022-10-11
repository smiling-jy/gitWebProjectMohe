package com.project.mohe.dao;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.EventVO;
import com.project.mohe.domain.Funding_pjVO;

public interface Funding_pjDAO {
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
		
		// 펀딩 승인안된 리스트
		List<Funding_pjVO> getFdApprovalList(HashMap map);
		
		// 메인에 노출할 인기펀딩 리스트
		List<Funding_pjVO> getBestFd();
		
		// 펀딩 승인 업데이트
		void okFdUpdate(Funding_pjVO vo);
		
		// 펀딩 비승인 업데이트
		void noFdUpdate(Funding_pjVO vo);
}
