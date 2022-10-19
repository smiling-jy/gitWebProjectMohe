package com.project.mohe.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.BongsaDAO;
import com.project.mohe.domain.BongsaVO;
import com.project.mohe.domain.Funding_pjVO;
import com.project.mohe.domain.PagingVO;
import com.project.mohe.service.BongsaService;

@Service("bongsaService")
public class BongsaServiceImpl implements BongsaService {

	@Autowired
	private BongsaDAO bongsaDao;

	@Override
	public void insertBongsa(BongsaVO vo) {
		System.out.println("insertBongsa 서비스 입구");
		bongsaDao.insertBongsa(vo);
		System.out.println("insertBongsa 서비스 출구");
	}

	@Override
	public void updateBongsa(BongsaVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteBongsa(BongsaVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public BongsaVO getBongsa(BongsaVO vo) {
		//봉사 상세 페이지 출력
		return bongsaDao.getBongsa(vo);
	}

	@Override
	public List<BongsaVO> getBongsaList(HashMap map) {
		return bongsaDao.getBongsaList(map);
	}
	
	@Override
	public List<BongsaVO> getSuccess_BsList(HashMap map) {
		return bongsaDao.getSuccess_BsList(map);
	}
	
	
	@Override
	public List<BongsaVO> getOngoing_BsList(HashMap map) {
		return bongsaDao.getOngoing_BsList(map);
	}
	
	@Override 
	public List<BongsaVO> getbongsaParticipateList(BongsaVO vo){
		return bongsaDao.getbongsaParticipateList(vo);
	}
	
	
	
	@Override
	public BongsaVO getParticipateInfo(BongsaVO vo) {
		//봉사 상세 페이지 출력
		
		return bongsaDao.getParticipateInfo(vo);
	}

	@Override
	public PagingVO getAllcntOk(PagingVO vo) {
		return bongsaDao.getAllcntOk(vo);
	}

	@Override
	public PagingVO getAllcntNo(PagingVO vo) {
		return bongsaDao.getAllcntNo(vo);
	}

}
