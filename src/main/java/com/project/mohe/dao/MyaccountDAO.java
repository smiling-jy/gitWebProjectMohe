package com.project.mohe.dao;

import java.util.List;

import com.project.mohe.domain.BongsaVO;
import com.project.mohe.domain.Funding_cartVO;
import com.project.mohe.domain.Funding_payVO;
import com.project.mohe.domain.Funding_pjVO;
import com.project.mohe.domain.UserInfoVO;

public interface MyaccountDAO {

	// 글 수정
	void updateInfo(UserInfoVO vo);

	List<Funding_payVO> getFunding_pjList(UserInfoVO vo);

	int insertFunding_cart(Funding_cartVO vo);

	List<Funding_pjVO> getFunding_cartList(UserInfoVO vo);
	
	List<BongsaVO> getBonsa_cartList(UserInfoVO vo);
}
