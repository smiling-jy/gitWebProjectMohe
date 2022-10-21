package com.project.mohe.service.impl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.VolunteerDAO;
import com.project.mohe.domain.PagingVO;
import com.project.mohe.domain.VolunteerVO;
import com.project.mohe.service.VolunteerService;

@Service("volunteerService")
public class VolunteerServiceImpl implements VolunteerService {

	@Autowired
	private VolunteerDAO volunteerDao;

	@Override
	public void insertVolunteer(VolunteerVO vo) {
		System.out.println("insertVolun 서비스 입구");
		volunteerDao.insertVolunteer(vo);
		volunteerDao.incSuccessCnt(vo);
		System.out.println("insertVolun 서비스 출구");
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
	
		return volunteerDao.getVolunteer(vo);
	}

	@Override
	public List<VolunteerVO> getVolunteerList(HashMap map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void incSuccessCnt(VolunteerVO vo) {
		// TODO Auto-generated method stub
		
	}

	
	@Override
	public List<VolunteerVO> adGetVolunteerList(PagingVO vo) {
		return volunteerDao.adGetVolunteerList(vo);
	}

	@Override
	public PagingVO getAllcnt(PagingVO vo) {
		return volunteerDao.getAllcnt(vo);
	}
	


}
