package com.project.mohe.controller;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.project.mohe.domain.BongsaVO;
import com.project.mohe.domain.Funding_payVO;
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
		UserInfoVO user = (UserInfoVO) session.getAttribute("user");
		if (user == null) {
			return "redirect:/loginCheck.do";
		}
		
		System.out.println("update modifyInfo.do로 들어옴");
		System.out.println(vo.getUser_name());
		System.out.println(vo.getUser_phone());
		System.out.println(vo.getUser_info());
		
		user.setUser_name(vo.getUser_name());
		user.setUser_phone(vo.getUser_phone());
		user.setUser_info(vo.getUser_info());

		/**
		 * 
		 */
		try {
			MultipartFile userImgFile = vo.getUser_img_file();
			if (userImgFile != null) {

				String projectDir = "C:/Users/ckalw/git/gitWebProjectMohe";
				String fname = userImgFile.getOriginalFilename();
				String dirStr = projectDir + "/src/main/webapp/resources/userImgUploadFile/" + user.getUser_no();
				if (!new File(dirStr).exists()) {
					Files.createDirectories(Paths.get(dirStr));
				}
				File writefile = new File(dirStr + File.separator + fname);
				userImgFile.transferTo(writefile);
				user.setUser_img(fname);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		myaccountService.updateInfo(user);

		session.setAttribute("user", user);

		return "redirect:/modifyInfo.do";
	}

	// 헤더의 펀딩 클릭시 펀딩 리스트 페이지로 이동
	@RequestMapping("details.do")
	public String details(Model model, HttpSession session, @RequestParam(defaultValue = "1") String activeTab) {
		UserInfoVO user = (UserInfoVO) session.getAttribute("user");
		if (user == null) {
			return "redirect:/loginCheck.do";
		}
		
		List<Funding_payVO> pj_list = myaccountService.getFunding_pjList(user);
		List<BongsaVO> bs_list = myaccountService.getBongsa_pjList(user);

		model.addAttribute("pj_list", pj_list);
		model.addAttribute("bs_list", bs_list);
		
		model.addAttribute("activeTab", activeTab);
		
		return "details";
	}

//	@RequestMapping("insertFunding_cart.do")
//	@ResponseBody
//	public int insertFunding_cart(Funding_cartVO vo, HttpSession session) {
//		UserInfoVO user = (UserInfoVO) session.getAttribute("user");
//		vo.setUser_no(user.getUser_no());
//		return myaccountService.insertFunding_cart(vo);
//	}
//	
//	@RequestMapping("shoppingBasket.do")
//	public String getFunding_cartList(Model model, HttpSession session) {
//		UserInfoVO user = (UserInfoVO) session.getAttribute("user");
//		List<Funding_pjVO> pj_list = myaccountService.getFunding_cartList(user);
//		List<BongsaVO> bs_list = myaccountService.getBonsa_cartList(user);
//		
//		model.addAttribute("pj_list", pj_list);
//		model.addAttribute("bs_list", bs_list);
//		return "shoppingBasket";
//	}
}
