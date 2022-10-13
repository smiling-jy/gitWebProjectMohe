package com.project.mohe.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.mohe.domain.VolunteerVO;
import com.project.mohe.service.AdminService;
import com.project.mohe.service.VolunteerService;

@Controller
public class VolunteerController {
	@Autowired
	private VolunteerService volunteerService; 
	
	
	
	
	//참여하기 버튼 클릭시 VOLUNTEER 테이블에 추가 
	@RequestMapping("insertVolunteer.do")
	public String insertVolunteer(VolunteerVO vo) {
		

		System.out.println(vo.getUser_no());
		System.out.println(vo.getVolun_no());
		System.out.println(vo.getBs_no());
		System.out.println("insertVolun 컨트롤러 입구");
		
		
		volunteerService.insertVolunteer(vo); //여기에서 오류가난다. 
		System.out.println("insertVolun 출구");
		
		
		
		
	return "redirect:/bongsaMain.do"; // 봉사 메인페이지로 돌아가기 
	}
	
}
