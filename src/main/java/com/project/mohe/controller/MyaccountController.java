package com.project.mohe.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.mohe.domain.UserInfoVO;
import com.project.mohe.service.MyaccountService;

@Controller
public class MyaccountController {
	
	@Autowired
	MyaccountService myaccountService;
	
	
		@RequestMapping("details.do")
		public String fundingPay(HttpSession session, Model model) {
			UserInfoVO userInfoVO = (UserInfoVO) session.getAttribute("user");
			
			model.addAttribute("myFundingList", myaccountService.getMyFundingList(userInfoVO));
//			model.addAttribute("myVolunteerList", );
			
			return "details";
		}
	
}
