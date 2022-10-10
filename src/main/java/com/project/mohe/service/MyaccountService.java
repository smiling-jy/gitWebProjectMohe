package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.Funding_cartVO;
import com.project.mohe.domain.UserInfoVO;

public interface MyaccountService {
	
	List<HashMap<String, String>> getMyFundingList(UserInfoVO userInfoVO);
	
}
