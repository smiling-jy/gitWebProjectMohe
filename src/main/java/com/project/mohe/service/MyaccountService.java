package com.project.mohe.service;

import java.util.List;

import com.project.mohe.domain.BongsaVO;
import com.project.mohe.domain.Funding_cartVO;
import com.project.mohe.domain.Funding_payVO;
import com.project.mohe.domain.Funding_pjVO;
import com.project.mohe.domain.UserInfoVO;

public interface MyaccountService {
	public void updateInfo(UserInfoVO vo);

	List<Funding_payVO> getFunding_pjList(UserInfoVO vo);
	
	List<BongsaVO> getBongsa_pjList(UserInfoVO vo);

	int insertFunding_cart(Funding_cartVO vo);

	List<Funding_pjVO> getFunding_cartList(UserInfoVO vo);
	
	List<BongsaVO> getBongsa_cartList(UserInfoVO vo);
}