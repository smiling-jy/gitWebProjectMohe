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
	public void getUserList(HashMap map,Model model) {	
		model.addAttribute("userList",adminService.adGetUserList(map));
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
	@RequestMapping("adFdApproval.do")
	public void getFdApprovalList(HashMap map,Model model) {
		model.addAttribute("fdApproval",adminService.getFdApprovalList(map)); 
	}
	// 승인된 봉사 목록
	@RequestMapping("adVtList.do")
	public void getBsList(HashMap map,Model model) {
		model.addAttribute("bsList",adminService.getBsList(map)); 
	}
	// 승인되지 않은 봉사 목록
	@RequestMapping("adVtApproval.do")
	public void getBsApprovalList(HashMap map,Model model) {
		model.addAttribute("bsApproval",adminService.getBsApprovalList(map)); 
	}
	// 파트너쉽 목록
	@RequestMapping("adPartnerList.do")
	public void getPartnerList(HashMap map,Model model) {
		model.addAttribute("partner",adminService.getPartnerList(map)); 
	}
	// 리뷰 목록
	@RequestMapping("adReviewList.do")
	public void getReviewList(HashMap map,Model model) {
		model.addAttribute("review",adminService.getReviewList(map)); 
	}
	// 기부 목록
	@RequestMapping("adDonationList.do")
	public void getDonationList(HashMap map,Model model) {
		model.addAttribute("donation",adminService.getDonationList(map)); 
	}
	// 공지 리스트
	@RequestMapping("adNotice.do")
	public void getNoticeList(HashMap map,Model model) {
		model.addAttribute("notice",adminService.getNoticeList(map)); 
	}
	// 팝업 리스트
	@RequestMapping("adPopList.do")
	public void getPopupList(HashMap map,Model model) {
		model.addAttribute("popup",adminService.getPopupList(map)); 
	}
}
