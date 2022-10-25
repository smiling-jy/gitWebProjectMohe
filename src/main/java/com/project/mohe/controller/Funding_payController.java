package com.project.mohe.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.mohe.domain.Funding_payVO;
import com.project.mohe.domain.Funding_pjVO;
import com.project.mohe.domain.PagingVO;
import com.project.mohe.domain.UserInfoVO;
import com.project.mohe.service.Funding_payService;
import com.project.mohe.service.Funding_pjService;
import com.project.mohe.service.PagingService;

@Controller
public class Funding_payController {
	@Autowired
	private Funding_payService funding_payService;
	@Autowired
	private Funding_pjService pjService;
	@Autowired
	private PagingService pagingService;
	
	// 결제 하기
	@RequestMapping("fundingPay.do")
	public String fundingPay(Funding_pjVO pj, Model model , HttpServletRequest request) {
		
		// 유저번호 세션에서 받아오기
		HttpSession session = request.getSession();
		if(session.getAttribute("user_no") == null) {
			return "loginCheck";
		}	
		// 펀딩 프로젝트 vo의 데이터 넘겨주기 	
		model.addAttribute("pj",pjService.getFunding_pj(pj));
		return "fundingPay";
	}
	
	@RequestMapping("paySave.do")
	public String paySave(Funding_payVO pay, HttpServletRequest re , UserInfoVO us) {
		// 유저번호 세션에서 받아오기
		HttpSession session = re.getSession();
		pay.setUser_no((Integer) session.getAttribute("user_no"));
		// 총액
		pay.setPay_total(pay.getFd_price() * pay.getPay_count());
		// 주소
		pay.setPay_pn_addr(pay.getAddr1()+"/"+pay.getAddr2());
		
		// > 파라미터로 user_no가 들어있는 UserInfoVO vo 객체를 받아옴
		us.setUser_no(pay.getUser_no());
		
		funding_payService.insertFunding_pay(pay,us);
		return "redirect:/myFundingList.do";
	}
	
	@RequestMapping("patronList.do")
	public String patronList(Funding_payVO pay, Model model) {
		model.addAttribute("title", pay.getFd_title());
		model.addAttribute("pay_list", funding_payService.getFunding_payList(pay));
		return "patronList";
	}
	
	// 배송상태 업데이트
	@RequestMapping(value = "statusUpdate.do")
	@ResponseBody
	public List<Funding_payVO> statusUpdate(Funding_payVO pay) {
		funding_payService.updateFunding_pay(pay);
		return funding_payService.getFunding_payList(pay);
	}
	
	
	@RequestMapping("myFundingList.do")
	public String myFundingList(PagingVO vo , HttpServletRequest request, Model model){
		HttpSession session = request.getSession();
		vo.setSelect(String.valueOf(session.getAttribute("user_no")));
		// 페이징을 위한 테이블 행값 받아오기
		vo.setTotalRecCount(funding_payService.getAllcnt(vo).getTotalRecCount());
		// 페이징 처리 
		vo = pagingService.doPaging(vo);
		// 페이지값 저장하기
		
		model.addAttribute("page",vo);		
		model.addAttribute("pay_list", funding_payService.adGetFunding_payList(vo));
		
		return "myFundingList";
	}
}
