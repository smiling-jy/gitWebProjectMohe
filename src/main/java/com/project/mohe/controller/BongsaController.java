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
	public String bongsaMain(Model model, String regeion) {
		System.out.println("컨트롤러 진입");
		System.out.println("지역 : " + regeion);
		HashMap map = new HashMap(); 
		map.put("regeion",regeion); // 지역
		List<BongsaVO> bs_list = bongsaService.getBongsaList(map);  //리스트에 데이터 쌓기	
		model.addAttribute("bs_list", bs_list);
		System.out.println("컨트롤러 마지막 ");
		System.out.println(bs_list);
		return "bongsaMain";
		
	}
	
}

