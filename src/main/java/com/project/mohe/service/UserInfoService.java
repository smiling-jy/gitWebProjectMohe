package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.ui.Model;

import com.project.mohe.domain.PagingVO;
import com.project.mohe.domain.UserInfoVO;

public interface UserInfoService {
	public UserInfoVO emailCheck_Login(UserInfoVO vo);
	
	void insertUserInfo(UserInfoVO vo);
	
	public UserInfoVO emailLogin(UserInfoVO vo);
				
	void updateUserInfo(UserInfoVO vo);
			
	void deleteUserInfo(UserInfoVO vo);

	UserInfoVO getUserInfo(UserInfoVO vo);

	List<UserInfoVO> getUserInfoList(HashMap map);
	
	// 페이징 메소드
	PagingVO getAllcnt(PagingVO vo);

}
