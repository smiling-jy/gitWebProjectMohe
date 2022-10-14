package com.project.mohe.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import com.project.mohe.service.BongsaService;
import com.project.mohe.service.DonationService;
import com.project.mohe.service.EventService;
import com.project.mohe.service.Funding_pjService;
import com.project.mohe.service.NoticeService;
import com.project.mohe.service.PagingService;
import com.project.mohe.service.PartnerService;
import com.project.mohe.service.PopupService;
import com.project.mohe.service.ReviewService;
import com.project.mohe.service.UserInfoService;

@Controller
@RequestMapping("/admin/")
public class AdminController {
	@Autowired
	private AdminService adminService;
	@Autowired
	private PagingService pagingService;
	@Autowired
	private DonationService donationService;
	@Autowired
	private PopupService popupService;
	@Autowired
	private UserInfoService userInfoService;
	@Autowired
	private EventService eventService;
	@Autowired
	private NoticeService noticeService;
	@Autowired
	private PartnerService partnerService;
	@Autowired
	private Funding_pjService funding_pjService;
	@Autowired
	private BongsaService bongsaService;
	@Autowired
	private ReviewService reviewService;
	
	// 관리자 화면 자동이동을 위한 메소드
	@RequestMapping("{step}.do")
	public String viewPage(@PathVariable String step,HttpServletRequest request) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(request.getSession().getAttribute("adm_no") == null) return "/admin/adminLogin";
		return "/admin/"+step;
	}
	// 관리자 목록 띄우기
	@RequestMapping("adminList.do")
	public String getAdminList(PagingVO vo,Model model,HttpServletRequest request) {	
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(request.getSession().getAttribute("adm_no") == null) return "/admin/adminLogin";
		// 페이징을 위한 테이블 행값 받아오기
		vo.setTotalRecCount(adminService.getAllcnt(vo).getTotalRecCount());
		// 페이징 처리 
		vo = pagingService.doPaging(vo);
		// 페이지값 저장하기
		model.addAttribute("page",vo);
		// 페이징을 토대로한 리스트 목록 불러오기
		model.addAttribute("adminList",adminService.getAdminList(vo));
		return "/admin/adminList";
	}
	// 관리자 상세 목록 띄우기
	@RequestMapping("adminDetail.do")
	public String getAdminDetail(AdminVO vo,Model model,HttpServletRequest request) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(request.getSession().getAttribute("adm_no") == null) return "/admin/adminLogin";
		model.addAttribute("admin",adminService.getAdminDetail(vo));
		return "/admin/adminDetail";
	}
	// 관리자 로그인 확인
	@RequestMapping("getAdminLogin.do")
	public String adminLogin(AdminVO vo,HttpServletRequest request) {
		// 아이디와 비밀번호가 맞아서 값이 비어있지 않다면
		if(adminService.adminLogin(vo) != null) {
			HttpSession session = request.getSession();
			session.setAttribute("adm_no", vo.getAdm_no());
			return "redirect:/admin/adminMain.do"; 
		}
		// 아이디와 비밀번호 값이 다르면 false값 전달
		return "redirect:/admin/adminLogin.do?result=false"; 
	}
	// 관리자 로그아웃
	@RequestMapping("adminLogout.do")
	public String adminLogout(HttpServletRequest request) {
		if(request.getSession().getAttribute("adm_no") != null) {
			request.getSession().invalidate();
		}
		return "redirect:/admin/adminLogin.do";
	}
	// 회원 목록 띄우기
	@RequestMapping("adUserList.do")
	public String getUserList(PagingVO vo,Model model,HttpServletRequest request) {	
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(request.getSession().getAttribute("adm_no") == null) return "/admin/adminLogin";
		// 페이징을 위한 테이블 행값 받아오기
		vo.setTotalRecCount(userInfoService.getAllcnt(vo).getTotalRecCount());
		// 페이징 처리 
		vo = pagingService.doPaging(vo);
		// 페이지값 저장하기
		model.addAttribute("page",vo);
		// 페이징을 토대로한 리스트 목록 불러오기
		model.addAttribute("userList",adminService.adGetUserList(vo));
		return "/admin/adUserList";
	}
	// 회원 상세 페이지
	@RequestMapping("adUserDetail.do")
	public String adUserDetail(Model model,UserInfoVO vo,HttpServletRequest request) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(request.getSession().getAttribute("adm_no") == null) return "/admin/adminLogin";	
		// 유저의 정보와, 해당유저와 관련된 봉사,펀딩 정보도 함께 model에 저장해서 불러온다
		model.addAttribute("userDetail",adminService.adUserDetail(vo,model));
		return "/admin/adUserDetail";
	}
	// 회원 사용불가 전환하기
	@RequestMapping("userEnd.do")
	public String deleteUserInfo(UserInfoVO vo,HttpServletRequest request) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(request.getSession().getAttribute("adm_no") == null) return "/admin/adminLogin";
		// 회원탈퇴 날짜가 시스데이트로 업데이트됨
		adminService.deleteUserInfo(vo);
		return "redirect:/admin/adUserList.do";
	}
	// 회원 정보 수정페이지로 이동하기
	@RequestMapping("adUserUpdateInfo.do")
	public String adUserUpdateInfo(Model model,UserInfoVO vo,HttpServletRequest request) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(request.getSession().getAttribute("adm_no") == null) return "/admin/adminLogin";
		// 유저 데이터를 가져옴
		model.addAttribute("userDetail",adminService.adUserUpdateInfo(vo));
		return "/admin/adUserUpdateInfo";
	}
	// 회원 정보 수정하기
	@RequestMapping("adUserUpdate.do")
	public String adUserUpdate(UserInfoVO vo,HttpServletRequest request) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(request.getSession().getAttribute("adm_no") == null) return "/admin/adminLogin";
		// 
		return null;
	}
	// 이벤트 목록 띄우기
	@RequestMapping("adEventList.do")
	public String getEventList(PagingVO vo,Model model,HttpServletRequest request) {	
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(request.getSession().getAttribute("adm_no") == null) return "/admin/adminLogin";
		// 페이징을 위한 테이블 행값 받아오기
		vo.setTotalRecCount(eventService.getAllcnt(vo).getTotalRecCount());
		// 페이징 처리 
		vo = pagingService.doPaging(vo);
		// 페이지값 저장하기
		model.addAttribute("page",vo);
		// 페이징을 토대로한 리스트 목록 불러오기
		model.addAttribute("eventList",adminService.adGetEventList(vo));
		return "/admin/adEventList";
	}
	// 승인된 펀딩 목록
	@RequestMapping("adFdList.do")
	public String getFundingList(PagingVO vo,Model model,HttpServletRequest request) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(request.getSession().getAttribute("adm_no") == null) return "/admin/adminLogin";
		// 페이징을 위한 테이블 행값 받아오기
		vo.setTotalRecCount(funding_pjService.getAllcntOk(vo).getTotalRecCount());
		// 페이징 처리 
		vo = pagingService.doPaging(vo);
		// 페이지값 저장하기
		model.addAttribute("page",vo);
		// 페이징을 토대로한 리스트 목록 불러오기
		model.addAttribute("fdList",adminService.adGetFdList(vo)); 
		return "/admin/adFdList";
	}
	// 승인되지 않은 펀딩 목록
	@RequestMapping("adFdApproval.do")
	public String getFdApprovalList(PagingVO vo,Model model,HttpServletRequest request) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(request.getSession().getAttribute("adm_no") == null) return "/admin/adminLogin";
		// 페이징을 위한 테이블 행값 받아오기
		vo.setTotalRecCount(funding_pjService.getAllcntNo(vo).getTotalRecCount());
		// 페이징 처리 
		vo = pagingService.doPaging(vo);
		// 페이지값 저장하기
		model.addAttribute("page",vo);
		// 페이징을 토대로한 리스트 목록 불러오기
		model.addAttribute("fdApproval",adminService.getFdApprovalList(vo)); 
		return "/admin/adFdApproval";
	}
	// 펀딩 승인,비승인 업데이트
	@RequestMapping("judgBsUpdate.do")
	public String judgBsUpdate(BongsaVO vo,Model model,HttpServletRequest request) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(request.getSession().getAttribute("adm_no") == null) return "/admin/adminLogin";
		//bs_judg 변수를 이용해 승인인지, 비승인인지 service에서 판단후 업데이트 
		adminService.judgBsUpdate(vo);
		return "redirect:/admin/adFdApproval.do";
	}
	// 승인된 봉사 목록
	@RequestMapping("adVtList.do")
	public String getBsList(PagingVO vo,Model model,HttpServletRequest request) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(request.getSession().getAttribute("adm_no") == null) return "/admin/adminLogin";
		model.addAttribute("bsList",adminService.getBsList(vo)); 
		return "/admin/adVtList";
	}
	// 승인되지 않은 봉사 목록
	@RequestMapping("adVtApproval.do")
	public String getBsApprovalList(PagingVO vo,Model model,HttpServletRequest request) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(request.getSession().getAttribute("adm_no") == null) return "/admin/adminLogin";
		model.addAttribute("bsApproval",adminService.getBsApprovalList(vo)); 
		return "/admin/adVtApproval";
	}
	// 펀딩 승인,비승인 업데이트
	@RequestMapping("judgFdUpdate.do")
	public String judgFdUpdate(Funding_pjVO vo,Model model,HttpServletRequest request) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(request.getSession().getAttribute("adm_no") == null) return "/admin/adminLogin";
		//fd_judg 변수를 이용해 승인인지, 비승인인지 service에서 판단후 업데이트 
		adminService.judgFdUpdate(vo);
		return "redirect:/admin/adFdApproval.do";
	}
	// 파트너쉽 목록
	@RequestMapping("adPartnerList.do")
	public String getPartnerList(PagingVO vo,Model model,HttpServletRequest request) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(request.getSession().getAttribute("adm_no") == null) return "/admin/adminLogin";
		// 페이징을 위한 테이블 행값 받아오기
		vo.setTotalRecCount(partnerService.getAllcnt(vo).getTotalRecCount());
		// 페이징 처리 
		vo = pagingService.doPaging(vo);
		// 페이지값 저장하기
		model.addAttribute("page",vo);
		// 페이징을 토대로한 리스트 목록 불러오기
		model.addAttribute("partner",adminService.getPartnerList(vo)); 
		return "/admin/adPartnerList";
	}
	// 리뷰 목록
	@RequestMapping("adReviewList.do")
	public String getReviewList(PagingVO vo,Model model,HttpServletRequest request) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(request.getSession().getAttribute("adm_no") == null) return "/admin/adminLogin";
		model.addAttribute("review",adminService.getReviewList(vo)); 
		return "/admin/adReviewList";
	}
	// 기부 목록
	@RequestMapping("adDonationList.do")
	public String getDonationList(PagingVO vo,Model model,HttpServletRequest request) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(request.getSession().getAttribute("adm_no") == null) return "/admin/adminLogin";
		// 페이징을 위한 테이블 행값 받아오기
		vo.setTotalRecCount(donationService.getAllcnt(vo).getTotalRecCount());
		// 페이징 처리 
		vo = pagingService.doPaging(vo);
		// 페이지값 저장하기
		model.addAttribute("page",vo);
		// 페이징을 토대로한 리스트 목록 불러오기
		model.addAttribute("donation",adminService.getDonationList(vo)); 
		return "/admin/adDonationList";
	}
	// 공지 리스트
	@RequestMapping("adNotice.do")
	public String getNoticeList(PagingVO vo,Model model,HttpServletRequest request) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(request.getSession().getAttribute("adm_no") == null) return "/admin/adminLogin";
		// 페이징을 위한 테이블 행값 받아오기
		vo.setTotalRecCount(noticeService.getAllcnt(vo).getTotalRecCount());
		// 페이징 처리 
		vo = pagingService.doPaging(vo);
		// 페이지값 저장하기
		model.addAttribute("page",vo);
		// 페이징을 토대로한 리스트 목록 불러오기
		model.addAttribute("notice",adminService.getNoticeList(vo)); 
		return "/admin/adNotice";
	}
	// 팝업 리스트
	@RequestMapping("adPopList.do")
	public String getPopupList(PagingVO vo,Model model,HttpServletRequest request) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(request.getSession().getAttribute("adm_no") == null) return "/admin/adminLogin";
		// 페이징을 위한 테이블 행값 받아오기
		vo.setTotalRecCount(popupService.getAllcnt(vo).getTotalRecCount());
		// 페이징 처리 
		vo = pagingService.doPaging(vo);
		// 페이지값 저장하기
		model.addAttribute("page",vo);
		// 페이징을 토대로한 리스트 목록 불러오기
		model.addAttribute("popup",adminService.getPopupList(vo)); 
		return "/admin/adPopList";
	}

	
	// 관리자 사용불가 전환하기
	@RequestMapping("adminEnd.do")
	public String deleteAdmin(AdminVO vo,HttpServletRequest request) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(request.getSession().getAttribute("adm_no") == null) return "/admin/adminLogin";
		// 퇴사일이 시스데이트로 업데이트됨
		adminService.deleteAdmin(vo);
		return "redirect:/admin/adminList.do";
	}
	
	// 관리자 수정페이지 이동하기
	@RequestMapping("adminUpdateInfo.do")
	public String adminUpdateInfo(AdminVO vo,Model model,HttpServletRequest request) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(request.getSession().getAttribute("adm_no") == null) return "/admin/adminLogin";
		// 퇴사일이 시스데이트로 업데이트됨
		model.addAttribute("admin",adminService.getAdminDetail(vo));
		return "/admin/adminUpdateInfo";
	}
	
	// 관리자정보 수정하기
	@RequestMapping("updateAdmin.do")
	public String updateAdmin(AdminVO vo,HttpServletRequest request) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(request.getSession().getAttribute("adm_no") == null) return "/admin/adminLogin";
		adminService.updateAdmin(vo);
		return "redirect:/admin/adminDetail.do?adm_no="+vo.getAdm_no();
	}
	
	
}
