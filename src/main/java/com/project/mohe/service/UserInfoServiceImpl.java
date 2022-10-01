package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.UserInfoDAO;
import com.project.mohe.domain.UserInfoVO;

@Service("userInfoService")
public class UserInfoServiceImpl implements UserInfoService {

	@Autowired
	private UserInfoDAO userInfoDao;

	@Override
	public void insertUserInfo(UserInfoVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateUserInfo(UserInfoVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteUserInfo(UserInfoVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public UserInfoVO getUserInfo(UserInfoVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<UserInfoVO> getUserInfoList(HashMap map) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
