package com.project.mohe.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.project.mohe.dao.AdminDAO;
import com.project.mohe.dao.BongsaDAO;
import com.project.mohe.dao.DonationDAO;
import com.project.mohe.dao.EventDAO;
import com.project.mohe.dao.Funding_payDAO;
import com.project.mohe.dao.Funding_pjDAO;
import com.project.mohe.dao.NoticeDAO;
import com.project.mohe.dao.PartnerDAO;
import com.project.mohe.dao.PopupDAO;
import com.project.mohe.dao.ReviewDAO;
import com.project.mohe.dao.UserInfoDAO;
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
import com.project.mohe.service.AdminService;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDAO adminDao;
	@Autowired
	private UserInfoDAO userInfoDao;
	@Autowired
	private EventDAO eventDao;
	@Autowired
	private Funding_pjDAO funding_pjDao;
	@Autowired
	private BongsaDAO bongsaDao;
	@Autowired
	private PartnerDAO partnerDao;
	@Autowired
	private ReviewDAO reviewDao;
	@Autowired
	private DonationDAO donationDao;
	@Autowired
	private NoticeDAO noticeDao;
	@Autowired
	private PopupDAO popupDao;
	@Autowired
	private Funding_payDAO funding_payDao;
	@Autowired
	private BongsaDAO BongsaDao;
	
	@Override
	public void insertAdmin(AdminVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateAdmin(AdminVO vo) {
		adminDao.updateAdmin(vo);
		
	}

	@Override
	public void deleteAdmin(AdminVO vo) {
		adminDao.deleteAdmin(vo);
		
	}

	@Override
	public AdminVO getAdmin(AdminVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<AdminVO> getAdminList(PagingVO vo) {
		return adminDao.getAdminList(vo);
	}
	

	// 관리자 페이징을 위한 행 조회
	@Override
	public PagingVO getAllcnt(PagingVO vo) {
		return adminDao.getAllcnt(vo);
	}

	@Override
	public List<UserInfoVO> adGetUserList(PagingVO vo,HashMap map) {
		return userInfoDao.getAdUserInfoList(vo,map);
	}
	
	@Override
	public List<EventVO> adGetEventList(HashMap map) { 
		return eventDao.getEventList(map);
	}

	@Override
	public List<Funding_pjVO> adGetFdList(HashMap map) {
		return funding_pjDao.getFunding_pjList(map);
	}

	@Override
	public List<Funding_pjVO> getFdApprovalList(HashMap map) {
		return funding_pjDao.getFdApprovalList(map);
	}

	@Override
	public List<BongsaVO> getBsList(HashMap map) {
		return bongsaDao.getBongsaList(map);
	}

	@Override
	public List<BongsaVO> getBsApprovalList(HashMap map) {
		return bongsaDao.getBsApprovalList(map);
	}

	@Override
	public List<PartnerVO> getPartnerList(HashMap map) {
		return partnerDao.getPartnerList(map);
	}

	@Override
	public List<ReviewVO> getReviewList(HashMap map) {
		return reviewDao.getReviewList();
	}

	@Override
	public List<DonationVO> getDonationList(PagingVO vo) {
		return donationDao.getAdDonationList(vo);
	}
	
	@Override
	public List<NoticeVO> getNoticeList(HashMap map) {
		return noticeDao.getNoticeList(map);
	}

	@Override
	public List<PopupVO> getPopupList(PagingVO vo) {
		return popupDao.getPopupList(vo);
	}

	@Override
	public AdminVO getAdminDetail(AdminVO vo) {
		return adminDao.getAdminDetail(vo);
	}

	// 유저 상세페이지
	@Override
	public UserInfoVO adUserDetail(UserInfoVO vo) {
		return userInfoDao.getUserInfo(vo);
	}
	// 펀딩 신청 수락,거부
	@Override
	public void judgFdUpdate(Funding_pjVO vo) {
		if(vo.getFd_judg().equals("ok")) {
			// 신청 수락이면
			funding_pjDao.okFdUpdate(vo);
		}else {
			// 신청 거부면
			funding_pjDao.noFdUpdate(vo);
		}
	}

	@Override
	public void judgBsUpdate(BongsaVO vo) {
		if(vo.getBs_judg().equals("ok")) {
			// 신청 수락이면
			BongsaDao.okBsUpdate(vo);
		}else {
			// 신청 거부면
			BongsaDao.noBsUpdate(vo);
		}
	}


	
}
