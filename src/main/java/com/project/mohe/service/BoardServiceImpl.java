package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.BoardDAO;
import com.project.mohe.domain.BoardVO;

@Service("boardService") // component중에 하나다
public class BoardServiceImpl implements BoardService{
	// 비지니스 로직, 사람이 요청한 것들에 대해 처리해줄 라우터의 기능을 할것
	
	@Autowired
	private BoardDAO boardDAO;

	@Override
	public String timeTest() {
		return boardDAO.timeTest();
	}
 
	@Override
	public void insertBoard(BoardVO vo) {
		
	}

	@Override
	public void updateBoard(BoardVO vo) {
		
	}

	@Override
	public void deleteBoard(BoardVO vo) {
		
	}

	@Override
	public BoardVO getBoard(BoardVO vo) {
		return null;
	}

	@Override
	public List<BoardVO> getBoardList(HashMap map) {
		return null;
	}

}
