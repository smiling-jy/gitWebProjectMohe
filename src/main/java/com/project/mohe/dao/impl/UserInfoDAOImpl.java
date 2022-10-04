package com.project.mohe.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.dao.UserInfoDAO;
import com.project.mohe.domain.AdminVO;
import com.project.mohe.domain.EventVO;
import com.project.mohe.domain.UserInfoVO;


@Repository("userInfoDAO")
public class UserInfoDAOImpl implements UserInfoDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

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
