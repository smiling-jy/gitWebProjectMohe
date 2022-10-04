package com.project.mohe.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.dao.VolunteerDAO;
import com.project.mohe.domain.AdminVO;
import com.project.mohe.domain.EventVO;
import com.project.mohe.domain.VolunteerVO;


@Repository("volunteerDAO")
public class VolunteerDAOImpl implements VolunteerDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void insertVolunteer(VolunteerVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateVolunteer(VolunteerVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteVolunteer(VolunteerVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public VolunteerVO getVolunteer(VolunteerVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VolunteerVO> getVolunteerList(HashMap map) {
		// TODO Auto-generated method stub
		return null;
	}
	

}
