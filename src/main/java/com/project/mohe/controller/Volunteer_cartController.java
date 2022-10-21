package com.project.mohe.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.mohe.domain.Funding_cartVO;
import com.project.mohe.domain.Volunteer_cartVO;
import com.project.mohe.service.Volunteer_cartService;

@Controller
public class Volunteer_cartController {
	@Autowired
	private Volunteer_cartService volunteer_cartService;
	
	
	
	//찜 목록 중복확인 후 추가
	@RequestMapping(value ="bsJjimSave.do", produces = "application/text; charset=utf8")
	@ResponseBody
	public String bsJjimSave(Volunteer_cartVO vo, HttpServletRequest request) {
		
		
		//로그인 여부 확인
		HttpSession session = request.getSession();
		if(session.getAttribute("user_no") == null) {
			return "로그인하세요";
		}	
		vo.setUser_no((Integer) session.getAttribute("user_no"));
		
		//결과값 변수선언
		String result;
		
		// 중복확인
		if(volunteer_cartService.getVolunteer_cart(vo) != null) {
			result = "이미 찜목록에 있습니다.";                                                                                                                                                   
			return result;
					
		}else {
			volunteer_cartService.insertVolunteer_cart(vo);
			result = "찜목록에 추가되었습니다.";
		}
		System.out.println(vo);
		System.out.println(result);
		return result;		
	}
	

	//찜목록 삭제
	
	@RequestMapping("deleteBsCart.do")
	public String deleteBsCart(Volunteer_cartVO vo, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		vo.setUser_no((Integer) session.getAttribute("user_no"));
		
		volunteer_cartService.deleteVolunteer_cart(vo);
		
		return "redirect:/shoppingBasket.do";
	}
	
}
