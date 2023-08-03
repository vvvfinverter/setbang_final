package com.setbang.controller;

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
	

	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String getLogin(MemberVO vo, HttpSession session){
		logger.debug("getLogin 컨트롤러");
		System.out.println("systemout getlogIn 컨트롤러");
		
		MemberVO login = memberService.getLogin(vo);
		System.out.println("login : " + login.getId()); 
		
		if(login == null || login.getId() == null) { //로그인 실패
			return "/view/member/index";
		} else {									// 로그인 성공
			System.out.println("[" + login.getId() + "] 로그인 접속"); 
			
			session.setAttribute("id", login.getId());
		}
		return "/view/member/index";
	}
		
}
