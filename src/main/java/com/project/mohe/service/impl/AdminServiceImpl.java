package com.project.mohe.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.AdminDAO;
import com.project.mohe.dao.EventDAO;
import com.project.mohe.dao.Funding_pjDAO;
import com.project.mohe.dao.UserInfoDAO;
import com.project.mohe.domain.AdminVO;
import com.project.mohe.domain.EventVO;
import com.project.mohe.domain.Funding_pjVO;
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
	public List<UserInfoVO> adGetUserList() {
		return userInfoDao.adGetUserInfoList();
	}
	
	@Override
	public List<EventVO> adGetEventList(HashMap map) { 
		return eventDao.getEventList(map);
	}

	@Override
	public List<Funding_pjVO> adGetFdList(HashMap map) {
		return funding_pjDao.getFunding_pjList(map);
	}

	
}
