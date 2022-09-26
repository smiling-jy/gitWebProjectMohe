package com.project.mohe.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.domain.BoardVO;

@Repository("boardDAO") // component중 db랑 연결할놈을 레파지토리로사용
public class BoardDAOImpl implements BoardDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public String timeTest() {
		System.out.println("DAO테스트중");
		return mybatis.selectOne("testMapper.getTime");
	}

	@Override
	public void insertBoard(BoardVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateBoard(BoardVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteBoard(BoardVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void incReadCount(BoardVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public BoardVO getBoard(BoardVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BoardVO> getBoardList(HashMap map) {
		// TODO Auto-generated method stub
		return null;
	}

}
