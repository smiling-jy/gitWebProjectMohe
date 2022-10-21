package com.project.mohe.domain;

import lombok.Data;

@Data
public class PagingVO {
	
	private int pageNum; 			// 화면에서 받아올 페이징번호
	
	private int totalRecCount;		// 전체 레코드 수	    : 전체 게시글 수 
	private int pageTotalCount;		// 전체 페이지 수       : 페이지 네비게이션 숫자
	private int countPerPage = 5;	// 한페이지당 레코드 수 : 게시글을 몇개 띄울것인지

	private int firstRow;           // 현재페이지에서 보여줄 시작 레코드(게시글) 번호
	private int endRow;             // 현재페이지에서 보여줄 마지막 레코드(게시글) 번호

	private int groupNo; 			      // 전체 페이지 갯수를 보여줄 숫자만큼 분리			        
	private int countPerGroup = 2;        //  한페이지에 보여줄 페이지 수 		    
	private int totalCountGroup;          // 그룹의 전체 갯수 : 페이지 수에 따른 그룹 수
	
	private int firstPageNo; 			  // 페이징그룹의 시작번호
	private int endPageNo; 				  // 페이징그룹의 시작번호
	
	// 검색기능을 위해 같이 사용하는 변수
	private String select;				// 컬럼명
	private String stext;				// 검색어
	
	
	public PagingVO() {
		this.countPerPage = 5;
		this.countPerGroup = 3;
	}
	
}
