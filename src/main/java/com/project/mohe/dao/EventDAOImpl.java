package com.project.mohe.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.domain.EventVO;


@Repository("eventDAO")
public class EventDAOImpl implements EventDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void insertEvent(EventVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateEvent(EventVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteEvent(EventVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public EventVO getEvent(EventVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<EventVO> getEventList(HashMap map) {
		// TODO Auto-generated method stub
		return null;
	}



}
