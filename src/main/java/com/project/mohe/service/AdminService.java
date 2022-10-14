package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.project.mohe.domain.AdminVO;
import com.project.mohe.domain.BongsaVO;
import com.project.mohe.domain.DonationVO;
import com.project.mohe.domain.EventVO;
import com.project.mohe.domain.Funding_pjVO;
import com.project.mohe.domain.NoticeVO;
import com.project.mohe.domain.PagingVO;
import com.project.mohe.domain.PartnerVO;
import com.project.mohe.domain.PopupVO;
import com.project.mohe.domain.ReviewVO;
import com.project.mohe.domain.UserInfoVO;

@Service
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
	List<AdminVO> getAdminList(PagingVO vo);
	
	// 관리자 페이징을 위한 행 조회
	PagingVO getAllcnt(PagingVO vo);

	// 관리자 상세 리스트
	AdminVO getAdminDetail(AdminVO vo);
	
	// 관리자 로그인 확인
	AdminVO adminLogin(AdminVO vo);
	
	// 회원 목록 리스트
	List<UserInfoVO> adGetUserList(PagingVO vo);
	
	// 회원 상세 페이지
	UserInfoVO adUserDetail(UserInfoVO vo,Model model);
	
	// 회원 정보만 불러오는기능
	UserInfoVO adUserUpdateInfo(UserInfoVO vo);
	
	// 회원 사용불가 전환
	void deleteUserInfo(UserInfoVO vo);
	
	// 이벤트 리스트
	List<EventVO> adGetEventList(PagingVO vo);
	
	// 펀딩 리스트
	List<Funding_pjVO> adGetFdList(PagingVO vo);
	
	// 신청 펀딩 리스트
	List<Funding_pjVO> getFdApprovalList(PagingVO vo);
	
	// 펀딩 승인,비승인 업데이트
	void judgFdUpdate(Funding_pjVO vo);
	
	// 봉사 리스트
	List<BongsaVO> getBsList(PagingVO vo);
	
	// 신청 봉사 리스트
	List<BongsaVO> getBsApprovalList(PagingVO vo);
	
	void judgBsUpdate(BongsaVO vo);
	
	// 파트너 리스트
	List<PartnerVO> getPartnerList(PagingVO vo);
	
	//리뷰 리스트
	List<ReviewVO> getReviewList(PagingVO vo);
	
	//기부 리스트
	List<DonationVO> getDonationList(PagingVO vo);
	
	//공지 리스트
	List<NoticeVO> getNoticeList(PagingVO vo);
	
	//팝업 리스트
	List<PopupVO> getPopupList(PagingVO vo);
}
