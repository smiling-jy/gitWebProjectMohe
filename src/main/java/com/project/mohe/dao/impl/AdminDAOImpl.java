package com.project.mohe.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.dao.AdminDAO;
import com.project.mohe.domain.AdminVO;
import com.project.mohe.domain.BongsaVO;
import com.project.mohe.domain.Funding_payVO;
import com.project.mohe.domain.Funding_pjVO;
import com.project.mohe.domain.NoticeVO;
import com.project.mohe.domain.PagingVO;
import com.project.mohe.domain.PartnerVO;
import com.project.mohe.domain.UserInfoVO;
import com.project.mohe.domain.VolunteerVO;


@Repository("adminDAO")
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void insertAdmin(AdminVO vo) {
		mybatis.insert("AdminDAO.insertAdmin",vo);
	}

	@Override
	public void updateAdmin(AdminVO vo) {
		mybatis.update("AdminDAO.updateAdmin",vo);
		
	}

	@Override
	public void deleteAdmin(AdminVO vo) {
		// db 삭제 하지않고 퇴사일을 업데이트한다 
		mybatis.update("AdminDAO.updateEndDate",vo);
		
	}
	
	@Override
	public List<AdminVO> getAdminList(PagingVO vo) {
		return mybatis.selectList("AdminDAO.getAdminList",vo);
	}

	@Override
	public AdminVO getAdminDetail(AdminVO vo) {
		return mybatis.selectOne("AdminDAO.getAdminDetail",vo);
	}

	// 테이블의 데이터 갯수를 조회한다
	@Override
	public PagingVO getAllcnt(PagingVO vo) {
		return mybatis.selectOne("AdminDAO.getAllcnt",vo);
	}
	// 관리자 로그인 확인
	@Override
	public AdminVO adminLogin(AdminVO vo) {
		return mybatis.selectOne("AdminDAO.adminLogin",vo);
	}
	
	// 나중에 옮겨줘야하는 메소드 목록들 --------------------------------------------*******************
	
	// 봉사 상세페이지
	@Override
	public List<VolunteerVO> getAdBsDetail(UserInfoVO vo) {
		return mybatis.selectList("AdminDAO.getAdBsDetail",vo);
	}
	
	// 펀딩 상세페이지
	@Override
	public List<Funding_payVO> getAdFdDetail(UserInfoVO vo) {
		return mybatis.selectList("AdminDAO.getAdFdDetail",vo);
	}

	// 회원 수정페이지
	@Override
	public void adUserUpdateInfo(UserInfoVO vo) {
		mybatis.update("AdminDAO.adUserUpdateInfo",vo);
	}

	// 공지 수정페이지
	@Override
	public void adNoticeUpdate(NoticeVO vo) {
		mybatis.update("AdminDAO.adNoticeUpdate",vo);
	}
	// 공지사항 추가하기
	@Override
	public void adNoticeInsert(NoticeVO vo) {
		mybatis.insert("AdminDAO.adNoticeInsert",vo);
	}
	// 파트너 추가하기
	@Override
	public void adPartnerInsert(PartnerVO vo) {
		mybatis.insert("AdminDAO.adPartnerInsert",vo);
	}

	//파트너 수정하기
	@Override
	public void adPartnerUpdate(PartnerVO vo) {
		mybatis.update("AdminDAO.adPartnerUpdate",vo);
	}
	// 파트너 상세보기
	@Override
	public PartnerVO adGetPartner(PartnerVO vo) {
		return mybatis.selectOne("AdminDAO.adGetPartner",vo);
	}
	// 펀딩상세
	@Override
	public Funding_pjVO getFdDetail(Funding_pjVO vo) {
		return mybatis.selectOne("AdminDAO.getFdDetail",vo);
	}
	// 펀딩수정
	@Override
	public void adFdUpdate(Funding_pjVO vo) {
		mybatis.update("AdminDAO.adFdUpdate",vo);
	}
	// 봉사상세
	@Override
	public BongsaVO adBsDetail(BongsaVO vo) {
		return mybatis.selectOne("AdminDAO.adBsDetail",vo);
	}
	// 봉사수정
	@Override
	public void adBsUpdate(BongsaVO vo) {
		mybatis.update("AdminDAO.adBsUpdate",vo);
	}
	

}
