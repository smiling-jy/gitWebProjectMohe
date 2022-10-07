package com.project.mohe.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.mohe.domain.Funding_pjVO;
import com.project.mohe.service.Funding_pjService;
import com.project.mohe.service.NoticeService;
import com.project.mohe.service.impl.Funding_pjServiceImpl;

@Controller
public class Funding_pjController {
	@Autowired
	private Funding_pjService funding_pjService;
	
		// 헤더의 펀딩 클릭시 펀딩 리스트 페이지로 이동
		@RequestMapping("funding.do")
		public String funding(Model model, String fd_category, String search, String select) {
			HashMap map = new HashMap();
			map.put("fd_category",fd_category); // 카테고리
			map.put("search",search); // 검색어
			map.put("select",select); // 최신순 , 인기순
			System.out.println(select);
			List<Funding_pjVO> pj_list = funding_pjService.getFunding_pjList(map);
			model.addAttribute("pj_list", pj_list);
			return "funding";
		}
		
		// 펀딩 상세 페이지 이동
		@RequestMapping("fundingSingle.do")
		public String fundingSingle(Funding_pjVO pj, Model model) {
			model.addAttribute("pj", funding_pjService.getFunding_pj(pj));
			return "fundingSingle";
		}
		
		
		
		// 펀딩주최하기 클릭시 페이지 단순 이동
		@RequestMapping("openfunding.do")
		public void openFunding() {

		}
		
		// Funding_pjVO 테이블에 insert
		@RequestMapping("savefunding.do")
		public String insertFunding(Funding_pjVO pj) {
			// 파일추가때문에 좀 더 생각해봐
			return "funding";
		}
		
		// 관리자페이지에서 프로젝트 승인해줄때
		public void approveFunding(Funding_pjVO pj) {
			funding_pjService.updateFunding_pj(pj);
		}
}
