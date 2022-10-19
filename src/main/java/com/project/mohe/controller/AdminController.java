package com.project.mohe.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.mohe.domain.AdminVO;
import com.project.mohe.domain.BongsaVO;
import com.project.mohe.domain.DonationVO;
import com.project.mohe.domain.Funding_pjVO;
import com.project.mohe.domain.NoticeVO;
import com.project.mohe.domain.PagingVO;
import com.project.mohe.domain.PartnerVO;
import com.project.mohe.domain.PopupVO;
import com.project.mohe.domain.ReviewVO;
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
	public String viewPage(@PathVariable String step,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		return "/admin/"+step;
	}
	// 관리자 메인화면 띄우기
	@RequestMapping("adminMain.do")
	public String viewMain(Model model,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		// status 정보 불러오기
		model.addAttribute("status",adminService.getStatus());
		return "/admin/adminMain";
	}
	// 관리자 목록 띄우기
	@RequestMapping("adminList.do")
	public String getAdminList(PagingVO vo,Model model,HttpSession session) {	
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
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
	public String getAdminDetail(AdminVO vo,Model model,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		model.addAttribute("admin",adminService.getAdminDetail(vo));
		return "/admin/adminDetail";
	}
	// 관리자 로그인 확인
	@RequestMapping("getAdminLogin.do")
	public String adminLogin(AdminVO vo,HttpSession session) {
		// 아이디와 비밀번호가 맞아서 값이 비어있지 않다면
		vo = adminService.adminLogin(vo);
		if(vo != null) {
			session.setAttribute("adm_no", vo.getAdm_no());
			return "redirect:/admin/adminMain.do"; 
		}
		// 아이디와 비밀번호 값이 다르면 false값 전달
		return "redirect:/admin/adminLogin.do?result=false"; 
	}
	// 관리자 로그아웃
	@RequestMapping("adminLogout.do")
	public String adminLogout(HttpSession session) {
		if(session.getAttribute("adm_no") != null) {
			session.invalidate();
		}
		return "redirect:/admin/adminLogin.do";
	}
	// 회원 목록 띄우기
	@RequestMapping("adUserList.do")
	public String getUserList(PagingVO vo,Model model,HttpSession session) {	
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
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
	public String adUserDetail(Model model,UserInfoVO vo,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		// 유저의 정보와, 해당유저와 관련된 봉사,펀딩 정보도 함께 model에 저장해서 불러온다
		model.addAttribute("userDetail",adminService.adUserDetail(vo,model));
		return "/admin/adUserDetail";
	}
	// 회원 사용불가 전환하기
	@RequestMapping("userEnd.do")
	public String deleteUserInfo(UserInfoVO vo,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		// 회원탈퇴 날짜가 시스데이트로 업데이트됨
		adminService.deleteUserInfo(vo);
		return "redirect:/admin/adUserList.do";
	}
	// 회원 정보 수정페이지로 이동하기
	@RequestMapping("adUserUpdateInfo.do")
	public String adUserUpdateInfo(Model model,UserInfoVO vo,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		// 유저 데이터를 가져옴
		model.addAttribute("userDetail",adminService.getUserInfo(vo));
		return "/admin/adUserUpdateInfo";
	}
	// 회원 정보 수정하기
	@RequestMapping("adUserUpdate.do")
	public String adUserUpdate(UserInfoVO vo,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		// 등급,연락처,주소만 수정가능
		adminService.adUserUpdateInfo(vo);
		return "redirect:/admin/adUserDetail.do?user_no="+vo.getUser_no();
	}
	// 이벤트 목록 띄우기
	@RequestMapping("adEventList.do")
	public String getEventList(PagingVO vo,Model model,HttpSession session) {	
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
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
	public String getFundingList(PagingVO vo,Model model,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
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
	public String getFdApprovalList(PagingVO vo,Model model,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
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
	@RequestMapping("judgFdUpdate.do")
	public String judgFdUpdate(Funding_pjVO vo,Model model,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		//fd_judg 변수를 이용해 승인인지, 비승인인지 service에서 판단후 업데이트 
		adminService.judgFdUpdate(vo);
		return "redirect:/admin/adFdApproval.do";
	}
	// 봉사 승인,비승인 업데이트
	@RequestMapping("judgBsUpdate.do")
	public String judgBsUpdate(BongsaVO vo,Model model,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		//bs_judg 변수를 이용해 승인인지, 비승인인지 service에서 판단후 업데이트 
		adminService.judgBsUpdate(vo);
		return "redirect:/admin/adBsApproval.do";
	}
	// 승인된 봉사 목록
	@RequestMapping("adBsList.do")
	public String getBsList(PagingVO vo,Model model,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		// 페이징을 위한 테이블 행값 받아오기
		vo.setTotalRecCount(bongsaService.getAllcntOk(vo).getTotalRecCount());
		// 페이징 처리 
		vo = pagingService.doPaging(vo);
		// 페이지값 저장하기
		model.addAttribute("page",vo);
		// 페이징을 토대로한 리스트 목록 불러오기
		model.addAttribute("bsList",adminService.getAdBsList(vo)); 
		return "/admin/adBsList";
	}
	// 승인되지 않은 봉사 목록
	@RequestMapping("adBsApproval.do")
	public String getBsApprovalList(PagingVO vo,Model model,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		// 페이징을 위한 테이블 행값 받아오기
		vo.setTotalRecCount(bongsaService.getAllcntNo(vo).getTotalRecCount());
		// 페이징 처리 
		vo = pagingService.doPaging(vo);
		// 페이지값 저장하기
		model.addAttribute("page",vo);
		// 페이징을 토대로한 리스트 목록 불러오기
		model.addAttribute("bsApproval",adminService.getAdBsApprovalList(vo)); 
		return "/admin/adBsApproval";
	}

	// 파트너쉽 목록
	@RequestMapping("adPartnerList.do")
	public String getPartnerList(PagingVO vo,Model model,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
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
	// 파트너쉽 등록하기 
	@RequestMapping("adPartnerInsert.do")
	public String adPartnerInsert(PartnerVO vo,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		//임시 파트너 이미지 이름을 적용
		vo.setPartner_logo("partner"+vo.getPartner_no());
		// vo로 받아온 정보를 db에 저장한다 
		adminService.adPartnerInsert(vo);
		return "redirect:/admin/adPartnerList.do";
	}
	// 파트너쉽 상세보기 
	@RequestMapping("adPartnerDetail.do")
	public String adPartnerDetail(PartnerVO vo,HttpSession session,Model model) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		model.addAttribute("partner",adminService.adGetPartner(vo));
		return "/admin/adPartnerDetail";
	}
	// 파트너쉽 수정 페이지 이동
	@RequestMapping("adPartnerUpdateInfo.do")
	public String adPartnerUpdateInfo(PartnerVO vo,HttpSession session,Model model) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		model.addAttribute("partner",adminService.adGetPartner(vo));
		return "/admin/adPartnerUpdateInfo";
	}
	// 파트너쉽 수정 하기
	@RequestMapping("adPartnerUpdate.do")
	public String adPartnerUpdate(PartnerVO vo,HttpSession session,Model model) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		adminService.adPartnerUpdate(vo);
		return "redirect:/admin/adPartnerDetail.do?partner_no="
				+ ""+vo.getPartner_no();
	}
	// 파트너쉽 삭제하기
	@RequestMapping("adDeletePartner.do")
	public String adDeletePartner(PartnerVO vo,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		adminService.adDeletePartner(vo);
		return "redirect:/admin/adPartnerList.do";
	}
	// 리뷰 목록
	@RequestMapping("adReviewList.do")
	public String getReviewList(PagingVO vo,Model model,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		// 페이징을 위한 테이블 행값 받아오기
		vo.setTotalRecCount(reviewService.getAllcnt(vo).getTotalRecCount());
		// 페이징 처리 
		vo = pagingService.doPaging(vo);
		// 페이지값 저장하기
		model.addAttribute("page",vo);
		// 페이징을 토대로한 리스트 목록 불러오기
		model.addAttribute("review",adminService.getReviewList(vo)); 
		return "/admin/adReviewList";
	}
	// 리뷰 상세페이지
	@RequestMapping("adReviewDetail.do")
	public String adReviewDetail(ReviewVO vo,Model model,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		// 해당 리뷰의 no를 넘겨받아 상세조회
		model.addAttribute("review",adminService.getReview(vo));
		return "/admin/adReviewDetail";
	}
	//리뷰 삭제하기
	@RequestMapping("adDeleteReview.do")
	public String adDeleteReview(ReviewVO vo,Model model,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		// 해당 리뷰의 no를 넘겨받아 삭제
		adminService.adDeleteReview(vo);
		return "redirect:/admin/adReviewList.do";
	}
	// 기부 목록
	@RequestMapping("adDonationList.do")
	public String getDonationList(PagingVO vo,Model model,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
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
	// 기부리스트 확인 기능
	@RequestMapping("donationOk.do")
	public String donationOk(DonationVO vo,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		// 해당 no번호를 가진 기부 데이터를 확인해서 메인에 보이도록 함 
		adminService.donationOk(vo);
		return "redirect:/admin/adDoantionList.do";
	}
	// 공지 리스트
	@RequestMapping("adNotice.do")
	public String getNoticeList(PagingVO vo,Model model,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
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
	// 공지 삭제하기 
	@RequestMapping("deleteNotice.do")
	public String deleteNotice(NoticeVO vo,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		// no를 받아와서 해당 공지 삭제하기
		adminService.deleteNotice(vo);
		return "redirect:/admin/adNotice.do";
	}
	// 공지 상세페이지
	@RequestMapping("adNoticeDetail.do")
	public String adNoticeDetail(NoticeVO vo,HttpSession session,Model model) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		// no를 받아와서 상세 정보를 띄움
		model.addAttribute("notice",adminService.adNoticeDetail(vo));
		return "/admin/adNoticeDetail";
	}
	// 공지 수정페이지로 이동
	@RequestMapping("adNoticeUpdateInfo.do")
	public String adNoticeUpdateInfo(NoticeVO vo,HttpSession session,Model model) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		// no를 받아와서 상세 정보를 띄움
		model.addAttribute("notice",adminService.adNoticeDetail(vo));
		return "/admin/adNoticeUpdateInfo";
	}
	// 공지 수정하기
	@RequestMapping("adNoticeUpdate.do")
	public String adNoticeUpdate(NoticeVO vo,HttpSession session,Model model) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		// no를 받아와서 해당 공지 정보를 수정함
		adminService.adNoticeUpdate(vo);
		return "redirect:/admin/adNoticeDetail.do?notice_no="+vo.getNotice_no();
	}
	// 공지 추가하기
	@RequestMapping("adNoticeInsert.do")
	public String adNoticeInsert(NoticeVO vo,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		// 관리자 정보를 vo에 저장
		vo.setAdm_no((Integer)session.getAttribute("adm_no"));
		// 새로운 공지 등록
		adminService.adNoticeInsert(vo);
		return"redirect:/admin/adNotice.do";
	}
	// 팝업 리스트
	@RequestMapping("adPopList.do")
	public String getPopupList(PagingVO vo,Model model,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
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
	//팝업삭제
	@RequestMapping("adDeletePopup.do")
	public String adDeletePopup(PopupVO vo,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		adminService.adDeletePopup(vo);
		return "redirect:/admin/adPopList.do";
	}
	//팝업 상세보기
	@RequestMapping("adPopupDetail.do")
	public String adPopupDetail(PopupVO vo,HttpSession session,Model model) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		// pop_no로 상세 조회하기
		model.addAttribute("pop",adminService.adPopupDetail(vo));
		return "/admin/adPopupDetail";
	}
	//팝업 수정하기 페이지 이동
	@RequestMapping("adPopupUpdateInfo.do")
	public String adPopupUpdateInfo(PopupVO vo,HttpSession session,Model model) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		// pop_no로 상세 조회하기
		model.addAttribute("pop",adminService.adPopupDetail(vo));
		return "/admin/adPopupUpdateInfo";
	}
	//팝업 수정하기 
	@RequestMapping("adPopupUpdate.do")
	public String adPopupUpdate(PopupVO vo,HttpSession session,Model model) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		vo.setPop_img("popupIMG");
		// vo데이터를 받아와서 수정
		adminService.adPopupUpdate(vo);
		// 프로젝트 번호를 폴더명으로 받아옴
		String folder_name = vo.getPop_no() + "";
		// 이미지 명을 pk 로 받음
		// 타이틀 이미지 있는지 확인하는 조건문
		if (!vo.getTitle_img().isEmpty()) {

			// 2. 폴더 생성			
			Path directoryPath = Paths.get("C:/Users/human/git/gitWebProjectMohe/src/main/webapp/resources/files/popup/"+folder_name);

			try {
				// 폴더 생성 메소드
				Files.createDirectories(directoryPath);
				System.out.println(directoryPath + " 디렉토리가 생성되었습니다.");

			} catch (IOException e) {
				e.printStackTrace();
			}

			// 타이틀 이미지 저장
			String fname = vo.getTitle_img().getOriginalFilename();
			String fileExtension = fname.substring(fname.lastIndexOf("."));
			File f = new File("C:/Users/human/git/gitWebProjectMohe/src/main/webapp/resources/files/popup/"+folder_name + "/" + "popupIMG" + fileExtension);

			try {
				// 파일저장 메소드
				vo.getTitle_img().transferTo(f);
				System.out.println(" 타이틀 이미지 파일이 저장되었습니다");

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} // if_end
		return "redirect:/admin/adPopList.do";
	}
	// 팝업 추가
	@RequestMapping("adPopupInsert.do")
	public String adPopupInsert(PopupVO vo,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		vo.setPop_img("popupIMG");
		// DB저장
		// form에서 받아온 정보를 db에 저장, pop_no를 불러옴
		adminService.adPopupInsert(vo);
		// 프로젝트 번호를 폴더명으로 받아옴
		String folder_name = vo.getPop_no() + "";
		// 이미지 명을 pk 로 받음
		// 타이틀 이미지 있는지 확인하는 조건문
		if (!vo.getTitle_img().isEmpty()) {

			// 2. 폴더 생성			
			Path directoryPath = Paths.get("C:/Users/human/git/gitWebProjectMohe/src/main/webapp/resources/files/popup/"+folder_name);

			try {
				// 폴더 생성 메소드
				Files.createDirectories(directoryPath);
				System.out.println(directoryPath + " 디렉토리가 생성되었습니다.");

			} catch (IOException e) {
				e.printStackTrace();
			}

			// 타이틀 이미지 저장
			String fname = vo.getTitle_img().getOriginalFilename();
			String fileExtension = fname.substring(fname.lastIndexOf("."));
			File f = new File("C:/Users/human/git/gitWebProjectMohe/src/main/webapp/resources/files/popup/"+folder_name + "/" + "popupIMG" + fileExtension);

			try {
				// 파일저장 메소드
				vo.getTitle_img().transferTo(f);
				System.out.println(" 타이틀 이미지 파일이 저장되었습니다");

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} // if_end
		return "redirect:/admin/adPopList.do";
	}
	
	// 관리자 사용불가 전환하기
	@RequestMapping("adminEnd.do")
	public String deleteAdmin(AdminVO vo,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		// 퇴사일이 시스데이트로 업데이트됨
		adminService.deleteAdmin(vo);
		return "redirect:/admin/adminList.do";
	}
	
	// 관리자 수정페이지 이동하기
	@RequestMapping("adminUpdateInfo.do")
	public String adminUpdateInfo(AdminVO vo,Model model,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		// 퇴사일이 시스데이트로 업데이트됨
		model.addAttribute("admin",adminService.getAdminDetail(vo));
		return "/admin/adminUpdateInfo";
	}
	
	// 관리자정보 수정하기
	@RequestMapping("updateAdmin.do")
	public String updateAdmin(AdminVO vo,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		adminService.updateAdmin(vo);
		return "redirect:/admin/adminDetail.do?adm_no="+vo.getAdm_no();
	}
	
	
}
