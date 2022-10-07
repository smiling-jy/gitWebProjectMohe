package com.project.mohe.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.mohe.service.PartnerService;

@Controller
public class PartnerController {
	@Autowired
	private PartnerService partnerService;
	
	//파트너 페이지
	@RequestMapping("partner.do")
	public void partnerList(Model model, HashMap map) {
		model.addAttribute("partnerList",partnerService.getPartnerList(map));
		
	}
}
