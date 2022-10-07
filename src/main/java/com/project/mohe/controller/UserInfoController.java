package com.project.mohe.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.mohe.domain.UserInfoVO;
import com.project.mohe.service.UserInfoService;

import oracle.jdbc.proxy.annotation.Post;

@Controller
public class UserInfoController {
	@Autowired
	private UserInfoService userInfoService;
	
	
	@RequestMapping("/email/signUp.do")
	public String userSignUp(UserInfoVO userInfoVO) {
		System.out.println("signUp");
		userInfoVO.setUser_intype("EMAIL");
		userInfoService.insertUserInfo(userInfoVO);
		System.out.println("===== signUp 끝 ====");
		return "main";
	}

	
	
	@RequestMapping(value = "/email/Check.do", produces = "application/text; charset=utf8")
	@ResponseBody // 화면이 전화되지않고 비동기동신이 가능하도록 하는 어노테이션
	public String emailCheck( UserInfoVO vo) {
		UserInfoVO resultVO = userInfoService.emailCheck_Login(vo);
		
		return resultVO == null ? "사용 가능한 이메일입니다." : "중복된 이메일입니다.";
	}

	
}
