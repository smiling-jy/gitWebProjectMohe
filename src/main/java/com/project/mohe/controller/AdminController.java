package com.project.mohe.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.mohe.domain.AdminVO;
import com.project.mohe.domain.BongsaVO;
import com.project.mohe.domain.Funding_pjVO;
import com.project.mohe.domain.PagingVO;
import com.project.mohe.domain.UserInfoVO;
import com.project.mohe.service.AdminService;
import com.project.mohe.service.PagingService;

@Controller
@RequestMapping("/admin/")
public class AdminController {
	@Autowired
	private AdminService adminService;
	@Autowired
	private PagingService pagingService;
	
	// 관리자 화면 자동이동을 위한 메소드
	@RequestMapping("{step}.do")
	public String viewPage(@PathVariable String step) {
		return "/admin/"+step;
	}
	// 관리자 목록 띄우기
	@RequestMapping("adminList.do")
	public void getAdminList(PagingVO vo,HashMap map,Model model) {	
		// 페이징을 위한 테이블 행값 받아오기
		vo.setTotalRecCount(adminService.getAllcnt().getTotalRecCount());
		// 페이징 처리 
		vo = pagingService.doPaging(vo);
		// 페이지값 저장하기
		model.addAttribute("page",vo);
		// 페이징을 토대로한 리스트 목록 불러오기
		model.addAttribute("adminList",adminService.getAdminList(vo,map,model));
	}
	// 관리자 상세 목록 띄우기
	@RequestMapping("adminDetail.do")
	public void getAdminDetail(AdminVO vo,Model model) {
		model.addAttribute("admin",adminService.getAdminDetail(vo));
	}
	// 회원 목록 띄우기
	@RequestMapping("adUserList.do")
	public void getUserList(HashMap map,Model model) {	
		model.addAttribute("userList",adminService.adGetUserList(map));
	}
	// 회원 상세 페이지
	@RequestMapping("adUserDetail.do")
	public void adUserDetail(HashMap map,Model model,UserInfoVO vo) {	
		model.addAttribute("userDetail",adminService.adUserDetail(vo));
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
	// 펀딩 승인,비승인 업데이트
	@RequestMapping("judgBsUpdate.do")
	public String judgBsUpdate(BongsaVO vo,Model model) {
		//bs_judg 변수를 이용해 승인인지, 비승인인지 service에서 판단후 업데이트 
		adminService.judgBsUpdate(vo);
		return "redirect:/admin/adFdApproval.do";
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
	// 펀딩 승인,비승인 업데이트
	@RequestMapping("judgFdUpdate.do")
	public String judgFdUpdate(Funding_pjVO vo,Model model) {
		//fd_judg 변수를 이용해 승인인지, 비승인인지 service에서 판단후 업데이트 
		adminService.judgFdUpdate(vo);
		return "redirect:/admin/adFdApproval.do";
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

	
	// 관리자 사용불가 전환하기
	@RequestMapping("adminEnd.do")
	public String deleteAdmin(AdminVO vo) {
		// 퇴사일이 시스데이트로 업데이트됨
		adminService.deleteAdmin(vo);
		return "redirect:/admin/adminList.do";
	}
	
	// 관리자 수정페이지 이동하기
	@RequestMapping("adminUpdateInfo.do")
	public void adminUpdateInfo(AdminVO vo,Model model) {
		// 퇴사일이 시스데이트로 업데이트됨
		model.addAttribute("admin",adminService.getAdminDetail(vo));
	}
	
	// 관리자정보 수정하기
	@RequestMapping("updateAdmin.do")
	public String updateAdmin(AdminVO vo) {
		adminService.updateAdmin(vo);
		return "redirect:/admin/adminDetail.do?adm_no="+vo.getAdm_no();
	}
	
	
}
