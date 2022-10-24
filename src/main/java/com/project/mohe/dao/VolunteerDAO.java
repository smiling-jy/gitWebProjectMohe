package com.project.mohe.dao;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.PagingVO;
import com.project.mohe.domain.UserInfoVO;
import com.project.mohe.domain.VolunteerVO;

public interface VolunteerDAO {
	// CRUD 기능 구현
		// 글 등록
		void insertVolunteer(VolunteerVO vo);
				
		// 글 수정
		void updateVolunteer(VolunteerVO vo); 
			
		// 글 삭제
		void deleteVolunteer(VolunteerVO vo);
			
		// 글 상세 조회
		VolunteerVO getVolunteer(VolunteerVO vo);
			
		// 글 목록 조회
		List<VolunteerVO> getVolunteerList(HashMap map);
		
		
		//참여자 증가 -> 봉사 펀딩 성공인원 증가

		void incSuccessCnt(VolunteerVO vo);
		
		
		// 마이페이지에서 참여목록 보기
		List<VolunteerVO> adGetVolunteerList(PagingVO vo);
		
		// 페이징
		PagingVO getAllcnt(PagingVO vo);
		
		// 한 유저의 봉사 참여 카운트
		UserInfoVO getJoinBs(UserInfoVO vo);
}