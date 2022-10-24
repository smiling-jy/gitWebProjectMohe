package com.project.mohe.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.mohe.domain.PagingVO;
import com.project.mohe.domain.VolunteerVO;
import com.project.mohe.service.PagingService;
import com.project.mohe.service.VolunteerService;

import jdk.nashorn.api.scripting.ScriptUtils;

@Controller
public class VolunteerController {
	@Autowired
	private VolunteerService volunteerService; 
	@Autowired
	private PagingService pagingService;
	
	//참여하기 버튼 클릭시 VOLUNTEER 테이블에 추가 
	@RequestMapping("insertVolunteer.do")
	public String insertVolunteer(VolunteerVO vo, HttpServletRequest request) {
		
		//세션에서 user_no 받아오기 
		HttpSession session =  request.getSession();
		vo.setUser_no((Integer) session.getAttribute("user_no"));
		
		System.out.println(vo.getUser_no());
		System.out.println(vo.getBs_no());
		System.out.println(vo.getVt_recruit_start());
		System.out.println(vo.getVt_recruit_end());
		System.out.println(vo.getVt_work_start());
		System.out.println(vo.getVt_work_end());
		System.out.println("insertVolun 컨트롤러 입구");
		
		
		String strVt_recruit_start = vo.getVt_recruit_start();
		String strVt_recruit_end = vo.getVt_recruit_end();
		String strVt_work_start = vo.getVt_work_start();
		String strVt_work_end = vo.getVt_work_end();
		
		
		char remove = '-';
		
		strVt_recruit_start = strVt_recruit_start.replace(String.valueOf(remove), "");
		strVt_recruit_end = strVt_recruit_end.replace(String.valueOf(remove), "");
		strVt_work_start = strVt_work_start.replace(String.valueOf(remove), "");
		strVt_work_end = strVt_work_end.replace(String.valueOf(remove), "");
		
		vo.setVt_recruit_start(strVt_recruit_start);
		vo.setVt_recruit_end(strVt_recruit_end);
		vo.setVt_work_start(strVt_work_start);
		vo.setVt_work_end(strVt_work_end);
		
		if(volunteerService.getVolunteer(vo) != null) { //이전에 참여하기를 누른 적이 있는 경우  
			return "redirect:/bongsaMain.do";
		}else {
			volunteerService.insertVolunteer(vo); //처음 참여하기를 누른경우
			
		}
		

		return "redirect:/bongsaMain.do";
	}
	
	// 참여내역
	@RequestMapping("myVolunList.do")
	public String myFundingList(PagingVO vo, HttpServletRequest request, Model model){
		HttpSession session = request.getSession();
		vo.setSelect(String.valueOf(session.getAttribute("user_no")));
		// 페이징을 위한 테이블 행값 받아오기
		vo.setTotalRecCount(volunteerService.getAllcnt(vo).getTotalRecCount());
		// 페이징 처리 
		vo = pagingService.doPaging(vo);
		// 페이지값 저장하기
		
		model.addAttribute("page",vo);		
		model.addAttribute("vl_list", volunteerService.adGetVolunteerList(vo));
		
		System.out.println();
		return "myVolunList";
	}
	
	
}
