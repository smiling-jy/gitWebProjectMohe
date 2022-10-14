package com.project.mohe.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.EventDAO;
import com.project.mohe.domain.EventVO;
import com.project.mohe.domain.PagingVO;
import com.project.mohe.service.EventService;

@Service("eventService")
public class EventServiceImpl implements EventService {
	
	
	@Autowired
	private EventDAO eventDAO;

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
		return eventDAO.getEventList(map);
	}

	@Override
	public PagingVO getAllcnt(PagingVO vo) {
		return eventDAO.getAllcnt(vo);
	}

	@Override
	public List<EventVO> getAdEventList(PagingVO vo) {
		return eventDAO.getAdEventList(vo);
	}

}
