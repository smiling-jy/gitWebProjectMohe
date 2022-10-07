package com.project.mohe.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.AdminDAO;
import com.project.mohe.dao.BongsaDAO;
import com.project.mohe.dao.DonationDAO;
import com.project.mohe.dao.EventDAO;
import com.project.mohe.dao.Funding_pjDAO;
import com.project.mohe.dao.NoticeDAO;
import com.project.mohe.dao.PartnerDAO;
import com.project.mohe.dao.ReviewDAO;
import com.project.mohe.dao.UserInfoDAO;
import com.project.mohe.domain.AdminVO;
import com.project.mohe.domain.BongsaVO;
import com.project.mohe.domain.DonationVO;
import com.project.mohe.domain.EventVO;
import com.project.mohe.domain.Funding_pjVO;
import com.project.mohe.domain.NoticeVO;
import com.project.mohe.domain.PartnerVO;
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
	
	@Override
	public void insertAdmin(AdminVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateAdmin(AdminVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAdmin(AdminVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public AdminVO getAdmin(AdminVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<AdminVO> getAdminList(HashMap map) {
		return adminDao.getAdminList(map);
	}
	
	@Override
	public List<UserInfoVO> adGetUserList(HashMap map) {
		return userInfoDao.getUserInfoList(map);
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
		return null; //funding_pjDao.getFdApprovalList(map);
	}

	@Override
	public List<BongsaVO> getBsList(HashMap map) {
		return bongsaDao.getBongsaList(map);
	}

	@Override
	public List<BongsaVO> getBsApprovalList(HashMap map) {
		return null; //bongsaDao.getBsApprovalList(map);
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
	public List<DonationVO> getDonationList(HashMap map) {
		return donationDao.getDonationList();
	}
	@Override
	public List<NoticeVO> getNoticeList(HashMap map) {
		return noticeDao.getNoticeList(map);
	}


	
}
