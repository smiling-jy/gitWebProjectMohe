package com.project.mohe.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.domain.NoticeVO;

@Repository("noticeDAO")
public class NoticeDAOImpl implements NoticeDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
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
	public void incReadCount(NoticeVO vo) {
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
