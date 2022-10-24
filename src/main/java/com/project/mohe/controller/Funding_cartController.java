package com.project.mohe.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.mohe.domain.BongsaVO;
import com.project.mohe.domain.Funding_cartVO;
import com.project.mohe.domain.Funding_pjVO;
import com.project.mohe.domain.UserInfoVO;
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
	
	// 찜목록리스트 (펀딩,봉사 둘 다)
	@RequestMapping("shoppingBasket.do")
	public String getFunding_cartList(Model model, HttpSession session) {
		UserInfoVO user = (UserInfoVO) session.getAttribute("user");
		if (user == null) {
			return "redirect:/loginCheck.do";
		}
		
		HashMap map = new HashMap();
		map.put("user_no" ,(Integer)session.getAttribute("user_no"));
		List<Funding_pjVO> pj_list = funding_cartService.getFunding_cartList(map);
		List<BongsaVO> bs_list = funding_cartService.getBongsa_cartList(map);
		System.out.println(bs_list);
		model.addAttribute("pj_list", pj_list);
		model.addAttribute("bs_list", bs_list);
		return "shoppingBasket";
	}
	
	// 펀딩찜 삭제
	@RequestMapping("deleteFdCart.do")
	public String deleteFdCart(Funding_cartVO vo , HttpServletRequest request) {
		HttpSession session = request.getSession();
		vo.setUser_no((Integer) session.getAttribute("user_no"));
		funding_cartService.deleteFunding_cart(vo);
		return "redirect:/shoppingBasket.do";
	}
}
