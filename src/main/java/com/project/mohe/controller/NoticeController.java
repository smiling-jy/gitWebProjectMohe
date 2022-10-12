package com.project.mohe.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.mohe.domain.NoticeVO;
import com.project.mohe.service.NoticeService;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	
	//공지사항 목록
	@RequestMapping("notice.do")
	 public void noticeList(Model model, HashMap map) {
	      System.out.println("=========>>공지사항 컨트롤러  noticeList.do");
	      model.addAttribute("noticeList", noticeService.getNoticeList(map));
	   }
	
	//공지사항 view + 이전글 다음글
	@RequestMapping("getNotice.do")
	public String getNotice(NoticeVO vo, Model model, HashMap map) {
		model.addAttribute(""
				+ "notice", noticeService.getNotice(vo));
		
		//이전글 다음글
//		List<NoticeVO>nList=noticeService.getNoticeList(map);
//		model.addAttribute("noticeList", nList);
		model.addAttribute("move", noticeService.movePage(vo));
		
		return "noticeDetail";
	}
	

}
