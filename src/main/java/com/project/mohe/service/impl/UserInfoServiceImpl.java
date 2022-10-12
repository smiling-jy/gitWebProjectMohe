package com.project.mohe.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.UserInfoDAO;
import com.project.mohe.domain.PagingVO;
import com.project.mohe.domain.UserInfoVO;
import com.project.mohe.service.UserInfoService;

@Service("userInfoService")
public class UserInfoServiceImpl implements UserInfoService {

	@Autowired
	private UserInfoDAO userInfoDao;

	/**
	 * 아이디 중복 체크하는 sql + 로그인 기능 sql
	 */
	public UserInfoVO emailCheck_Login(UserInfoVO vo) {
		return userInfoDao.emailCheck(vo);
	}
	
	@Override
	public void insertUserInfo(UserInfoVO vo) {
		userInfoDao.insertUserInfo(vo);
	}
	
	public UserInfoVO emailLogin(UserInfoVO vo) {
		return userInfoDao.emailLogin(vo);
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
		return userInfoDao.getUserInfoList(map);
	}

	@Override
	public PagingVO getAllcnt() {
		return userInfoDao.getAllcnt();
	}

	
}
