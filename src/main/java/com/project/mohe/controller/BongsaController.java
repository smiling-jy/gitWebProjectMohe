package com.project.mohe.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.List;


import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.mohe.domain.BongsaVO;
import com.project.mohe.service.BongsaService;

@Controller
public class BongsaController {
	@Autowired
	private BongsaService bongsaService;
	
	@Autowired
	ServletContext servletContext;
	
	//헤더의 봉사 클릭시 봉사 리스트 페이지로 이동 - 봉사메인페이지
	@RequestMapping("bongsaMain.do")
	public String bongsaMain(Model model, String bs_region, String searchCondition,String searchKeyword ) {
//		System.out.println("컨트롤러 진입");
		HashMap map = new HashMap(); 
		map.put("bs_region",bs_region); // 지역
		map.put("searchCondition",searchCondition); // 선택
		map.put("searchKeyword",searchKeyword); // 키워드
		List<BongsaVO> bs_list = bongsaService.getBongsaList(map);  //리스트에 데이터 쌓기	
		model.addAttribute("bs_list", bs_list);
		return "bongsaMain";
		
	}
	
	
	//봉사메인페이지에서 readmore이나 사진 클릭시 해당 봉사의 세부내역페이지로 이동 - 봉사세부내역페이지
	@RequestMapping("bongsaDetail.do")
	public String bongsaDetail(BongsaVO vo, Model model) {
		model.addAttribute("bongsa", bongsaService.getBongsa(vo));
		System.out.println("봉사 디테일에서의 bs_no:" + vo.getBs_no());
		return "bongsaDetail";
	}
	 
	
	//봉사세부내역페이지에서 참여하기를 클릭시 폼 추력
	@RequestMapping("bongsaParticipate.do")
	public String bongsaParticipate(Model model, BongsaVO vo, HttpServletRequest request) {
		
		
		if(request.getSession().getAttribute("user_no") == null) return "loginCheck";
		
		// 유저번호 세션에서 받아오기
		HttpSession session =  request.getSession();
		System.out.println(session);
		// 임시 유저번호 로그인 기능 완성되면 ㄹㅇ 세션에서 받아오기
		vo.setPUser_no((Integer) session.getAttribute("user_no"));

		
		System.out.println("봉사 참여페이지에서의 접속 puser_no:" + vo.getPUser_no()); 
		System.out.println("봉사 참여페이지에서의 bs_no:" + vo.getBs_no());
		
		model.addAttribute("bongsa", bongsaService.getParticipateInfo(vo));
		
		return "bongsaParticipate";
	}
	

	
	//모집하기 페이지 클릭시 
	@RequestMapping("bongsaRecruite.do")
	public String bongsaRecruite(BongsaVO vo, HttpServletRequest request) {
	
		//로그인했는지 확인
	if(request.getSession().getAttribute("user_no") == null) return "loginCheck";
		// 유저번호 세션에서 받아오기
		HttpSession session =  request.getSession();
		System.out.println(session);
		// 임시 유저번호 로그인 기능 완성되면 ㄹㅇ 세션에서 받아오기
		vo.setUser_no((Integer) session.getAttribute("user_no"));
		
		
		return "bongsaRecruite";
	}
	
	
	
	
	//모집하기 페이지 봉사활동 모집 insert
	
