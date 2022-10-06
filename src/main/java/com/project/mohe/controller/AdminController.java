package com.project.mohe.controller;

import java.util.HashMap;

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
	// 관리자 목록 띄우기
	@RequestMapping("adminList.do")
	public void getAdminList(HashMap map,Model model) {	
		model.addAttribute("adminList",adminService.getAdminList(map));
	}
	// 회원 목록 띄우기
	@RequestMapping("adUserList.do")
	public void getUserList(Model model) {	
		model.addAttribute("userList",adminService.adGetUserList());
	}
	// 이벤트 목록 띄우기
	@RequestMapping("adEventList.do")
	public void getEventList(HashMap map,Model model) {	
		model.addAttribute("eventList",adminService.adGetEventList(map));
	}
	// 승인된 펀딩 목록
	@RequestMapping("adFdList.do")
	public void getFundingList(HashMap map,Model model) {
		model.addAttribute("fdList",adminService.adGetFdList(map));
	}
	
	// 승인되지 않은 펀딩 목록
	
}
