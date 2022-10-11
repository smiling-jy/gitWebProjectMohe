package com.project.mohe.service;

import com.project.mohe.domain.PagingVO;

public interface PagingService {

	// 각 테이블의 행의 값을 받아와서 페이징 처리를 하는 메소드
	PagingVO doPaging(PagingVO vo);
}
