package com.project.mohe.dao;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.UserInfoVO;

public interface UserInfoDAO {
	// CRUD 기능 구현
	
		//이메일 중복체크 기능 구현
		UserInfoVO emailCheck( UserInfoVO vo);
		
		// 회원가입기능 구현
		int userInsert( UserInfoVO vo);
		
		// 로그인 확인 기능
		UserInfoVO loginCheck(UserInfoVO vo);
		
		// 글 등록
		void insertUserInfo(UserInfoVO vo);
				
			
		// 글 상세 조회
		UserInfoVO getUserInfo(UserInfoVO vo);
			
		// 글 목록 조회
		List<UserInfoVO> getUserInfoList(HashMap map);
		
		// 회원 탈퇴,정지 업데이트
		void updateOutDate(UserInfoVO vo);
		
}
