package com.setbang.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.setbang.domain.CardVO;
import com.setbang.domain.MemberVO;
import com.setbang.domain.PlanVO;
import com.setbang.service.MemberService;


@Controller
public class PlanController {
	private static final Logger logger = LoggerFactory.getLogger(PlanController.class);
	
	@Autowired
	private MemberService memberService;
	
	// 서비스 플랜 결제 페이지로 이동
    @RequestMapping(value = "planPayment.do", method = RequestMethod.GET)
    public String planPayment(HttpSession session, Model model) {
        String sessionId = (String) session.getAttribute("sessionId");
        if (sessionId != null) {
                return "/plan/planPayment";
            }
        return "redirect:/loginPage.do";
    }
 
		
}
