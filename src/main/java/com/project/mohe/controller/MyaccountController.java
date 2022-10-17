package com.project.mohe.controller;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.mohe.domain.Funding_cartVO;
import com.project.mohe.domain.Funding_payVO;
import com.project.mohe.domain.Funding_pjVO;
import com.project.mohe.domain.UserInfoVO;
import com.project.mohe.service.MyaccountService;

@Controller
public class MyaccountController {

	@Autowired
	MyaccountService myaccountService;

	@Autowired
	ServletContext servletContext;

	@RequestMapping("modifyInfoUpdate.do")
	public String modifyInfoUpdate(UserInfoVO vo, HttpSession session) {
		System.out.println("update modifyInfo.do로 들어옴");
		System.out.println(vo.getUser_no());
		System.out.println(vo.getUser_name());
		System.out.println(vo.getUser_phone());
		System.out.println(vo.getUser_info());

		/**
		 * 
		 */
		try {
			String fname = vo.getUser_img_file().getOriginalFilename();
			File f = new File(
					"C:\\Users\\ckalw\\git\\gitWebProjectMohe\\src\\main\\webapp\\resources\\userImgUploadFile\\"
							+ fname);
			vo.getUser_img_file().transferTo(f);
			vo.setUser_img(fname);
		} catch (Exception e) {
			e.printStackTrace();
		}

		myaccountService.updateInfo(vo);

		session.setAttribute("user", vo);
		session.setAttribute("userName", vo.getUser_name());
		session.setAttribute("userPhone", vo.getUser_phone());
		session.setAttribute("userInfo", vo.getUser_info());

		return "redirect:/modifyInfo.do";
	}

	// 헤더의 펀딩 클릭시 펀딩 리스트 페이지로 이동
	@RequestMapping("details.do")
	public String details(Model model, HttpSession session) {
		UserInfoVO user = (UserInfoVO) session.getAttribute("user");
		List<Funding_payVO> pj_list = myaccountService.getFunding_pjList(user);

		model.addAttribute("pj_list", pj_list);
		return "details";
	}

	@RequestMapping("insertFunding_cart.do")
	@ResponseBody
	public int insertFunding_cart(Funding_cartVO vo, HttpSession session) {
		UserInfoVO user = (UserInfoVO) session.getAttribute("user");
		vo.setUser_no(user.getUser_no());
		return myaccountService.insertFunding_cart(vo);
	}
	
	@RequestMapping("shoppingBasket.do")
	public String getFunding_cartList(Model model, HttpSession session) {
		UserInfoVO user = (UserInfoVO) session.getAttribute("user");
		List<Funding_pjVO> pj_list = myaccountService.getFunding_cartList(user);

		model.addAttribute("pj_list", pj_list);
		return "shoppingBasket";
	}
}