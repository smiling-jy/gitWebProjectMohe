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
	public String insertDonation(DonationVO vo) {
		boolean result = true;
		// 결제가 완료되면 데이터를 저장하러 들어옴
		donationService.insertDonation(vo);
		// 작업을 마치면 기부페이지로 이동
		
		if(result) {
			// 결제와, db insert 모두 문제가 없다면
			return "redirect:/donate.do?result="+result;
		}else {
			return "redirect:/donate.do";
		}
	}

	
}
