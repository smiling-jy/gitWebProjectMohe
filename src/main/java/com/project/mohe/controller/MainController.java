package com.project.mohe.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.mohe.service.MainService;


@Controller
public class MainController {
	// @requestMapping(value = "주소")
	// 메소드명() {..}
	
	@Autowired
	private MainService mainService;

	
	@RequestMapping("{step}.do")
	public String viewPage(@PathVariable String step) {
		System.out.println("화면이동: "+step);
		// 사용자가 단순화면이동을 하는 경우 해당 메소드를 이용함
		// 요청한 페이지의 경로이름 : {step} 을 변수로 저장 > @PathVariable
		// servlet 설정한 경로인 /WEB-INF/views/ 아래 해당 파일이 있으면 자동으로 리턴
		
		// 직접맵핑된 페이지를 모두 확인 한 후에 없으면 실행되는 맵핑메소드
		return step;
	}
	
	@RequestMapping("main.do")
	public void viewMain(Model model) {
		// 메인화면에 필요한 각 데이터 호출 및 모델에 setting
		try {
			// 기간이 지난 활성화 팝업 비활성화로 전환하기 
			mainService.timeOutPop();
			// 회원 등급 조정
//			mainService.userRating();
			model.addAttribute("donation",mainService.getDonationList());
			model.addAttribute("partner",mainService.getPartnerList());
			model.addAttribute("bestFdList",mainService.getFdList());
			model.addAttribute("deadlineBs",mainService.getBsList());
			model.addAttribute("bestReview",mainService.getReviewList());
			model.addAttribute("eventList",mainService.getEventList());
			model.addAttribute("status",mainService.getStatus());
			model.addAttribute("popup",mainService.getMainPopup());
		}catch(Exception e) {
			System.out.println("오류"+e);
		}
	}
	
	@RequestMapping("info2.do")
	public void veiwInfo2(Model model) {
		// status 정보 불러오기
		model.addAttribute("status",mainService.getStatus());
	}

}
