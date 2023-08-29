package com.setbang.controller;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.setbang.domain.InqueryVO;
import com.setbang.domain.MemberVO;
import com.setbang.service.InqueryService;

@Controller
public class InqueryController {
	private static final Logger logger = LoggerFactory.getLogger(SupportController.class);	
	
	@Autowired
	private InqueryService inqueryService;
	
	// 로그인 페이지로 이동
	@RequestMapping(value = "inquery.do", method = RequestMethod.GET)
	public String loginPage(MemberVO vo){
		return "/inquery/inquery";
		}
	
	@RequestMapping(value="inquery2.do")
	public String insertInquery(InqueryVO vo) throws IOException {
		inqueryService.insertInquery(vo);
		return "redirect:/inquery.do";
	}
	
	
	@RequestMapping(value="chatbot.do")
	public String chatbot(InqueryVO vo) {
		return "/inquery/chatbot";
	}
	
    @RequestMapping("/mail")
    public void sendEmailAction(InqueryVO vo) throws Exception{
        
        System.out.println("Email Controller");
        
        vo.setReceiver("choitk5639@gmail.com");
        vo.setContent("내용이 들어갑니다");
        vo.setSubject("제목이 들어갑니다");
 
    	
        
//        inqueryService.SendEmail
     
        
    }	

}
