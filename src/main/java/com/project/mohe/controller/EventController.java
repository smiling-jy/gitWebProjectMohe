package com.project.mohe.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.mohe.domain.EventVO;
import com.project.mohe.domain.PagingVO;
import com.project.mohe.service.EventService;
import com.project.mohe.service.PagingService;

@Controller
public class EventController {
	@Autowired
	private EventService eventService;
	
	@Autowired
	private PagingService pagingService;
	
	//이벤트 목록
	@RequestMapping("event.do")
	public void eventList(PagingVO vo, Model model) {
		  //페이징을 위한 테이블 행값
	      vo.setTotalRecCount(eventService.getAllcnt(vo).getTotalRecCount());
	      //페이징처리
	      vo=pagingService.doPaging(vo);
	      //페이지값 저장
	      model.addAttribute("page", vo);
	      //페이징을 토대로한 목록 불러오기
	      model.addAttribute("eventList", eventService.getAdEventList(vo));
		
	}
	
	//이벤트 상세읽기+ 이전글 다음글
	@RequestMapping("getEvent.do")
	public String getNotice(EventVO vo, Model model) {
		model.addAttribute("event", eventService.getEvent(vo));
		
		//이전글 다음글
		model.addAttribute("move", eventService.movePage(vo));
		
		return "eventDetail";
	}

}
