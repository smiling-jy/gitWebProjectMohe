package com.project.mohe.dao;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.Volunteer_cartVO;

public interface Volunteer_cartDAO {
	// CRUD 기능 구현
		// 글 등록
		void insertVolunteer_cart(Volunteer_cartVO vo);
				
		// 글 수정
		void updateVolunteer_cart(Volunteer_cartVO vo); 
			
		// 글 삭제
		void deleteVolunteer_cart(Volunteer_cartVO vo);
			
		// 글 상세 조회
		Volunteer_cartVO getVolunteer_cart(Volunteer_cartVO vo);
			
		// 글 목록 조회
		List<Volunteer_cartVO> getVolunteer_cartList(HashMap map);
		//<BoardVO> 가 <eventVO> 로 되어야하는게 아닌가
}
