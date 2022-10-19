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
		
		//세션에서 user_no 받아오기 
		HttpSession session = request.getSession();
		vo.setUser_no((Integer) session.getAttribute("user_no"));
		
		String result = "찜목록에 추가되었습니다.";
		// 중복확인
		if(volunteer_cartService.getVolunteer_cart(vo) != null) {
			result = "이미 찜목록에 있습니다.";                                                                                                                                                   
			return result;
					
		}else {
			volunteer_cartService.insertVolunteer_cart(vo);
			
		}
		System.out.println(vo);
		System.out.println(result);
		return result;		
	}
}
