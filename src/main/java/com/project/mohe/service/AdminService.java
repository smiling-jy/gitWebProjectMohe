package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.AdminVO;
import com.project.mohe.domain.UserInfoVO;

public interface AdminService {
	// CRUD 기능 구현
	// 글 등록
	void insertAdmin(AdminVO vo);
				
	// 글 수정
	void updateAdmin(AdminVO vo);
			
	// 글 삭제
	void deleteAdmin(AdminVO vo);
			 
	// 글 상세 조회
	AdminVO getAdmin(AdminVO vo);
			
	// 글 목록 조회
	List<AdminVO> getAdminList(HashMap map);
	
	List<UserInfoVO> adGetUserList();

}
