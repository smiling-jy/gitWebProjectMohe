package com.project.mohe.dao;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.BongsaVO;

public interface BongsaDAO {
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
		
		// 미승인 봉사 리스트 조회
		List<BongsaVO> getBsApprovalList(HashMap map);
		
		// 메인에 노출할 마감임박 봉사 리스트 조회
		List<BongsaVO> getDeadlineBs();
		
		// 봉사 승인 업데이트
		void okBsUpdate(BongsaVO vo);
		
		// 봉사 비승인 업데이트
		void noBsUpdate(BongsaVO vo);
		
		// 참여하기 페이지 
		BongsaVO getParticipateInfo(BongsaVO vo);
		
		
}
