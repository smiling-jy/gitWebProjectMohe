package com.project.mohe.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.mohe.domain.BongsaVO;
import com.project.mohe.service.BongsaService;

@Controller
public class BongsaController {
	@Autowired
	private BongsaService bongsaService;
	
	//헤더의 봉사 클릭시 봉사 리스트 페이지로 이동 - 봉사메인페이지
	@RequestMapping("bongsaMain.do")
	public String bongsaMain(Model model, String bs_region, String searchCondition,String searchKeyword ) {
//		System.out.println("컨트롤러 진입");
		HashMap map = new HashMap(); 
		map.put("bs_region",bs_region); // 지역
		map.put("searchCondition",searchCondition); // 선택
		map.put("searchKeyword",searchKeyword); // 키워드
		List<BongsaVO> bs_list = bongsaService.getBongsaList(map);  //리스트에 데이터 쌓기	
		model.addAttribute("bs_list", bs_list);
		return "bongsaMain";
		
	}
	
	
	//봉사메인페이지에서 readmore이나 사진 클릭시 해당 봉사의 세부내역페이지로 이동 - 봉사세부내역페이지
	@RequestMapping("bongsaDetail.do")
	public String bongsaDetail(BongsaVO vo, Model model) {
		model.addAttribute("bongsa", bongsaService.getBongsa(vo));
		System.out.println("봉사 디테일에서의 bs_no:" + vo.getBs_no());
		return "bongsaDetail";
	}
	 
	
	//봉사세부내역페이지에서 참여하기를 클릭시 폼 추력
	@RequestMapping("bongsaParticipate.do")
	public String bongsaParticipate(Model model, BongsaVO vo, HttpServletRequest request) {
		
		// 유저번호 세션에서 받아오기
		HttpSession session = request.getSession();
		// 임시 유저번호 로그인 기능 완성되면 ㄹㅇ 세션에서 받아오기
		session.setAttribute("user_no", 3);
		//System.out.println(session.getAttribute("user_name"));
		
		vo.setPUser_no((Integer) session.getAttribute("user_no"));
		System.out.println("봉사 참여페이지에서의 bs_no:" + vo.getBs_no());
		System.out.println("봉사 참여페이지에서의 접속 puser_no:" + vo.getPUser_no()); 
		
		model.addAttribute("bongsa", bongsaService.getParticipateInfo(vo));
		
		return "bongsaParticipate";
	}
	

	
	
	//모집하기 페이지 봉사활동 모집 insert
	
	@RequestMapping("insertBongsa.do")
	public String insertBongsa(BongsaVO vo, HttpServletRequest request) {
		
		
		// 유저번호 세션에서 받아오기
		HttpSession session = request.getSession();
		// 임시 유저번호 로그인 기능 완성되면 ㄹㅇ 세션에서 받아오기
		session.setAttribute("user_no", 3);
		
		System.out.println("insertBongsa 컨트롤러 입구");
		
		bongsaService.insertBongsa(vo);
		
		
		
	
		
		
	return "redirect:/bongsaMain.do";
	}
	
	
	
	
	
	
	
	
	
	
	
}

