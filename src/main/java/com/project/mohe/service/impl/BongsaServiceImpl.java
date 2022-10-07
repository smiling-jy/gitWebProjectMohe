package com.project.mohe.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.BongsaDAO;
import com.project.mohe.domain.BongsaVO;
import com.project.mohe.service.BongsaService;

@Service("bongsaService")
public class BongsaServiceImpl implements BongsaService {

	@Autowired
	private BongsaDAO bongsaDao;

	@Override
	public void insertBongsa(BongsaVO vo) {
		// TODO Auto-generated method stub
		
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
		System.out.println("서비스진입");
		return bongsaDao.getBongsaList(map);
	}
	
	

}
