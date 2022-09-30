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
		//<BoardVO> 가 <eventVO> 로 되어야하는게 아닌가
}
