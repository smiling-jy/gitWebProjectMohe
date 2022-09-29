package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.eventDAO;
import com.project.mohe.domain.BoardVO;

@Service("eventService")
public class eventServiceImpl implements eventService {
	
	
	@Autowired
	private eventDAO eventDAO;

	@Override
	public void insertEvent(BoardVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateEvent(BoardVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteEvent(BoardVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public BoardVO getEvent(BoardVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BoardVO> getEventList(HashMap map) {
		// TODO Auto-generated method stub
		return null;
	}

}
