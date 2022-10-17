package com.project.mohe.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.mohe.domain.NoticeVO;
import com.project.mohe.domain.PagingVO;
import com.project.mohe.service.NoticeService;
import com.project.mohe.service.PagingService;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	@Autowired
	private PagingService pagingService;
	
	//공지사항 목록
	@RequestMapping("notice.do")
	 public void noticeList(PagingVO vo, Model model) {
	       //페이징을 위한 테이블 행값
	      vo.setTotalRecCount(noticeService.getAllcnt(vo).getTotalRecCount());
	      //페이징처리
	      vo=pagingService.doPaging(vo);
	      //페이지값 저장
	      model.addAttribute("page", vo);
	      //페이징을 토대로한 목록 불러오기
	      model.addAttribute("noticeList", noticeService.getAdNoticeList(vo));
	   }
	
	//공지사항 view + 이전글 다음글
	@RequestMapping("getNotice.do")
	public String getNotice(NoticeVO vo, Model model) {
		model.addAttribute("notice", noticeService.getNotice(vo));
		
		//이전글 다음글
		model.addAttribute("move", noticeService.movePage(vo));
		
		return "noticeDetail";
	}
	

	

}
