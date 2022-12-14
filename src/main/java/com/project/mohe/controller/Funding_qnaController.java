package com.project.mohe.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.mohe.domain.Funding_pjVO;
import com.project.mohe.domain.Funding_qnaVO;
import com.project.mohe.service.Funding_pjService;
import com.project.mohe.service.Funding_qnaService;

@Controller
public class Funding_qnaController {
	@Autowired
	private Funding_qnaService funding_qnaService;
	@Autowired
	private Funding_pjService fd_pjService;
	
	// 프로젝트 별 질문 목록
	@RequestMapping("fundingQna.do")
	public String fundingQna(Funding_qnaVO qna ,Model model ,Funding_pjVO pj) {
		model.addAttribute("qna_list",funding_qnaService.getFunding_qnaList(qna));
		model.addAttribute("pj", fd_pjService.getFunding_pj(pj));
		return "fundingQna";
	}
	
	// 질문하기
	@RequestMapping("questionSave.do")
	public String questionSave(Funding_qnaVO qna, HttpServletRequest request) {
		
		// 유저번호 세션에서 받아오기
		HttpSession session = request.getSession();
		if(session.getAttribute("user_no") == null) {
			return "loginCheck";
		}
		qna.setUser_no((Integer) session.getAttribute("user_no"));
		
		funding_qnaService.insertFunding_qna(qna);
		
		return "redirect:/fundingQna.do?fd_no="+qna.getFd_no();
	}
	
	// 질문 삭제
	@RequestMapping("delete_qna.do")
	public String deleteFunding_qna (Funding_qnaVO qna) {
		funding_qnaService.deleteFunding_qna(qna);
		return "redirect:/fundingQna.do?fd_no="+qna.getFd_no();
	}
	
	// 주최자 마이페이지 질문 답변하기
	@RequestMapping(value = "qnalist.do")
	@ResponseBody
	public List<Funding_qnaVO> getHost_qnaList(Funding_qnaVO qna) {
		List<Funding_qnaVO> reQan = funding_qnaService.getHost_qnaList(qna);
		return reQan;
	}
	
	
	// 주최자 답변 등록
	@RequestMapping(value = "answerSave.do")
	@ResponseBody
	public List<Funding_qnaVO> answerSave(Funding_qnaVO qna) {
		funding_qnaService.updateFunding_qna(qna);
		return funding_qnaService.getHost_qnaList(qna);
	}
	
	
}
