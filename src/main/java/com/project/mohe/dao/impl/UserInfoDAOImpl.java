package com.project.mohe.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.project.mohe.dao.UserInfoDAO;
import com.project.mohe.domain.PagingVO;
import com.project.mohe.domain.UserInfoVO;


@Repository("userInfoDAO")
public class UserInfoDAOImpl implements UserInfoDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public UserInfoVO emailCheck(UserInfoVO vo) {
		return mybatis.selectOne("UserInfoDAO.emailCheck", vo);
	}
	
	@Override
	public void insertUserInfo(UserInfoVO vo) {
		mybatis.insert("UserInfoDAO.insertUserInfo", vo);

	}

	
	@Override
	public UserInfoVO emailLogin(UserInfoVO vo) {
		return mybatis.selectOne("UserInfoDAO.emailLogin", vo);
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

	@Override
	public void updateOutDate(UserInfoVO vo) {
		mybatis.delete("UserInfoDAO.updateOutDate",vo);
	}

	@Override
	public List<UserInfoVO> getAdUserInfoList(PagingVO vo) {
		return mybatis.selectList("UserInfoDAO.getAdUserList",vo);
	}

	@Override
	public PagingVO getAllcnt(PagingVO vo) {
		return mybatis.selectOne("UserInfoDAO.getAllcnt",vo);
	}

	@Override
	public void updateUser(UserInfoVO vo) {
		mybatis.update("UserInfoDAO.updateUser",vo);
	}
	
	@Override
	public void updateUserinfoUserOutdate(UserInfoVO vo) {
		mybatis.update("UserInfoDAO.updateUserinfoUserOutdate",vo);
	}

}
