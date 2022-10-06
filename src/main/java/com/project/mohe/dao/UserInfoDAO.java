package com.project.mohe.dao;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.UserInfoVO;

public interface UserInfoDAO {
	// CRUD 기능 구현
		// 글 등록
		void insertUserInfo(UserInfoVO vo);
				
		// 글 수정
		void updateUserInfo(UserInfoVO vo); 
			
		// 글 삭제
		void deleteUserInfo(UserInfoVO vo);
			
		// 글 상세 조회
		UserInfoVO getUserInfo(UserInfoVO vo);
			
		// 글 목록 조회
		List<UserInfoVO> getUserInfoList(HashMap map);
		//<BoardVO> 가 <eventVO> 로 되어야하는게 아닌가

		List<UserInfoVO> adGetUserInfoList();
}
