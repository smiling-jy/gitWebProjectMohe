package com.project.mohe.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.Volunteer_cartDAO;
import com.project.mohe.domain.Volunteer_cartVO;
import com.project.mohe.service.Volunteer_cartService;

@Service("volunteer_cartService")
public class Volunteer_cartServiceImpl implements Volunteer_cartService {

	@Autowired
	private Volunteer_cartDAO volunteer_cartDao;

	@Override
	public void insertVolunteer_cart(Volunteer_cartVO vo) {
		volunteer_cartDao.insertVolunteer_cart(vo);
		
	}

	@Override
	public void updateVolunteer_cart(Volunteer_cartVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteVolunteer_cart(Volunteer_cartVO vo) {
		volunteer_cartDao.deleteVolunteer_cart(vo);
	}

	@Override
	public Volunteer_cartVO getVolunteer_cart(Volunteer_cartVO vo) {
		return volunteer_cartDao.getVolunteer_cart(vo);
	}

	@Override
	public List<Volunteer_cartVO> getVolunteer_cartList(HashMap map) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
