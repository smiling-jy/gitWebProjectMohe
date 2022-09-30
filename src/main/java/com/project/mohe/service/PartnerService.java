package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

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
}
