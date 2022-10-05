package com.project.mohe.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.mohe.domain.Funding_pjVO;
import com.project.mohe.domain.Funding_qnaVO;
import com.project.mohe.service.Funding_pjService;
import com.project.mohe.service.Funding_qnaService;
import com.project.mohe.service.NoticeService;
import com.project.mohe.service.impl.Funding_qnaServiceImpl;

@Controller
public class Funding_qnaController {
	@Autowired
	private Funding_qnaService funding_qnaService;
	
	@RequestMapping("fundingQna.do")
	public String fundingQna(Funding_qnaVO qna ,Model model) {
		model.addAttribute("qna_list",funding_qnaService.getFunding_qnaList(qna));
		return "fundingQna";
	}
	
	
}
