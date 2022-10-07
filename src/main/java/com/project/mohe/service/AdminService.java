package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.AdminVO;
import com.project.mohe.domain.BongsaVO;
import com.project.mohe.domain.DonationVO;
import com.project.mohe.domain.EventVO;
import com.project.mohe.domain.Funding_pjVO;
import com.project.mohe.domain.NoticeVO;
import com.project.mohe.domain.PartnerVO;
import com.project.mohe.domain.ReviewVO;
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
			
	// 관리자 리스트
	List<AdminVO> getAdminList(HashMap map);
	
	// 회원 목록 리스트
	List<UserInfoVO> adGetUserList();
	
	// 이벤트 리스트
	List<EventVO> adGetEventList(HashMap map);
	
	// 펀딩 리스트
	List<Funding_pjVO> adGetFdList(HashMap map);
	
	// 신청 펀딩 리스트
	List<Funding_pjVO> getFdApprovalList(HashMap map);
	
	// 봉사 리스트
	List<BongsaVO> getBsList(HashMap map);
	
	// 신청 봉사 리스트
	List<BongsaVO> getBsApprovalList(HashMap map);
	
	// 파트너 리스트
	List<PartnerVO> getPartnerList(HashMap map);
	
	//리뷰 리스트
	List<ReviewVO> getReviewList(HashMap map);
	
	//기부 리스트
	List<DonationVO> getDonationList(HashMap map);
	
	//공지 리스트
	List<NoticeVO> getNoticeList(HashMap map);
}
