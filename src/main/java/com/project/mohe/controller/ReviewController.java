package com.project.mohe.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
			
			return "redirect:/review.do";
			
		}
		
		//리뷰 읽기
		@RequestMapping("getReview.do")
		public String getReview(ReviewVO vo, Model model) {
			System.out.println("======>> 컨트롤러 getReview.do");
			
			model.addAttribute("review", reviewService.getReview(vo));
			
			return "reviewDetail";
		}
		
		
		//수정페이지로 이동
		@RequestMapping("goUpdate.do")
		public String goUpdate(ReviewVO vo,Model model) {
			System.out.println("======>> 컨트롤러 goUpdate.do");
			
			//수정하고자 하는 게시글의 내용을 출력해야함 따라서 해당 게시물의 내용을 가져오는 서비스 메소드를 호출
			model.addAttribute("review", reviewService.getReview(vo));
			
			return "reviewUpdate";
		}
		
		//수정
		@RequestMapping("updateReview.do")
		public String updateReview(ReviewVO vo) {
			System.out.println("===========>리뷰컨트롤러 updateReview");
			
			reviewService.updateReview(vo);
		
			return "redirect:/review.do";
		}
		
		
		//삭제
		@RequestMapping("deleteReview.do")
		public String deleteReview(ReviewVO vo) {
			System.out.println("===========>리뷰컨트롤러 deleteReview");
			reviewService.deleteReview(vo);
			
			return "redirect:/review.do";
			
		}
	
		
		
	
}