	@RequestMapping("insertBongsa.do")
	public String insertBongsa(BongsaVO vo, HttpServletRequest request) {
		
	
		// 유저번호 세션에서 받아오기
		HttpSession session =  request.getSession();
		System.out.println(session);
		// 임시 유저번호 로그인 기능 완성되면 ㄹㅇ 세션에서 받아오기
		vo.setUser_no((Integer) session.getAttribute("user_no"));
				
		System.out.println("insertBongsa 컨트롤러 입구");
		
		
		String strStart = vo.getBs_work_start();
		String strEnd = vo.getBs_work_end();
		
		char T = 'T';
		
		strStart = strStart.replace(String.valueOf(T), " ");
		strEnd = strEnd.replace(String.valueOf(T), " ");
		
		vo.setBs_work_start(strStart);
		vo.setBs_work_end(strEnd);
		
		System.out.println(vo.getBs_work_start());
		System.out.println(vo.getBs_work_end());
		
		bongsaService.insertBongsa(vo);
		
		
		
		// 프로젝트 번호를 폴더명으로 받아옴
		String folder_name = vo.getBs_no()+"_이미지";
		
		System.out.println("폴더  이름 : " + folder_name);

		// 타이틀 이미지 있는지 확인하는 조건문
		if (!vo.getTitle_img().isEmpty()) {

			// 2. 폴더 생성


			// 절대경로 받아오는 메소드
	        String resources = servletContext.getRealPath("/resources/files/bongsa");
	         // 절대경로 + 지정한 폴더이름으로 폴더 생성
	        
			Path directoryPath = Paths.get("C:/Users/82109/git/gitWebProjectMohe/src/main/webapp/resources/files/bongsa/"+folder_name);

			try {
				// 폴더 생성 메소드
				Files.createDirectories(directoryPath);
				System.out.println(directoryPath + " 디렉토리가 생성되었습니다.");

			} catch (IOException e) {
				e.printStackTrace();
			}
//
//			// 타이틀 이미지 저장
			String fname = vo.getTitle_img().getOriginalFilename();
			System.out.println("getOriginalFilename() : " + fname); //첨부파일의 이름 
			String fileExtension = fname.substring(fname.lastIndexOf(".")); //첨부파일의 확장자
			File f = new File(resources + "/" + folder_name + "/" + "title_img" + fileExtension);
			try {
//				// 파일저장 메소드
				vo.getTitle_img().transferTo(f);
				System.out.println("타이틀 이미지 파일이 저장되었습니다");
//
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
//
				e.printStackTrace();
			}

			// 내용 이미지 배열 확인 조건문
			if (vo.getFile().length != 0) {

				// 배열을 담기 위한 반복문
				for (int i = 0; i < vo.getFile().length; i++) {

					fname = vo.getFile()[i].getOriginalFilename();
					fileExtension = fname.substring(fname.lastIndexOf("."));

					f = new File(resources + "/" + folder_name);
//					f = new File(resources + "/" + folder_name + "/" + i + fileExtension);
					try {
						// 파일저장
						vo.getFile()[i].transferTo(f);
						System.out.println(i + " 번 파일이 저장되었습니다");

					} catch (IllegalStateException e) {
						e.printStackTrace();
					} catch (IOException e) {

						e.printStackTrace();
					}
					//bs_img_cnt 증가시키기
					vo.setBs_img_cnt(i);
					System.out.println(vo.getBs_img_cnt());
				} // for_end
			} // if_end
		} // if_end
		
		bongsaService.increBsImgCnt(vo);
		
		
		
		
	return "redirect:/bongsaMain.do";
	}
	
	//마이페이지 진행,완료된 봉사활동 보여주기 
	@RequestMapping("bongsaRecruiterMypage.do")
	public String bongsaRecruiterMypage(Model model, HttpServletRequest request) {
		
		// 유저번호 세션에서 받아오기
		HttpSession session =  request.getSession();
		// 임시 유저번호 로그인 기능 완성되면 ㄹㅇ 세션에서 받아오기
		HashMap map = new HashMap();
		map.put("user_no", (Integer) session.getAttribute("user_no"));
		
		model.addAttribute("success_list", bongsaService.getSuccess_BsList(map));
		model.addAttribute("ongoing_list", bongsaService.getOngoing_BsList(map));
		
		return "bongsaRecruiterMypage";
	}
	
	
	//모집완료된 봉사활동 참가자 리스트 출력
	@RequestMapping("bongsaParticipateList.do")
	public String bongsaParticipateList(BongsaVO vo, Model model) {
		
		
		List<BongsaVO> bongsaParticipateList = bongsaService.getbongsaParticipateList(vo); 
		model.addAttribute("bongsaParticipateList", bongsaParticipateList);
		
		System.out.println("봉사 디테일에서의 bs_no:" + vo.getBs_no());

		
		return "bongsaParticipateList";
	}
	
	
	
	
	
	
	
	
	
	
	
}

