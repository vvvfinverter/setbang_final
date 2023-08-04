package com.setbang.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.setbang.domain.MemberVO;
import com.setbang.service.MemberService;


@Controller
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	
	
	// 마이페이지 컨트롤러 새로 만들고 POST 방식으로 redirect 시켜야함
	@RequestMapping(value = "myPage.do", method = RequestMethod.GET)
	public String myPage(MemberVO vo){
		return "/member/myPage";
		}
	
	// 로그인 페이지로 이동
	@RequestMapping(value = "loginPage.do", method = RequestMethod.GET)
	public String loginPage(MemberVO vo){
		return "/member/login_signup";
		}

	// 로그인 실행
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String getLogin(MemberVO vo, HttpSession session, HttpServletRequest request, HttpServletResponse response){
		
		
		 //form에서 입력한 값 받기 
		//String id = request.getParameter("id"); 
		//String pw = request.getParameter("pw");
		
		
		MemberVO login = memberService.getLogin(vo);
		
		
		if(login == null || login.getId() == null) { 
		// 로그인 실패 (알림창 or 비동기로 로그인에 실패하였습니다. 아이디나 비밀번호를 확인해주세요. 띄우기)
		System.out.println("로그인 실패");
		return "/member/login_signup";
	} else {									
		// 로그인 성공 (알림창으로 환영합니다. OOO 고객님 or 그냥 바로 넘어가기)
		System.out.println("[" + login.getId() + "] 로그인 접속"); 
		session.setAttribute("sessionId", login.getId());
	}
		
		return "redirect:/";
 }
	
	// 로그아웃
	@RequestMapping(value = "logout.do", method = RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		session.invalidate();
		
		return "redirect:/";
	}
		
}
