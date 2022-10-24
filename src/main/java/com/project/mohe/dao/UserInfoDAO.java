package com.project.mohe.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.ui.Model;

import com.project.mohe.domain.PagingVO;
import com.project.mohe.domain.UserInfoVO;

public interface UserInfoDAO {
	// CRUD 기능 구현
	
		//이메일 중복체크 기능 구현
		UserInfoVO emailCheck( UserInfoVO vo);
		
		// 회원가입
		void insertUserInfo(UserInfoVO vo);
		
		// 로그인 확인 기능
		UserInfoVO emailLogin(UserInfoVO vo);
		
		// 글 등록
				
			
		// 글 상세 조회
		UserInfoVO getUserInfo(UserInfoVO vo);
			
		// 글 목록 조회
		List<UserInfoVO> getUserInfoList();
		
		// 유저 페이징 리스트
		List<UserInfoVO> getAdUserInfoList(PagingVO vo);
		
		// 페이징을 위한 메소드
		PagingVO getAllcnt(PagingVO vo); 
		
		// 회원 탈퇴,정지 업데이트

		void updateOutDate(UserInfoVO vo);
		
		// 회원 정보수정
		void updateUser(UserInfoVO vo);
		
		void updateUserinfoUserOutdate(UserInfoVO vo);
		
		// 회원 no,rating 전체 조회
		List<UserInfoVO> getUserNo();
		
		// 회원 등급 조정
		void changeRating(UserInfoVO vo);
		
		// 모든회원 상세 조회
		UserInfoVO getAdUserInfo(UserInfoVO vo);
		
}
