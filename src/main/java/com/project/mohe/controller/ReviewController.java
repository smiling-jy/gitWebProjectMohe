package com.project.mohe.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.project.mohe.domain.ReviewVO;
import com.project.mohe.service.ReviewService;

@Controller
public class ReviewController {
	@Autowired
	private ReviewService reviewService;
	
		
		@RequestMapping("reviewInsertForm.do")
		public String reviewInsertForm(HttpSession session) {
			 if(session.getAttribute("user_no") == null) return "loginCheck";
			
			 return "reviewWriting";
		}
		
		
		//리뷰 작성
		@RequestMapping("reviewInsert.do")
		public String reviewInsert(ReviewVO vo,MultipartFile file) {
			
			reviewService.insertReview(vo);
			
			//이미지첨부
			file=vo.getFile();
			String fName=vo.getFName();
			long fsize=vo.getFsize();
			
			if(!file.isEmpty()) {
				fName=file.getOriginalFilename();
				fsize=file.getSize();
				//확장자 추출 (소문자로 통일)
				String fileExtension=fName.substring(fName.lastIndexOf(".")).toLowerCase();
				//원하는 이름으로 저장하기 = 이름+확장자
				vo.setReview_img("ReviewIMG_"+vo.getReview_no()+fileExtension);
				//System.out.println("========>> 이미지파일 이름: "+vo.getReview_img());
				File f = new File("C:\\Users\\human\\git\\gitWebProjectMohe\\src\\main\\webapp\\resources\\reviewUploadFile\\"+vo.getReview_img());
				
				try {
					file.transferTo(f);
					//System.out.println("=====>>리뷰 사진 파일이 저장되었습니다.");
				
				} catch (IllegalStateException e) {				
				e.printStackTrace();
				} catch (IOException e) {
				e.printStackTrace();
				}
				
			}
			return "redirect:/review.do";
		}
		
		
		//리뷰 리스트 페이지 보기 
		@RequestMapping("review.do")
		public void reviewList(Model model) {
			model.addAttribute("reviewList", reviewService.getReviewList());
			
		}
		
		//리뷰 읽기+ 이전글 다음글
		@RequestMapping("getReview.do")
		public String getReview(ReviewVO vo, Model model, HashMap map) {
			
			model.addAttribute("review", reviewService.getReview(vo));
			
			//이전글다음글
			model.addAttribute("move",reviewService.movePage(vo));
			
			return "reviewDetail";
		}
		
		
		//수정페이지로 이동
		@RequestMapping("goUpdate.do")
		public String goUpdate(ReviewVO vo,Model model) {
			//수정하고자 하는 게시글의 내용을 출력해야함 따라서 해당 게시물의 내용을 가져오는 서비스 메소드를 호출
			model.addAttribute("review", reviewService.getReview(vo));
			
			return "reviewUpdate";
		}
		
		//수정
		@RequestMapping("updateReview.do")
		public String updateReview(ReviewVO vo) {
			
			reviewService.updateReview(vo);
		
			return "redirect:/review.do";
		}
		
		
		//삭제
		@RequestMapping("deleteReview.do")
		public String deleteReview(ReviewVO vo) {
			reviewService.deleteReview(vo);
			
			return "redirect:/review.do";
			
		}
	
		
		
	
}
