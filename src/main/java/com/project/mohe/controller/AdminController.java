package com.project.mohe.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.mohe.service.AdminService;

@Controller
@RequestMapping("/admin/")
public class AdminController {
	@Autowired
	private AdminService adminService;
	
	// 관리자 화면 자동이동을 위한 메소드
	@RequestMapping("{step}.do")
	public String viewPage(@PathVariable String step) {
		return "/admin/"+step;
	}
	
	// 회원 목록 띄우기
	@RequestMapping("adUserList.do")
	public void getUserList(Model model) {	
		model.addAttribute("userList",adminService.adGetUserList());
	}
}
