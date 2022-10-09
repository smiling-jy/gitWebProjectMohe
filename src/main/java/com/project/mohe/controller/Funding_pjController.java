package com.project.mohe.controller;

import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;
import java.net.URL;
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

import com.project.mohe.domain.Funding_pjVO;
import com.project.mohe.service.Funding_pjService;

@Controller
public class Funding_pjController {
	@Autowired
	private Funding_pjService funding_pjService;
	
	@Autowired 
	ServletContext servletContext;
	
		// 헤더의 펀딩 클릭시 펀딩 리스트 페이지로 이동
		@RequestMapping("funding.do")
		public String funding(Model model, String fd_category, String search, String select) {
			HashMap map = new HashMap();
			map.put("fd_category",fd_category); // 카테고리
			map.put("search",search); // 검색어
			map.put("select",select); // 최신순 , 인기순
			System.out.println(select);
			List<Funding_pjVO> pj_list = funding_pjService.getFunding_pjList(map);
			model.addAttribute("pj_list", pj_list);
			return "funding";
		}
		
		// 펀딩 상세 페이지 이동
		@RequestMapping("fundingSingle.do")
		public String fundingSingle(Funding_pjVO pj, Model model) {
			model.addAttribute("pj", funding_pjService.getFunding_pj(pj));
			return "fundingSingle";
		}
		
		
		
		// 펀딩주최하기 클릭시 페이지 단순 이동
		@RequestMapping("openfunding.do")
		public void openFunding() {

		}
		
		// Funding_pjVO 테이블에 insert
		@RequestMapping("savefunding.do")
		public String insertFunding(Funding_pjVO pj , HttpServletRequest request){
			
			// 유저번호 세션에서 받아오기
			HttpSession session = request.getSession();
			
			// 임시 유저번호 로그인 기능 완성되면 ㄹㅇ 세션에서 받아오기
			session.setAttribute("user_no", 1);
			
			pj.setUser_no((Integer) session.getAttribute("user_no"));
			
			
			// DB저장
			pj.setFd_read_cnt(pj.getFile().length);
			funding_pjService.insertFunding_pj(pj);
			// 프로젝트 번호를 폴더명으로 받아옴
			String folder_name =  pj.getFd_no()+"";

			// 첨부파일 있는지 확인
			if (pj.getFile().length != 0) {

				// 2. 폴더 생성

				// 절대경로 받아오는 메소드
				String resources = servletContext.getRealPath("/resources/attached_file/funding");
				// 절대경로 + 지정한 폴더이름으로 폴더 생성
				Path directoryPath = Paths.get(resources + "/" + folder_name);

				try {
					// 폴더 생성 메소드
					Files.createDirectories(directoryPath);
					System.out.println(directoryPath + " 디렉토리가 생성되었습니다.");

				} catch (IOException e) {
					e.printStackTrace();
				}

				// 3. 폴더 안에 이미지 저장
				for (int i = 0; i < pj.getFile().length; i++) {

					String fname = pj.getFile()[i].getOriginalFilename();
					String fileExtension = fname.substring(fname.lastIndexOf("."));

					File f = new File(resources + "/" + folder_name + "/" + i + fileExtension);

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
			return "redirect:/funding.do";
		}
		
		// 관리자페이지에서 프로젝트 승인해줄때
		public void approveFunding(Funding_pjVO pj) {
			funding_pjService.updateFunding_pj(pj);
		}
}
