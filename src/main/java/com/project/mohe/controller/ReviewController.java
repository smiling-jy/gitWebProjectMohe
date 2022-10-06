package com.project.mohe.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.mohe.domain.ReviewVO;
import com.project.mohe.service.ReviewService;

@Controller
public class ReviewController {
	@Autowired
	private ReviewService reviewService;
	
		//리뷰 리스트 페이지 보기
		@RequestMapping("review.do")
		public void reviewList(Model model) {
			System.out.println("===========>리뷰컨트롤러 reviewList");
			model.addAttribute("reviewList", reviewService.getReviewList());
			
		}
		
		@RequestMapping("reviewInsertForm.do")
		public String reviewInsertForm() {
			return "reviewWriting";
		}
		
		
		//리뷰 작성
		@RequestMapping("reviewInsert.do")
		public String reviewInsert(ReviewVO vo) {
			System.out.println("===========>리뷰컨트롤러 reviewInsert");
			reviewService.insertReview(vo);
			
			//후기작성 폼 만들기!!!!!!!!!!!!!!!!!!
			
			return "redirect:/Review.do";
			
		}
	
		
		
	
}
