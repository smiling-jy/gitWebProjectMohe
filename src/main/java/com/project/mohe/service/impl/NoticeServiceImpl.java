package com.project.mohe.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.NoticeDAO;
import com.project.mohe.domain.NoticeVO;
import com.project.mohe.service.NoticeService;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	private NoticeDAO noticeDAO;

	@Override
	public void insertNotice(NoticeVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateNotice(NoticeVO vo) {
		// TODO Auto-generated method stub
		
	} 

	@Override
	public void deleteNotice(NoticeVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public NoticeVO getNotice(NoticeVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<NoticeVO> getNoticeList(HashMap map) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	
}
