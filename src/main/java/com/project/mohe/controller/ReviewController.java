package com.project.mohe.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.project.mohe.domain.ReviewVO;
import com.project.mohe.domain.UserInfoVO;
import com.project.mohe.service.ReviewService;

@Controller
public class ReviewController {
	@Autowired
	private ReviewService reviewService;
	
		//로그인체크
		@RequestMapping("reviewInsertForm.do")
		public String reviewInsertForm(HttpSession session) {
			 if(session.getAttribute("user_no") == null) return "loginCheck";
			
			 return "reviewWriting";
		}
		
		
		//마이페이지 나의후기목록
		@RequestMapping("myReviewList.do")
		public String getMyReviewList(Model model,HttpSession session) {
			HashMap map = new HashMap();
			map.put("user_no",(Integer)session.getAttribute("user_no"));
			List<ReviewVO> myRList=reviewService.getReviewList(map);
			model.addAttribute("myReviewList", myRList);
			return "myReviewList";
		}
		
		
		//리뷰 작성
		@RequestMapping("reviewInsert.do")
		public String reviewInsert(UserInfoVO user_vo,ReviewVO vo,MultipartFile file,HttpServletRequest request) {
			
			// 유저넘버 user_no 세션에서 받아오기
			HttpSession session = request.getSession();
			user_vo.setUser_no((Integer) session.getAttribute("user_no"));
			
			reviewService.insertReview(user_vo,vo);
			
			//이미지첨부
			file=vo.getFile();
			String fName=vo.getFName();
			long fsize=vo.getFsize();
			
			//리뷰게시글 번호(pk)를 폴더명으로 받아옴
			String folder_name=vo.getReview_no()+"";
			
			//첨부이미지가 있는지 확인
			if(!file.isEmpty()) {
				
				//폴더생성
				Path directoryPath=Paths.get("C:/Users/human/git/gitWebProjectMohe/src/main/webapp/resources/files/review/"+folder_name);
				
				try {
					//폴더생성메소드
					Files.createDirectories(directoryPath);
					System.out.println(directoryPath+"디렉토리가 생성되었습니다.");
					
				}catch(IOException e) {
					e.printStackTrace();
				}
				
				//이미지저장
				fName=file.getOriginalFilename();
				fsize=file.getSize();
				//확장자 추출 (소문자로 통일)
				String fileExtension=fName.substring(fName.lastIndexOf(".")).toLowerCase();
				//원하는 이름으로 저장하기 = 이름+확장자(이제 필요없는 작업...?)
				//vo.setReview_img("ReviewIMG_"+vo.getReview_no()+fileExtension);
			
				File f = new File("C:/Users/human/git/gitWebProjectMohe/src/main/webapp/resources/files/review/"+folder_name + "/" + "reviewIMG" + fileExtension);
					
				try {
					file.transferTo(f);
					System.out.println("=====>>리뷰 사진 파일이 저장되었습니다.");
				
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
		public String reviewList(Model model, String search, String select) {

			//검색
			HashMap map = new HashMap();
			map.put("search", search);
			map.put("select", select); 
			
			List<ReviewVO> rList=reviewService.getReviewList(map);
			model.addAttribute("reviewList", rList);
			
			return "review";
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
		public String goUpdate(ReviewVO vo,Model model,HttpSession session) {
			model.addAttribute("review", reviewService.getReview(vo));
			
			return "reviewUpdate";
		}
			
		
		//수정 모듈
		public void updateReviewProcess(ReviewVO vo,MultipartFile file,Model model) {
			
			reviewService.updateReview(vo);
			
			//이미지첨부
			file=vo.getFile();
			String fName=vo.getFName();
			long fsize=vo.getFsize();
			
			//리뷰게시글 번호(pk)를 폴더명으로 받아옴
			String folder_name=vo.getReview_no()+"";
			
			//첨부이미지가 있는지 확인
			if(!file.isEmpty()) {
				
				//폴더생성
				Path directoryPath=Paths.get("C:/Users/human/git/gitWebProjectMohe/src/main/webapp/resources/files/review/"+folder_name);
				
				try {
					//폴더생성메소드
					Files.createDirectories(directoryPath);
					System.out.println(directoryPath+"디렉토리가 생성되었습니다.");
					
				}catch(IOException e) {
					e.printStackTrace();
				}
				
				//이미지저장
				fName=file.getOriginalFilename();
				fsize=file.getSize();
				//확장자 추출 (소문자로 통일)
				String fileExtension=fName.substring(fName.lastIndexOf(".")).toLowerCase();
				//원하는 이름으로 저장하기 = 이름+확장자(이제 필요없는 작업...?)
				//vo.setReview_img("ReviewIMG_"+vo.getReview_no()+fileExtension);
			
				File f = new File("C:/Users/human/git/gitWebProjectMohe/src/main/webapp/resources/files/review/"+folder_name + "/" + "reviewIMG" + fileExtension);
					
				try {
					file.transferTo(f);
					System.out.println("=====>>리뷰 사진 파일이 수정,저장되었습니다.");
				
				} catch (IllegalStateException e) {				
				e.printStackTrace();
				} catch (IOException e) {
				e.printStackTrace();
				}
			}
		}
		
		
		//수정
		@RequestMapping("updateReview.do")
		public String updateReview(ReviewVO vo,MultipartFile file,Model model) {
			if(vo.getPage()=="review") {
				//리뷰모음에서 넘어왔을때
				updateReviewProcess(vo,file,model);
				return "redirect:/review.do";
				
			}else if(vo.getPage()=="mypage") 
				//마이페이지에서 넘어왔을때 
				updateReviewProcess(vo,file,model);
				return "redirect:/myReviewList.do";
		}
		
		//삭제
		@RequestMapping("deleteReview.do")
		public String deleteReview(ReviewVO vo) {
			reviewService.deleteReview(vo);
			
			return "redirect:/review.do";
			
		}
		
		//마이페이지에서 삭제
		@RequestMapping("myReviewDelete.do")
		public String myReviewDelete(ReviewVO vo) {
			reviewService.deleteReview(vo);
			return "redirect:/myReviewList.do";
			
		}
		
	
		
		
	
}
