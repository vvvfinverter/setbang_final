package com.setbang.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.setbang.domain.InsertMemberVO;
import com.setbang.service.InsertMemberService;

@Controller
public class InsertMemberController {
	
	@Autowired
	private InsertMemberService insertmemberService;
	
	@RequestMapping(value = "insertInfo.do", method = RequestMethod.POST)
	public String viewInsert(InsertMemberVO vo)throws IOException {
		insertmemberService.insertInfo(vo);
		return "redirect:/";
	}	 
				
}
