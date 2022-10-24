package com.project.mohe.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.mohe.domain.AdminVO;
import com.project.mohe.domain.BongsaVO;
import com.project.mohe.domain.DonationVO;
import com.project.mohe.domain.EmailVO;
import com.project.mohe.domain.EventVO;
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
	@Autowired
	ServletContext servletContext;
	
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
		// user_no를 이름으로 사용
		String folder_name = vo.getUser_no() + "";
		// 이미지 명을 pk 로 받음
		// 타이틀 이미지 있는지 확인하는 조건문
		if (!vo.getUser_img_file().isEmpty()) {

			// 2. 폴더 생성			
			Path directoryPath = Paths.get("C:/Users/human/git/gitWebProjectMohe/src/main/webapp/resources/files/user/"+folder_name);

			try {
				// 폴더 생성 메소드
				Files.createDirectories(directoryPath);
				System.out.println(directoryPath + " 디렉토리가 생성되었습니다.");

			} catch (IOException e) {
				e.printStackTrace();
			}

			// 타이틀 이미지 저장
			String fname = vo.getUser_img_file().getOriginalFilename();
			String fileExtension = fname.substring(fname.lastIndexOf(".")).toLowerCase();;
			File f = new File("C:/Users/human/git/gitWebProjectMohe/src/main/webapp/resources/files/user/"+folder_name + "/" + "userIMG" + fileExtension);

			try {
				// 파일저장 메소드
				vo.getUser_img_file().transferTo(f);
				System.out.println(" 타이틀 이미지 파일이 저장되었습니다");

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} // if_end
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
	// 이벤트 삭제하기
	@RequestMapping("adDeleteEvent.do")
	public String adDeleteEvent(EventVO vo,HttpSession session) {	
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		// event_no값을 받아와서 해당 이벤트 데이터를 지우기
		adminService.adDeleteEvent(vo);
		return "redirect:/admin/adEventList.do";
	}
	// 이벤트 상세보기
	@RequestMapping("adEventDetail.do")
	public String adEventDetail(EventVO vo,HttpSession session,Model model) {	
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		// event_no값을 받아와서 해당 이벤트 데이터 가져오기
		model.addAttribute("event",adminService.adGetEvent(vo));
		return "/admin/adEventDetail";
	}
	// 이벤트 수정페이지 이동
	@RequestMapping("adEventUpdateInfo.do")
	public String adEventUpdateInfo(EventVO vo,HttpSession session,Model model) {	
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		// event_no값을 받아와서 해당 이벤트 데이터 가져오기
		model.addAttribute("event",adminService.adGetEvent(vo));
		return "/admin/adEventUpdateInfo";
	}
	// 이벤트 수정하기
	@RequestMapping("adEventUpdate.do")
	public String adEventUpdate(EventVO vo,HttpSession session,Model model) {	
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		// event_no값을 받아와서 해당 이벤트 데이터 가져오기
		adminService.adEventUpdate(vo);
		// 프로젝트 번호를 폴더명으로 받아옴
		String folder_name = vo.getEvent_no() + "";
		// 폴더 이름을 pk 로 받음
		// 타이틀 이미지 있는지 확인하는 조건문
		if (!vo.getTitle_img().isEmpty()) {

			// 2. 폴더 생성			
			Path directoryPath = Paths.get("C:/Users/human/git/gitWebProjectMohe/src/main/webapp/resources/files/event/title/"+folder_name);

			try {
				// 폴더 생성 메소드
				Files.createDirectories(directoryPath);
				System.out.println(directoryPath + " 디렉토리가 생성되었습니다.");

			} catch (IOException e) {
				e.printStackTrace();
			}

			// 타이틀 이미지 저장
			String fname = vo.getTitle_img().getOriginalFilename();
			String fileExtension = fname.substring(fname.lastIndexOf(".")).toLowerCase();;
			File f = new File("C:/Users/human/git/gitWebProjectMohe/src/main/webapp/resources/files/event/title/"+folder_name + "/" + "eventTitleIMG" + fileExtension);

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
		// 메인이미지 있는지 확인하기
		if (!vo.getMain_img().isEmpty()) {
			
			// 2. 폴더 생성			
			Path directoryPath = Paths.get("C:/Users/human/git/gitWebProjectMohe/src/main/webapp/resources/files/event/main/"+folder_name);
			
			try {
				// 폴더 생성 메소드
				Files.createDirectories(directoryPath);
				System.out.println(directoryPath + " 디렉토리가 생성되었습니다.");
				
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			// 타이틀 이미지 저장
			String fname = vo.getMain_img().getOriginalFilename();
			String fileExtension = fname.substring(fname.lastIndexOf(".")).toLowerCase();;
			File f = new File("C:/Users/human/git/gitWebProjectMohe/src/main/webapp/resources/files/event/main/"+folder_name + "/" + "eventMainIMG" + fileExtension);
			
			try {
				// 파일저장 메소드
				vo.getMain_img().transferTo(f);
				System.out.println(" 타이틀 이미지 파일이 저장되었습니다");
				
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} // if_end
		return "redirect:/admin/adEventList.do";
	}
	// 이벤트 추가하기
	@RequestMapping("adEventInsert.do")
	public String adEventInsert(EventVO vo,HttpSession session) {	
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		// 로그인한 관리자의 no를 담은 이벤트 vo값을 form에서 받아와서 db에 저장 
		vo.setAdm_no((int)session.getAttribute("adm_no"));
		adminService.adEventInsert(vo);
		// 프로젝트 번호를 폴더명으로 받아옴
		String folder_name = vo.getEvent_no() + "";
		// 폴더 이름을 pk 로 받음
		// 타이틀 이미지 있는지 확인하는 조건문
		if (!vo.getTitle_img().isEmpty()) {

			// 2. 폴더 생성			
			Path directoryPath = Paths.get("C:/Users/human/git/gitWebProjectMohe/src/main/webapp/resources/files/event/title/"+folder_name);

			try {
				// 폴더 생성 메소드
				Files.createDirectories(directoryPath);
				System.out.println(directoryPath + " 디렉토리가 생성되었습니다.");

			} catch (IOException e) {
				e.printStackTrace();
			}

			// 타이틀 이미지 저장
			String fname = vo.getTitle_img().getOriginalFilename();
			String fileExtension = fname.substring(fname.lastIndexOf(".")).toLowerCase();;
			File f = new File("C:/Users/human/git/gitWebProjectMohe/src/main/webapp/resources/files/event/title/"+folder_name + "/" + "eventTitleIMG" + fileExtension);

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
		// 메인이미지 있는지 확인하기
		if (!vo.getMain_img().isEmpty()) {
			
			// 2. 폴더 생성			
			Path directoryPath = Paths.get("C:/Users/human/git/gitWebProjectMohe/src/main/webapp/resources/files/event/main/"+folder_name);
			
			try {
				// 폴더 생성 메소드
				Files.createDirectories(directoryPath);
				System.out.println(directoryPath + " 디렉토리가 생성되었습니다.");
				
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			// 타이틀 이미지 저장
			String fname = vo.getMain_img().getOriginalFilename();
			String fileExtension = fname.substring(fname.lastIndexOf(".")).toLowerCase();;
			File f = new File("C:/Users/human/git/gitWebProjectMohe/src/main/webapp/resources/files/event/main/"+folder_name + "/" + "eventMainIMG" + fileExtension);
			
			try {
				// 파일저장 메소드
				vo.getMain_img().transferTo(f);
				System.out.println(" 타이틀 이미지 파일이 저장되었습니다");
				
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} // if_end
		return "redirect:/admin/adEventList.do";
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
	// 승인대기 펀딩 상세보기
	@RequestMapping("adFdApprovalDetail.do")
	public String adFdApprovalDetail(Funding_pjVO vo,Model model,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		//no로 불러오기 
		model.addAttribute("apFd",adminService.getFdDetail(vo));
		return "/admin/adFdApprovalDetail";
	}
	// 펀딩 수정페이지 이동
	@RequestMapping("adFdUpdate.do")
	public String adFdUpdate(Funding_pjVO pj,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		// 새 파일이 있으면 숫자를 새로 받아옴
		if (pj.getFile().length != 0) {
			//파일의 갯수를 불러와서 read_cnt에 저장
			pj.setFd_read_cnt(pj.getFile().length);
		}
		// 수정 정보 저장
		adminService.adFdUpdate(pj);
		// 프로젝트 번호를 폴더명으로 받아옴
		String folder_name = pj.getFd_no() + "";

		// 타이틀 이미지 있는지 확인하는 조건문
		if (!pj.getTitle_img().isEmpty()) {

			// 2. 폴더 생성			
			Path directoryPath = Paths.get("C:/Users/human/git/gitWebProjectMohe/src/main/webapp/resources/files/funding/"+folder_name);

			try {
				// 폴더 생성 메소드
				Files.createDirectories(directoryPath);
				System.out.println(directoryPath + " 디렉토리가 생성되었습니다.");

			} catch (IOException e) {
				e.printStackTrace();
			}

			// 타이틀 이미지 저장
			String fname = pj.getTitle_img().getOriginalFilename();
			String fileExtension = fname.substring(fname.lastIndexOf(".")).toLowerCase();;
			File f = new File("C:/Users/human/git/gitWebProjectMohe/src/main/webapp/resources/files/funding/"+folder_name + "/" + "title" + fileExtension);

			try {
				// 파일저장 메소드
				pj.getTitle_img().transferTo(f);
				System.out.println(" 타이틀 이미지 파일이 저장되었습니다");

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {

				e.printStackTrace();
			}

			// 내용 이미지 배열 확인 조건문
			if (pj.getFile().length != 0) {

				// 배열을 담기 위한 반복문
				for (int i = 0; i < pj.getFile().length; i++) {

					fname = pj.getFile()[i].getOriginalFilename();
					fileExtension = fname.substring(fname.lastIndexOf("."));

					f = new File("C:/Users/human/git/gitWebProjectMohe/src/main/webapp/resources/files/funding/" + folder_name + "/" + i + fileExtension);

					try {
						// 파일저장
						pj.getFile()[i].transferTo(f);
						System.out.println(i + " 번 파일이 저장되었습니다");

					} catch (IllegalStateException e) {
						e.printStackTrace();
					} catch (IOException e) {

						e.printStackTrace();
					}
				} // for_end
			} // if_end
		} // if_end
		return "redirect:/admin/adFdList.do";
	}
	// 펀딩 수정페이지 이동
	@RequestMapping("adFdUpdateInfo.do")
	public String adFdUpdateInfo(Funding_pjVO vo,HttpSession session,Model model) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		//no로 불러오기 
		// 수정 정보 저장
		model.addAttribute("fd",adminService.getFdDetail(vo));
		return "/admin/adFdUpdateInfo";
	}
	// 펀딩 삭제 
	@RequestMapping("deleteFd.do")
	public String deleteFd(Funding_pjVO vo,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		//fd_no를받아서 해당 데이터를 삭제함
		adminService.deleteFd(vo);
		return "redirect:/admin/adFdList.do";
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
	// 봉사 삭제
	@RequestMapping("deleteBs.do")
	public String deleteBs(BongsaVO vo,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		//bs_judg 변수를 이용해 승인인지, 비승인인지 service에서 판단후 업데이트 
		adminService.deleteBs(vo);
		return "redirect:/admin/adBsList.do";
	}
	// 미승인 봉사 상세보기
	@RequestMapping("adBsApprovalDetail.do")
	public String adBsApprovalDetail(BongsaVO vo,Model model,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		//bs_judg 변수를 이용해 승인인지, 비승인인지 service에서 판단후 업데이트 
		model.addAttribute("bs",adminService.adBsDetail(vo));
		return "/admin/adBsApprovalDetail";
	}
	// 봉사 수정 페이지 이동
	@RequestMapping("adBsUpdateInfo.do")
	public String adBsUpdateInfo(BongsaVO vo,Model model,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		//bs_judg 변수를 이용해 승인인지, 비승인인지 service에서 판단후 업데이트 
		model.addAttribute("bs",adminService.adBsDetail(vo));
		return "/admin/adBsUpdateInfo";
	}
	// 봉사 수정 
	@RequestMapping("adBsUpdate.do")
	public String adBsUpdate(BongsaVO vo,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		//bs_judg 변수를 이용해 승인인지, 비승인인지 service에서 판단후 업데이트 
		System.out.println(vo);
		String strStart = vo.getBs_work_start();
		String strEnd = vo.getBs_work_end();
		
		char T = 'T';
		
		strStart = strStart.replace(String.valueOf(T), " ");
		strEnd = strEnd.replace(String.valueOf(T), " ");
		
		vo.setBs_work_start(strStart);
		vo.setBs_work_end(strEnd);
		
		// 새로 추가된 파일이 있으면 조회해서 값을 덮어씌움
		if (vo.getFile().length != 0) {
			//파일의 갯수를 불러와서 read_cnt에 저장
			vo.setBs_img_cnt(vo.getFile().length);
		}
		// 이미지 이름 저장
		vo.setBs_img_name(vo.getBs_no()+"_이미지");
		// 프로젝트 번호를 폴더명으로 받아옴
		String folder_name = vo.getBs_no()+"_이미지";

		adminService.adBsUpdate(vo);
		
		// 타이틀 이미지 있는지 확인하는 조건문
		// 타이틀 이미지 있는지 확인하는 조건문
		if (!vo.getTitle_img().isEmpty()) {

			// 2. 폴더 생성			
			Path directoryPath = Paths.get("C:/Users/human/git/gitWebProjectMohe/src/main/webapp/resources/files/bongsa/"+folder_name);

			try {
				// 폴더 생성 메소드
				Files.createDirectories(directoryPath);
				System.out.println(directoryPath + " 디렉토리가 생성되었습니다.");

			} catch (IOException e) {
				e.printStackTrace();
			}

			// 타이틀 이미지 저장
			String fname = vo.getTitle_img().getOriginalFilename();
			String fileExtension = fname.substring(fname.lastIndexOf(".")).toLowerCase();
			File f = new File("C:/Users/human/git/gitWebProjectMohe/src/main/webapp/resources/files/bongsa/"+folder_name + "/" + "title" + fileExtension);

			try {
				// 파일저장 메소드
				vo.getTitle_img().transferTo(f);
				System.out.println(" 타이틀 이미지 파일이 저장되었습니다");

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {

				e.printStackTrace();
			}

			// 내용 이미지 배열 확인 조건문
			if (vo.getFile().length != 0) {

				// 배열을 담기 위한 반복문
				for (int i = 0; i < vo.getFile().length; i++) {

					fname = vo.getFile()[i].getOriginalFilename();
					fileExtension = fname.substring(fname.lastIndexOf(".")).toLowerCase();

					f = new File("C:/Users/human/git/gitWebProjectMohe/src/main/webapp/resources/files/bongsa/" + folder_name + "/" + i + fileExtension);

					try {
						// 파일저장
						vo.getFile()[i].transferTo(f);
						System.out.println(i + " 번 파일이 저장되었습니다");

					} catch (IllegalStateException e) {
						e.printStackTrace();
					} catch (IOException e) {
						e.printStackTrace();
					}
				} // for_end
			} // if_end
		} // if_end
		
		return "redirect:/admin/adBsList.do";
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
		// vo로 받아온 정보를 db에 저장한다 
		adminService.adPartnerInsert(vo);
		// partner_no를 이름으로 사용
		String folder_name = vo.getPartner_no() + "";
		// 이미지 명을 pk 로 받음
		// 타이틀 이미지 있는지 확인하는 조건문
		if (!vo.getLogo_img_file().isEmpty()) {

			// 2. 폴더 생성			
			Path directoryPath = Paths.get("C:/Users/human/git/gitWebProjectMohe/src/main/webapp/resources/files/partner/"+folder_name);

			try {
				// 폴더 생성 메소드
				Files.createDirectories(directoryPath);
				System.out.println(directoryPath + " 디렉토리가 생성되었습니다.");

			} catch (IOException e) {
				e.printStackTrace();
			}

			// 타이틀 이미지 저장
			String fname = vo.getLogo_img_file().getOriginalFilename();
			String fileExtension = fname.substring(fname.lastIndexOf(".")).toLowerCase();;
			File f = new File("C:/Users/human/git/gitWebProjectMohe/src/main/webapp/resources/files/partner/"+folder_name + "/" + "logoIMG" + fileExtension);

			try {
				// 파일저장 메소드
				vo.getLogo_img_file().transferTo(f);
				System.out.println(" 로고 이미지 파일이 저장되었습니다");

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} // if_end
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
		// partner_no를 이름으로 사용
		String folder_name = vo.getPartner_no() + "";
		// 이미지 명을 pk 로 받음
		// 타이틀 이미지 있는지 확인하는 조건문
		if (!vo.getLogo_img_file().isEmpty()) {

			// 2. 폴더 생성			
			Path directoryPath = Paths.get("C:/Users/human/git/gitWebProjectMohe/src/main/webapp/resources/files/partner/"+folder_name);

			try {
				// 폴더 생성 메소드
				Files.createDirectories(directoryPath);
				System.out.println(directoryPath + " 디렉토리가 생성되었습니다.");

			} catch (IOException e) {
				e.printStackTrace();
			}

			// 타이틀 이미지 저장
			String fname = vo.getLogo_img_file().getOriginalFilename();
			String fileExtension = fname.substring(fname.lastIndexOf(".")).toLowerCase();;
			File f = new File("C:/Users/human/git/gitWebProjectMohe/src/main/webapp/resources/files/partner/"+folder_name + "/" + "logoIMG" + fileExtension);

			try {
				// 파일저장 메소드
				vo.getLogo_img_file().transferTo(f);
				System.out.println(" 로고 이미지 파일이 저장되었습니다");

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} // if_end
		return "redirect:/admin/adPartnerDetail.do?partner_no="+vo.getPartner_no();
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
		return "redirect:/admin/adDonationList.do";
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
		// pop_no를 이름으로 사용
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
			String fileExtension = fname.substring(fname.lastIndexOf(".")).toLowerCase();;
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
			String fileExtension = fname.substring(fname.lastIndexOf(".")).toLowerCase();;
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
	
	// 관리자 사용불가 전환하기
	@RequestMapping("adminInsert.do")
	public String adminInsert(AdminVO vo,HttpSession session) {
		// 로그인 하지않은 사람이 접근할 수 없도록
		if(session.getAttribute("adm_no") == null) return "/admin/adminLogin";
		// form에서 정보를 받아와서 전달, 퇴사일 빼고는 필수작성임
		adminService.insertAdmin(vo);
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
	
	// 이메일 전송하기 
	@RequestMapping("sendMail.do")
	public String sendMail(EmailVO vo) {
		String result = "true";
		// SMTP 서버 정보를 설정한다.
        Properties prop = new Properties();
		prop.put("mail.smtp.auth", true);
		prop.put("mail.smtp.host", "mw-002.cafe24.com");

		Session session = Session.getDefaultInstance(prop, new Authenticator(){
			protected PasswordAuthentication getPasswordAuthentication(){
				return new PasswordAuthentication("test@shym.kr", "testtest1"); 
			}
		});

		try{
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress("test@shym.kr"));
			
			List<UserInfoVO> users = userInfoService.getUserInfoList();
			// 발송할 유저 이메일 정보들을 넣는다 
			InternetAddress[] addArray = new InternetAddress[users.size()];
			int cnt=0;
			for(UserInfoVO user : users) {
				addArray[cnt] = new InternetAddress(user.getUser_email());
				System.out.println(user.getUser_email());
				cnt++;
			}
			message.setRecipients(Message.RecipientType.TO,addArray);
			
			message.setSubject(vo.getETitle());
			message.setContent(vo.getEText(),"text/html;charset=utf-8");
			
			Transport.send(message);
			System.out.println("Success Message Send");
		}catch(MessagingException e){
			e.printStackTrace();
			result = "false";
		}
		return"redirect:/admin/adSendEmail.do?result="+result;
	}
	
}
