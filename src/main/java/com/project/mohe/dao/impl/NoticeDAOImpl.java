package com.project.mohe.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.dao.NoticeDAO;
import com.project.mohe.domain.NoticeVO;
import com.project.mohe.domain.PagingVO;

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
		mybatis.delete("NoticeDAO.deleteNotice",vo);
		
	}

	@Override
	public void incReadCount(NoticeVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public NoticeVO getNotice(NoticeVO vo) {
		System.out.println("=========>>공지사항 getNotice DAO");
		return mybatis.selectOne("NoticeDAO.getNotice",vo);
	}

	@Override
	public List<NoticeVO> getNoticeList(PagingVO vo) {
		
		return mybatis.selectList("NoticeDAO.getNoticeList");
	}

	@Override
	public NoticeVO movePage(NoticeVO vo) {
		return mybatis.selectOne("NoticeDAO.movePage", vo);
	}

	@Override
	public PagingVO getAllcnt(PagingVO vo) {
		return mybatis.selectOne("NoticeDAO.getAllcnt",vo);
	}

	@Override
	public List<NoticeVO> getAdNoticeList(PagingVO vo) {
		return mybatis.selectList("NoticeDAO.getAdNoticeList",vo);
	}

	
	
}
