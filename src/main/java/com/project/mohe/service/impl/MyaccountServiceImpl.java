package com.project.mohe.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.MyaccountDAO;
import com.project.mohe.domain.BongsaVO;
import com.project.mohe.domain.Funding_cartVO;
import com.project.mohe.domain.Funding_payVO;
import com.project.mohe.domain.Funding_pjVO;
import com.project.mohe.domain.UserInfoVO;
import com.project.mohe.service.MyaccountService;

@Service("myaccountService")
public class MyaccountServiceImpl implements MyaccountService {

	@Autowired
	private MyaccountDAO myaccountDAO;

	@Override
	public void updateInfo(UserInfoVO vo) {
		myaccountDAO.updateInfo(vo);
	}

	@Override
	public List<Funding_payVO> getFunding_pjList(UserInfoVO vo) {
		return myaccountDAO.getFunding_pjList(vo);
	}
	
	@Override
	public List<BongsaVO> getBongsa_pjList(UserInfoVO vo) {
		return myaccountDAO.getBongsa_pjList(vo);
	}

	@Override
	public int insertFunding_cart(Funding_cartVO vo) {
		return myaccountDAO.insertFunding_cart(vo);
	}
	
	@Override
	public List<Funding_pjVO> getFunding_cartList(UserInfoVO vo) {
		return myaccountDAO.getFunding_cartList(vo);
	}

	@Override
	public List<BongsaVO> getBongsa_cartList(UserInfoVO vo) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public int countAccountByEmail(UserInfoVO vo) {
		return myaccountDAO.countAccountByEmail(vo);
	}
	
	@Override
	public int resetPassword(UserInfoVO vo) {
		return myaccountDAO.resetPassword(vo);
	}
	
	@Override
	public int updateUserinfoUserOutdate(UserInfoVO vo) {
		return myaccountDAO.updateUserinfoUserOutdate(vo);
	}
}
