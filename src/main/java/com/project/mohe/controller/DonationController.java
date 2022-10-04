package com.project.mohe.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.mohe.domain.DonationVO;
import com.project.mohe.service.DonationService;

@Controller
public class DonationController {
	
	@Autowired
	private DonationService donationService;
	
	// 기부 데이터 등록 
	@RequestMapping("insertDonation.do")
	public void insertDonation(DonationVO vo) {
		// 결제가 완료되면 데이터를 저장하러 들어옴
		
		System.out.println(vo.toString());
		
		donationService.insertDonation(vo);
		// 작업을 마치면 기부페이지로 이동
//		return "redirect:/donate.do";
	}
	
}
