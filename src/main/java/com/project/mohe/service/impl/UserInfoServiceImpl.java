package com.project.mohe.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.UserInfoDAO;
import com.project.mohe.domain.UserInfoVO;
import com.project.mohe.service.UserInfoService;

@Service("userInfoService")
public class UserInfoServiceImpl implements UserInfoService {

	@Autowired
	private UserInfoDAO userInfoDao;
	
	/**
	  * 아이디 중복 체크하는 sql + 로그인 기능 sql
	  */
	  public UserInfoVO emailCheck_Login( UserInfoVO vo)
	  {
		  return userInfoDao.emailCheck(vo);
	  }
	  
	  /**
	   * 회원가입 sql
	   */
	   public int userInsert_Login(UserInfoVO vo )
	   {
		  return userInfoDao.userInsert(vo);
	   }
	  

	@Override
	public void insertUserInfo(UserInfoVO vo) {
		System.out.println("");
		userInfoDao.insertUserInfo(vo);
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
//		// TODO Auto-generated method stubs
//		return null;
//	}


//	@Override
//	public UserInfoVO emailCheck(UserInfoVO vo) {
//		// TODO Auto-generated method stub
//		return null;
//	}
	
}
