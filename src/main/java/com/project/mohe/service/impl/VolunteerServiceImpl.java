package com.project.mohe.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.VolunteerDAO;
import com.project.mohe.domain.VolunteerVO;
import com.project.mohe.service.VolunteerService;

@Service("volunteerService")
public class VolunteerServiceImpl implements VolunteerService {

	@Autowired
	private VolunteerDAO volunteerDao;

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
