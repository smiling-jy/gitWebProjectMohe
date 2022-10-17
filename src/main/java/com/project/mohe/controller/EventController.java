package com.project.mohe.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.mohe.domain.EventVO;
import com.project.mohe.domain.NoticeVO;
import com.project.mohe.service.EventService;

@Controller
public class EventController {
	@Autowired
	private EventService eventService;
	
	//이벤트 목록
	@RequestMapping("event.do")
	public void eventList(Model model, HashMap map) {
		model.addAttribute("eventList", eventService.getEventList(map));
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
