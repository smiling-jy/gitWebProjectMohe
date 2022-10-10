package com.project.mohe.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.mohe.domain.Funding_payVO;
import com.project.mohe.domain.Funding_pjVO;
import com.project.mohe.service.Funding_payService;
import com.project.mohe.service.Funding_pjService;

@Controller
public class Funding_payController {
	@Autowired
	private Funding_payService funding_payService;
	@Autowired
	private Funding_pjService pjService;
	
	// 결제 하기
	@RequestMapping("fundingPay.do")
	public String fundingPay(Funding_pjVO pj, Model model) {
		// 펀딩 프로젝트 vo의 데이터 넘겨주기 	
		model.addAttribute("pj",pjService.getFunding_pj(pj));
		return "fundingPay";
	}
	
	@RequestMapping("paySave.do")
	public String paySave(Funding_payVO pay, HttpServletRequest re) {
		// 유저번호 세션에서 받아오기
		HttpSession session = re.getSession();
		
		// 임시 유저번호 로그인 기능 완성되면 ㄹㅇ 세션에서 받아오기
		session.setAttribute("user_no", 1);
		
		pay.setUser_no((Integer) session.getAttribute("user_no"));
		
		// 결제 api와 연결 가능하다면 연결
		pay.setPay_total(pay.getFd_price() * pay.getPay_count());
		
		// 주소
		pay.setPay_pn_addr(pay.getAddr1()+"/"+pay.getAddr2());
		
		System.out.println(pay);
		
		funding_payService.insertFunding_pay(pay);
		
		
		
		// 마이페이지 완성되면 마이페이지로 이동되게 수정
		return "redirect:/fundingSingle.do?fd_no="+pay.getFd_no();
		
	}
	
	@RequestMapping("patronList.do")
	public String patronList(Funding_payVO pay, Model model) {
		System.out.println(pay);
		model.addAttribute("title", pay.getFd_title());
		model.addAttribute("pay_list", funding_payService.getFunding_payList(pay));
		return "partronList";
	}
}
