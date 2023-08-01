package com.setbang.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.setbang.domain.MemberVO;
import com.setbang.service.MemberService;

@Controller
public class Membercontroller {
	
	@Autowired
	private MemberService memberService;
	
	
	@RequestMapping("/selectMember.do")
	public void selectMember(MemberVO vo, Model model) {
		model.addAttribute("Member", memberService.selectMember(vo));
	}

}
