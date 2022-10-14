package com.project.mohe.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.NoticeDAO;
import com.project.mohe.domain.NoticeVO;
import com.project.mohe.domain.PagingVO;
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
		System.out.println("=========>>공지사항 getNotice 서비스");
		return noticeDAO.getNotice(vo);
	}

	@Override
	public List<NoticeVO> getNoticeList(HashMap map) {
		  
	      return noticeDAO.getNoticeList(map);
	}

	@Override
	public NoticeVO movePage(NoticeVO vo) {
		System.out.println("==============movePage serviceimpl");
		return noticeDAO.movePage(vo);
	}

	@Override
	public PagingVO getAllcnt(PagingVO vo) {
		return noticeDAO.getAllcnt(vo);
	}

	@Override
	public List<NoticeVO> getAdNoticeList(PagingVO vo) {
		return noticeDAO.getAdNoticeList(vo);
	}
	
	
	
	
}
