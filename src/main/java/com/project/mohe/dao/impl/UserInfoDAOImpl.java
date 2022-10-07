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
	public UserInfoVO emailCheck(UserInfoVO vo) {
		System.out.println("===> MemberMapper emailCheck 호출");
		return mybatis.selectOne("UserInfoDAO.emailCheck", vo);
	}
	
	@Override
	public int userInsert(UserInfoVO vo) {
		System.out.println("===>  MemberMapper insertUserInfo() 호출");
		return mybatis.insert("UserInfoDAO.insertUserInfo", vo);
	}

	@Override
	public void insertUserInfo(UserInfoVO vo) {
		mybatis.insert("UserInfoDAO.insertUserInfo", vo);
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

//	@Override
//	public UserInfoVO userInsert(UserInfoVO vo) {
//		// TODO Auto-generated method stub
//		return null;
//	}

//	@Override
//	public UserInfoVO duplicatedUserEmailCheck(UserInfoVO vo) {
//		// TODO Auto-generated method stub
//		return null;
//	}
	

}
