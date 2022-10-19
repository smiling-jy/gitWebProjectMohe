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
		System.out.println("insertVolun DAO 입구");
		mybatis.insert("VolunteerDAO.insertVolunteer",vo);
		System.out.println("insertVolun DAO 출구");
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
		return mybatis.selectOne("VolunteerDAO.getVolunteer",vo);
	}

	@Override
	public List<VolunteerVO> getVolunteerList(HashMap map) {
		return null;
	}
	
	//펀딩 성공인원 업데이트 
	@Override
	public void incSuccessCnt(VolunteerVO vo){
		mybatis.update("VolunteerDAO.incSuccessCnt",vo);
	}

}
