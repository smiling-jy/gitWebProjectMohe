package com.project.mohe.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.mohe.service.BoardService;

@Controller
public class BoardController {
	// @requestMapping(value = "주소")
	// 메소드명() {..}
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("test.do")
	public String test() {
		System.out.println(boardService.timeTest());
		return "test";
	}

}
