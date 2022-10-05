package com.project.mohe.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.AdminDAO;
import com.project.mohe.domain.AdminVO;
import com.project.mohe.service.AdminService;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDAO adminDao;
	
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
	public List<AdminVO> getEventList(HashMap map) {
		// TODO Auto-generated method stub
		return null;
	}
	

}
