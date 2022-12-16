package controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import dto.Commt;
import dto.Member;
import dto.StudyBoard;
import service.face.SboardService;
import util.Paging;


@Controller
public class SboardController {
	
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired SboardService sboardService;
	
	@RequestMapping("/sboard/main")
	public void sboardmain(
			
			@RequestParam(defaultValue = "0") int curPage
			,Member authority
			,Member member
			,Model model
			
			) {
		Paging paging = sboardService.getPaging(curPage);
		logger.debug("{}", paging);
		model.addAttribute("paging", paging);
		
		ArrayList<HashMap<String, Object>> slist = sboardService.selectSboardHash(paging);
		
		//로그인 연결 후 구현
		//권한이 2이거나 3일때만 리스트에 보이도록 구현
//		if ( member.getAuthority() == 2 || member.getAuthority() == 3) {
			for( HashMap<String, Object> s : slist )
				logger.debug("{}", s);
		
			model.addAttribute("slist", slist);
			
//			return "/sboard/main";
			
//		} else {
//			return "redirect:/sboard/main";
//		}
		
	}
	
	@RequestMapping("/sboard/detail")
	public void sboarddetail(
			
			int studyNo
			, Model model
			
			) {
		
		logger.debug("{}", studyNo);
		
		//게시글 조회
		HashMap<String, Object> Sboarddetail = sboardService.detail(studyNo);
		logger.debug("조회된 게시글 {}", Sboarddetail);
		
		//모델값 전달
		model.addAttribute("detailSboard", Sboarddetail);
		
		//댓글 보여주기
		ArrayList<HashMap<String, Object>> sboardclist = sboardService.sboardcmt(studyNo);
			for( HashMap<String, Object> sc : sboardclist )
				logger.debug("{}", sc);
	
			model.addAttribute("slist", sboardclist);
			
			return;
	}
	
	@GetMapping("/sboard/enroll")
	public void enroll() {}

	@PostMapping("/sboard/enroll")
	public String enrollproc(
			
			Member member
			,StudyBoard sboard
			,HttpSession session
			
			) {
		
		logger.debug("{}", sboard);
		
		//작성자 정보 추가
//		sboard.setMemberNo( (int) session.getAttribute("member_no"));
		
		int member_no = (int) session.getAttribute("member_no");
		sboard.setMemberNo(member_no);
		
		sboardService.enroll(sboard);
		
		//스터디 게시판 메인으로 리다이렉트
		return "redirect:/sboard/main";
	}
	
	@GetMapping("/sboard/update")
	public void update(
			
			int studyNo
			,Model model
			
			) {
		logger.info("{}", studyNo);
		
		//게시글 조회
		HashMap<String, Object> Sboarddetail = sboardService.detail(studyNo);
		logger.debug("조회된 게시글 {}", Sboarddetail);
		
		//모델값 전달
		model.addAttribute("updateSboard", Sboarddetail);
		
	}
	
	@PostMapping("/sboard/update")
	public String updateproc(
			
			StudyBoard sboard
			,HttpSession session
			
			) {
		logger.debug("{}", sboard);

		sboardService.update(sboard);
		
		return "redirect:/sboard/detail";
		
	}
	
	@RequestMapping("/sboard/delete")
	public String delete(
			
			StudyBoard sboard
			
			) {
		logger.debug("{}", sboard);
		
		sboardService.delete(sboard);
		
		return "redirect:/sboard/main";
		
	}
	
	@RequestMapping("/sboard/kakaomap")
	public void kakaoMap() {
		
	}
	
	@RequestMapping("/sboard/cmt")
	public void cmtlist(
			
			int studyNo
			,Model model
			
			) {
		
		ArrayList<HashMap<String, Object>> sboardclist = sboardService.sboardcmt(studyNo);
		logger.debug("{}", sboardclist);
		
		model.addAttribute("sboardclist", sboardclist);
		
		int scmtcnt = sboardService.getScmtcnt(studyNo);
		model.addAttribute("scmtcnt", scmtcnt);
//		sboardService.sboardcmtcnt(studyNo);
	}
	
	@GetMapping("/sboard/writcmt")
	public void cmtwrite() {}
	
	@PostMapping("/sboard/writecmt")
	public void cmtwriteproc(
			
			Member member
			,Commt commt
			,StudyBoard sboard
			,HttpSession session
			
			) {
		
		logger.debug("{}", sboard);
		
		//작성자 정보
		int member_no = (int) session.getAttribute("member_no");
		sboard.setMemberNo(member_no);
		
		sboardService.insertcmmt(commt);
		
	}
	
	@RequestMapping("/sboard/deletecmt")
	public void cmtdelete(
			
			int commtNo
			, Commt commt
			
			) {
		
		sboardService.deletecmt(commtNo);
		
	}
	
	
	//----------------------------------------------------------------------------------------------------
	
	@GetMapping("/sboard/getSearchList")
	@ResponseBody
	public List<StudyBoard> getSearchList(
			
			@RequestParam("keyword") String keyword
			, Model model
			
			) throws Exception {
		
		logger.info("keyword {}", keyword);
		
		StudyBoard sboard = new StudyBoard();
		sboard.setKeyword(keyword);
		return sboardService.getSearchList(sboard);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
