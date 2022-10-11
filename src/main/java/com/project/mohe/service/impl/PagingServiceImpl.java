package com.project.mohe.service.impl;

import org.springframework.stereotype.Service;

import com.project.mohe.domain.PagingVO;
import com.project.mohe.service.PagingService;

@Service
public class PagingServiceImpl implements PagingService{
	
	// 각 테이블의 행의 값을 받아와서 페이징 처리를 하는 메소드
	public PagingVO doPaging(PagingVO vo) {
		// 페이지번호,그룹번호 초기화
		if(vo.getPageNum() == 0) vo.setPageNum(1);
		if(vo.getGroupNo() == 0) vo.setGroupNo(1);
		
		// 전체 테이블의 행수를, 한 페이지에 몇개의 행을 보여줄건지 정의한 변수로 나눈값을 pageTotalCount 변수에 저장
		vo.setPageTotalCount(vo.getTotalRecCount()/vo.getCountPerPage());
		// 만약 나눴을때 나머지값이 있을경우 페이지를 하나 더 추가한다 > 얼마가 남더라고 추가로 페이지가 필요하기때문
		if(vo.getTotalRecCount() % vo.getCountPerPage() > 0 ) vo.setPageTotalCount(vo.getPageTotalCount()+1);
		// 페이징그룹의 전체 갯수를 구함, 전체 페이징 값을 몇개의 그룹으로 보여줄건지 정의한 변수로 나눠준다
		vo.setTotalCountGroup(vo.getPageTotalCount() / vo.getCountPerGroup());
		// 만약 나눴을때 나머지값이 있을경우 그룹을 하나 더 추가한다
		if(vo.getTotalCountGroup() % vo.getCountPerGroup() != 0 ) vo.setTotalCountGroup(vo.getTotalCountGroup()+1);
		
		// 페이징 숫자 그룹 지정
		vo.setFirstPageNo((vo.getGroupNo()-1) * vo.getCountPerGroup()+1);
		vo.setEndPageNo(vo.getGroupNo() * vo.getCountPerGroup());
		
		//페이지번호가 묶였을때 나눠지지 않은 페이지가 가상으로 생기는걸 막기위한 조건문
		if(vo.getPageTotalCount() < vo.getEndPageNo()){
			vo.setEndPageNo(vo.getEndPageNo() - (vo.getEndPageNo() - vo.getPageTotalCount()));
		}
		
		if( vo.getPageNum() == 0 && vo.getGroupNo() != 0) vo.setPageNum(vo.getFirstPageNo());
		
		vo.setFirstRow(vo.getPageNum()*vo.getCountPerPage() - (vo.getCountPerPage()-1));
		// 현재 페이지에서 보여줄 마지막 레코드 번호
		vo.setEndRow(vo.getPageNum()*vo.getCountPerPage());
		
		return vo;
	};
}	
