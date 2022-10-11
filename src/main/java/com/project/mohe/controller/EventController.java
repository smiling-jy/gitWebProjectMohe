package com.project.mohe.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.mohe.domain.EventVO;
import com.project.mohe.service.EventService;

@Controller
public class EventController {
	@Autowired
	private EventService eventService;
	
	
	@RequestMapping("eventList.do")
	public void eventList(Model model, HashMap map) {
		model.addAttribute("eventList", eventService.getEventList(map));
	}
	

}
