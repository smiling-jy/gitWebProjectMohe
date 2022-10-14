package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.PagingVO;
import com.project.mohe.domain.PartnerVO;

public interface PartnerService {
	// CRUD 기능 구현
		// 글 등록
		void insertPartner(PartnerVO vo);
					
		// 글 수정
		void updatePartner(PartnerVO vo);
				
		// 글 삭제
		void deletePartner(PartnerVO vo);
				
		// 글 상세 조회
		PartnerVO getPartner(PartnerVO vo);
				 
		// 글 목록 조회
		List<PartnerVO> getPartnerList(HashMap map);
		
		// 페이징을 위한 메소드
		PagingVO getAllcnt(PagingVO vo);
		
		// 페이징 된 리스트 조회
		List<PartnerVO> getAdPartnerList(PagingVO vo);
}
