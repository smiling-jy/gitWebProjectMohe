package com.project.mohe.service;

import java.util.HashMap;
import java.util.List;

import com.project.mohe.domain.AdminVO;
import com.project.mohe.domain.BongsaVO;
import com.project.mohe.domain.DonationVO;
import com.project.mohe.domain.EventVO;
import com.project.mohe.domain.Funding_pjVO;
import com.project.mohe.domain.NoticeVO;
import com.project.mohe.domain.PartnerVO;
import com.project.mohe.domain.PopupVO;
import com.project.mohe.domain.ReviewVO;
import com.project.mohe.domain.UserInfoVO;

public interface MainService {
	// 각 테이블의 list들 조회 
	
	// 펀딩 리스트
	List<Funding_pjVO> adGetFdList();
	
	// 봉사 리스트
	List<BongsaVO> getBsList();
	
	// 파트너 리스트
	List<PartnerVO> getPartnerList();
	
	//리뷰 리스트
	List<ReviewVO> getReviewList();
	
	//기부 리스트
	List<DonationVO> getDonationList();
	
	//이벤트 리스트
	List<EventVO> getEventList();

}
