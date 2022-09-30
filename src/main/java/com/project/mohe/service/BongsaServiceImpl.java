package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mohe.dao.BongsaDAO;
import com.project.mohe.domain.BongsaVO;

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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BongsaVO> getBongsaList(HashMap map) {
		// TODO Auto-generated method stub
		return null;
	}
	
	

}
