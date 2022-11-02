package com.project.mohe.dao;

import java.util.List;

import com.project.mohe.domain.AdminVO;
import com.project.mohe.domain.BongsaVO;
import com.project.mohe.domain.Funding_payVO;
import com.project.mohe.domain.Funding_pjVO;
import com.project.mohe.domain.NoticeVO;
import com.project.mohe.domain.PagingVO;
import com.project.mohe.domain.PartnerVO;
import com.project.mohe.domain.UserInfoVO;
import com.project.mohe.domain.VolunteerVO;

public interface AdminDAO {
		
	// 관리자 정보 등록
	void insertAdmin(AdminVO vo);
			
	// 관리자 정보 수정
	void updateAdmin(AdminVO vo); 
		
	// 관리자 정보 삭제 > 퇴사일 업데이트
	void deleteAdmin(AdminVO vo);
		
	// 관리자 상세정보 불러오기
	AdminVO getAdminDetail(AdminVO vo);
	
	// 관리자 테이블의 데이터 갯수를 조회한다
	PagingVO getAllcnt(PagingVO vo);
	
	// 관리자 리스트 불러오기
	List<AdminVO> getAdminList(PagingVO vo);
	
	// 관리자 로그인 확인
	AdminVO adminLogin(AdminVO vo);
	
	// 관리자 아이디 중복 확인
	AdminVO idCheck_Login(AdminVO vo);
	
	// 관리자 비밀번호 임시 번호로 변경
	int resetPassword(AdminVO vo);
	
	// 봉사참여자 상세페이지
	List<VolunteerVO> getAdBsDetail(UserInfoVO vo);

	// 펀딩참여자 상세페이지
	List<Funding_payVO> getAdFdDetail(UserInfoVO vo);
	
	// 회원 수정기능
	void adUserUpdateInfo(UserInfoVO vo);
	
	// 공지 수정기능
	void adNoticeUpdate(NoticeVO vo);
	
	// 공지 추가기능
	void adNoticeInsert(NoticeVO vo);
	
	// 파트너 추가기능
	void adPartnerInsert(PartnerVO vo);
	
	// 파트너 수정기능
	void adPartnerUpdate(PartnerVO vo);
	
	// 파트너 상세 보기
	PartnerVO adGetPartner(PartnerVO vo);
	
	// 펀딩 상세 페이지
	Funding_pjVO getFdDetail(Funding_pjVO vo);
	
	// 펀딩 수정 페이지
	void adFdUpdate(Funding_pjVO vo);
	
	// 봉사 상세 페이지
	BongsaVO adBsDetail(BongsaVO vo);
	
	// 봉사 수정 페이지
	void adBsUpdate(BongsaVO vo);
}
