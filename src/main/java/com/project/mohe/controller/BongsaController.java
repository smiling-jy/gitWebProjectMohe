package com.project.mohe.controller;

import java.util.HashMap;
import java.util.List;

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
	
	
	//헤더의 봉사 클릭시 봉사 리스트 페이지로 이동
	@RequestMapping("bongsaMain.do")
	public String bongsaMain(Model model, String searchCondition, String searchKeyword) {
		System.out.println("============================================");
		System.out.println("bongsaMain 진입");
		System.out.println("============================================");
		
		
		HashMap map = new HashMap();
		//map.put("BS_REGION", BS_REGION); //지역 카테고리 
		map.put("searchCondition",searchCondition); // 검색어
		map.put("searchKeyword",searchKeyword); // 최신순, 인기순
		System.out.println("bongsaMain 중간");
		List<BongsaVO> bs_pj_list = bongsaService.getBongsaList(map);
		model.addAttribute("bs_list", bs_pj_list);
		
		
		return "bongsaMain";
		
	}
	
}
