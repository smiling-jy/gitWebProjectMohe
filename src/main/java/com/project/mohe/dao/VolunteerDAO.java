package com.project.mohe.dao;

import java.util.HashMap;
import java.util.List;

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
}
