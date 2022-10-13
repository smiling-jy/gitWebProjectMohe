package com.project.mohe.dao;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.AdminVO;
import com.project.mohe.domain.PagingVO;

public interface AdminDAO {
	// CRUD 기능 구현
		// 글 등록
		void insertAdmin(AdminVO vo);
				
		// 글 수정
		void updateAdmin(AdminVO vo); 
			
		// 글 삭제
		void deleteAdmin(AdminVO vo);
			
		// 글 상세 조회
		AdminVO getAdminDetail(AdminVO vo);
		
		// 글의 카운트 조회
		PagingVO getAllcnt(PagingVO vo);
		
		// 글 목록 조회
		List<AdminVO> getAdminList(PagingVO vo);
		
		// 관리자 로그인 확인
		AdminVO adminLogin(AdminVO vo);
}
