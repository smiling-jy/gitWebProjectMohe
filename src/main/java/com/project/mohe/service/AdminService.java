package com.project.mohe.service;

import java.util.List;

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
import com.project.mohe.domain.StatusVO;
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
	
	// 관리자 아이디 중복 체크
	AdminVO idCheck_Login(AdminVO vo);
	
	// 관리자 비밀번호를 임시번호로 업뎃
	int resetPassword(AdminVO vo);	
	
	// 회원 목록 리스트
	List<UserInfoVO> adGetUserList(PagingVO vo);
	
	// 회원 상세 페이지
	UserInfoVO adUserDetail(UserInfoVO vo,Model model);
	
	// 회원 정보만 불러오는기능
	UserInfoVO getUserInfo(UserInfoVO vo);
	
	// 회원 정보 수정기능
	void adUserUpdateInfo(UserInfoVO vo);
	
	// 회원 사용불가 전환
	void deleteUserInfo(UserInfoVO vo);
	
	// 이벤트 리스트
	List<EventVO> adGetEventList(PagingVO vo);
	
	// 팝업에서 출력할 이벤트 리스트
	List<EventVO> getEventList();
	
	// 이벤트 삭제
	void adDeleteEvent(EventVO vo);
	
	// 이벤트 추가
	void adEventInsert(EventVO vo);
	
	// 이벤트 상세보기
	EventVO adGetEvent(EventVO vo);
	
	// 이벤트 수정하기
	void adEventUpdate(EventVO vo);
	
	// 펀딩 리스트
	List<Funding_pjVO> adGetFdList(PagingVO vo);
	
	// 신청 펀딩 리스트
	List<Funding_pjVO> getFdApprovalList(PagingVO vo);
	
	// 펀딩 상세보기
	Funding_pjVO getFdDetail(Funding_pjVO vo);
	
	// 펀딩 승인,비승인 업데이트
	void judgFdUpdate(Funding_pjVO vo);
	
	// 펀딩 삭제
	void deleteFd(Funding_pjVO vo);
	
	// 펀딩 수정
	void adFdUpdate(Funding_pjVO vo);
	
	// 봉사 리스트
	List<BongsaVO> getAdBsList(PagingVO vo);
	
	// 봉사 삭제
	void deleteBs(BongsaVO vo);
	
	// 봉사 디테일
	BongsaVO adBsDetail(BongsaVO vo);
	
	// 봉사 수정
	void adBsUpdate(BongsaVO vo);
	
	// 신청 봉사 리스트
	List<BongsaVO> getAdBsApprovalList(PagingVO vo);
	
	void judgBsUpdate(BongsaVO vo);
	
	// 파트너 리스트
	List<PartnerVO> getPartnerList(PagingVO vo);
	
	// 파트너 추가
	void adPartnerInsert(PartnerVO vo);
	
	// 파트너 상세보기
	PartnerVO adGetPartner(PartnerVO vo);
	
	// 파트너 정보수정
	void adPartnerUpdate(PartnerVO vo);
	
	// 파트너 삭제
	void adDeletePartner(PartnerVO vo);
	
	//리뷰 리스트
	List<ReviewVO> getReviewList(PagingVO vo);
	
	//리뷰 상세
	ReviewVO getReview(ReviewVO vo);
	
	//리뷰삭제
	void adDeleteReview(ReviewVO vo);
	
	//기부 리스트
	List<DonationVO> getDonationList(PagingVO vo);
	
	// 기부 확인 기능
	void donationOk(DonationVO vo);
	
	//공지 리스트
	List<NoticeVO> getNoticeList(PagingVO vo);
	
	//공지 삭제하기 
	void deleteNotice(NoticeVO vo);
	
	//공지 상세페이지
	NoticeVO adNoticeDetail(NoticeVO vo);
	
	//공지 수정페이지
	void adNoticeUpdate(NoticeVO vo);
	
	//공지 추가기능
	void adNoticeInsert(NoticeVO vo);
	
	//팝업 리스트
	List<PopupVO> getPopupList(PagingVO vo);
	
	//팝업 삭제
	void adDeletePopup(PopupVO vo);
	
	// 팝업 생성
	void adPopupInsert(PopupVO vo);
	
	// 팝업 상세보기
	PopupVO adPopupDetail(PopupVO vo);
	
	// 팝업 수정하기
	void adPopupUpdate(PopupVO vo);
	
	// 수치 불러오기
	StatusVO getStatus();
	
}
