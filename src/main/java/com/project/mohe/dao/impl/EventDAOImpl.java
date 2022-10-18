package com.project.mohe.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.dao.EventDAO;
import com.project.mohe.domain.EventVO;
import com.project.mohe.domain.PagingVO;


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
		mybatis.delete("EventDAO.deleteEvent",vo);
		
	}

	@Override
	public EventVO getEvent(EventVO vo) {
		return mybatis.selectOne("EventDAO.getEvent", vo);
	}

	@Override
	public List<EventVO> getEventList(HashMap map) {
		return mybatis.selectList("EventDAO.getEventList");
	}

	@Override
	public PagingVO getAllcnt(PagingVO vo) {
		return mybatis.selectOne("EventDAO.getAllcnt",vo);
	}

	@Override
	public List<EventVO> getAdEventList(PagingVO vo) {
		return mybatis.selectList("EventDAO.getAdEventList",vo);
	}

	@Override
	public EventVO movePage(EventVO vo) {
		return mybatis.selectOne("EventDAO.movePage", vo);
	}



}
