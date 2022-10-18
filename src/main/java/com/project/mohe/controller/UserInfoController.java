package com.project.mohe.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.mohe.domain.UserInfoVO;
import com.project.mohe.service.UserInfoService;

@Controller
public class UserInfoController {
	@Autowired
	private UserInfoService userInfoService;
	
	@RequestMapping(value = "/email/Check.do", produces = "application/text; charset=utf8")
	@ResponseBody // 화면이 전화되지않고 비동기동신이 가능하도록 하는 어노테이션
	public String emailCheck( UserInfoVO vo) {
		UserInfoVO resultVO = userInfoService.emailCheck_Login(vo);
		
		return resultVO == null ? "사용 가능한 이메일입니다." : "중복된 이메일입니다.";
	}
	
	@RequestMapping("/email/signUp.do")
	public String userSignUp(UserInfoVO userInfoVO) {
		System.out.println("signUp");
		userInfoVO.setUser_intype("EMAIL");
		userInfoService.insertUserInfo(userInfoVO);
		System.out.println("===== signUp 끝 ====");
		return "redirect:/main.do";
	}
	
	@RequestMapping(value = "/email/loginCheck.do", produces = "application/text; charset=utf8")
	@ResponseBody
	public String userlogin(UserInfoVO vo, HttpSession session) {
		System.out.println("로그인 컨트롤러 접근");
		System.out.println(vo.getUser_email());
		System.out.println(vo.getUser_password());
		
		vo.setUser_intype("EMAIL");
		UserInfoVO result = userInfoService.emailLogin(vo);
	     if (result != null) {
	         // id와 pass 값이 일치해서 값이 돌아왔다면 로그인성공, session에 id를 올려줌
	         System.out.println("[ " + result.getUser_email() + " ] 로그인 접속");
	         System.out.println(result.getUser_no());
	         session.setAttribute("user", result);
	         session.setAttribute("sessionTime", new Date());
	         session.setAttribute("user_no", result.getUser_no());
	         session.setAttribute("user_email", result.getUser_email());
	      }

	      return result != null ? "true" : "false";
	   }
	
	@RequestMapping(value = "/logOut.do")
	public String userLogOut(HttpSession session) {
		session.removeAttribute("user");
		session.removeAttribute("sessionTime");
		session.removeAttribute("user_email");
		session.removeAttribute("user_no");
		return "redirect:/main.do";
	}
	
	
	// api 로그인 (최초로그인이라면 가입 후 로그인)
	@RequestMapping("/apiLogin.do")
	public String apiLogin(UserInfoVO vo , HttpSession session) {
		System.out.println("api로그인 접근");
		System.out.println(vo);
		
		UserInfoVO result = userInfoService.emailCheck_Login(vo);
		if(result == null) {
			vo.setUser_phone("kakao");
			userInfoService.insertUserInfo(vo);
		}
		result = userInfoService.emailCheck_Login(vo);
		session.setAttribute("user", result);
		session.setAttribute("sessionTime", new Date());
		session.setAttribute("user_no", result.getUser_no());
		session.setAttribute("user_email", result.getUser_email());

		return "redirect:/main.do";
	}
	

}
