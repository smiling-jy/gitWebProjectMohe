package com.project.mohe.controller;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.security.SecureRandom;
import java.util.List;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.project.mohe.domain.BongsaVO;
import com.project.mohe.domain.Funding_payVO;
import com.project.mohe.domain.UserInfoVO;
import com.project.mohe.service.MyaccountService;
import com.project.mohe.service.UserInfoService;

@Controller
public class MyaccountController {

	@Autowired
	private MyaccountService myaccountService;

	@Autowired
	private UserInfoService userInfoService;

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
				String projectDir ="C:/Users/ckalw/git/gitWebProjectMohe";
				String fname = userImgFile.getOriginalFilename();
				String dirStr = projectDir + "/src/main/webapp/resources/files/userImgUploadFile/" + user.getUser_no();
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

	@RequestMapping("countAccountByEmail.do")
	@ResponseBody
	public int countAccountByEmail(UserInfoVO vo) {
		return myaccountService.countAccountByEmail(vo);
	}

	@RequestMapping("resetPasswordAndSendEmail.do")
	@ResponseBody
	public int resetPasswordAndSendEmail(UserInfoVO vo) {
		int resultCnt = 0;

		UserInfoVO user = userInfoService.emailCheck_Login(vo);

		if (user != null) {
			// 랜덤 문자열 생성
			int len = 6;
			final String AB = "123456789ABCDEFGHJKMNPQRSTUVWXYZ";
			SecureRandom rnd = new SecureRandom();
			StringBuilder sb = new StringBuilder(len);
			for (int i = 0; i < len; i++)
				sb.append(AB.charAt(rnd.nextInt(AB.length())));
			String generatedString = sb.toString();

			try {
				// 이메일 발송
				Properties prop = new Properties();
				prop.put("mail.smtp.auth", true);
				prop.put("mail.smtp.host", "mw-002.cafe24.com");

				Session session = Session.getInstance(prop, new Authenticator() {
					@Override
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication("test@shym.kr", "testtest1"); 
					}
				});
				
				Message message = new MimeMessage(session);
				message.setFrom(new InternetAddress("shym@shym.kr"));
				message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(vo.getUser_email()));
				message.setSubject("[모해] 임시비밀번호 발급 안내");

				String msg = user.getUser_name() + "님 임시 비밀번호를 발급해 드립니다. 임시 비밀번호 : <b>" + generatedString + "</b>";

				MimeBodyPart mimeBodyPart = new MimeBodyPart();
				mimeBodyPart.setContent(msg, "text/html; charset=utf-8");

				Multipart multipart = new MimeMultipart();
				multipart.addBodyPart(mimeBodyPart);

				message.setContent(multipart);

				Transport.send(message);

				// 테이블 업데이트
				vo.setUser_password(generatedString);
				resultCnt = myaccountService.resetPassword(vo);
			} catch (MessagingException mex) {
				mex.printStackTrace();
			}
		}

		return resultCnt;
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
