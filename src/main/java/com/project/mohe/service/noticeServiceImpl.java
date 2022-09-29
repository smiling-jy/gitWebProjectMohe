package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.noticeDAO;
import com.project.mohe.domain.BoardVO;

@Service("noticeService")
public class noticeServiceImpl implements noticeService{
	
	@Autowired
	private noticeDAO noticeDAO;

	@Override
	public void insertNotice(BoardVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateNotice(BoardVO vo) {
		// TODO Auto-generated method stub
		
	} 

	@Override
	public void deleteNotice(BoardVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public BoardVO getNotice(BoardVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BoardVO> getNoticeList(HashMap map) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	
}
