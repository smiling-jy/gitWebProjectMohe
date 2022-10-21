package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.Funding_payVO;
import com.project.mohe.domain.PagingVO;
import com.project.mohe.domain.VolunteerVO;

public interface VolunteerService {
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
	
	//봉사 펀딩 성공인원 증가 
	void incSuccessCnt(VolunteerVO vo);
	
	// 마이페이지에서 참여목록 보기
	List<VolunteerVO> adGetVolunteerList(PagingVO vo);
	
	// 페이징
	PagingVO getAllcnt(PagingVO vo);
}
