package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.UserInfoVO;

public interface UserInfoService {
	public UserInfoVO emailCheck_Login(UserInfoVO vo);
	
	void insertUserInfo(UserInfoVO vo);
	
	public UserInfoVO emailLogin(UserInfoVO vo);
				
	void updateUserInfo(UserInfoVO vo);
			
	void deleteUserInfo(UserInfoVO vo);

	UserInfoVO getUserInfo(UserInfoVO vo);

	List<UserInfoVO> getUserInfoList(HashMap map);



}
