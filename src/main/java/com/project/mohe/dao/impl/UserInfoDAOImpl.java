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
	public UserInfoVO loginCheck(UserInfoVO vo) {
		System.out.println("===> MemberMapper loginCheck 호출");
		return mybatis.selectOne("UserInfoDAO.loginCheck", vo);
	}
	

	@Override
	public void insertUserInfo(UserInfoVO vo) {
		mybatis.insert("UserInfoDAO.insertUserInfo", vo);
		// TODO Auto-generated method stub
		
	}

	// 회원 상세페이지
	@Override
	public UserInfoVO getUserInfo(UserInfoVO vo) {
		return mybatis.selectOne("UserInfoDAO.getUserInfo",vo);
	}

	@Override
	public List<UserInfoVO> getUserInfoList(HashMap map) {
		return mybatis.selectList("UserInfoDAO.getUserList");
	}

}
