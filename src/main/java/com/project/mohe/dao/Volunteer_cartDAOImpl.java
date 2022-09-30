package com.project.mohe.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.domain.AdminVO;
import com.project.mohe.domain.EventVO;
import com.project.mohe.domain.Volunteer_cartVO;


@Repository("volunteer_cartDAO")
public class Volunteer_cartDAOImpl implements Volunteer_cartDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void insertVolunteer_cart(Volunteer_cartVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateVolunteer_cart(Volunteer_cartVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteVolunteer_cart(Volunteer_cartVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Volunteer_cartVO getVolunteer_cart(Volunteer_cartVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Volunteer_cartVO> getVolunteer_cartList(HashMap map) {
		// TODO Auto-generated method stub
		return null;
	}
	

}
