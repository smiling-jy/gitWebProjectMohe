package com.project.mohe.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.mohe.domain.Funding_cartVO;
import com.project.mohe.service.Funding_cartService;
import com.project.mohe.service.NoticeService;

@Controller
public class Funding_cartController {
	@Autowired
	private Funding_cartService funding_cartService;
		
	//찜 목록 중복확인 후 추가
	@RequestMapping(value ="jjimSave.do" , produces = "application/text; charset=utf8")
	@ResponseBody
	public String jjimSave(Funding_cartVO vo , HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("user_no") == null) {
			return "로그인하세요";
		}	
		vo.setUser_no((Integer) session.getAttribute("user_no"));
		
		String result = "찜목록에 추가되었습니다.";
		// 중복확인
		if(funding_cartService.getFunding_cart(vo) != null) {
			result = "이미 찜목록에 있습니다.";
			return result;
					
		}else {
			funding_cartService.insertFunding_cart(vo);
		}
		return result;		
	}
}
