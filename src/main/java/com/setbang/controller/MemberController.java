package com.setbang.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.setbang.domain.CardVO;
import com.setbang.domain.MemberVO;
import com.setbang.service.MemberService;


@Controller
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	
	
	// 회원정보 수정 페이지로 이동
    @RequestMapping(value = "myPageInfo.do", method = RequestMethod.GET)
    public String myPageInfo(MemberVO vo, HttpSession session, Model model) {
        String sessionId = (String) session.getAttribute("sessionId");
        if (sessionId != null) {
            model.addAttribute("member", sessionId);
            return "/member/myPageInfo";
        } else {
            return "redirect:/loginPage.do";
        }
    }	
    
    // 비밀번호가 맞으면 회원정보 수정 페이지로 이동
    @RequestMapping(value = "myPageAfterChecking.do", method = RequestMethod.POST)
    public String myPageAfterChecking(HttpSession session, HttpServletRequest request, Model model) {
        String enteredPw = request.getParameter("pw");
        String sessionPw = (String) session.getAttribute("sessionPw");
        
        if (enteredPw != null && sessionPw != null && enteredPw.equals(sessionPw)) {
            return "redirect:/myPageInfo.do";
        } else {
            return "/member/myPagePwCheck";
        }
    }

    // 회원정보 수정 전 비밀번호 확인 페이지로 이동 
    @RequestMapping(value = "myPagePwCheck.do", method = RequestMethod.GET)
    public String myPagePwCheck(HttpSession session, Model model) {
        String sessionId = (String) session.getAttribute("sessionId");
        if (sessionId != null) {
            model.addAttribute("sessionId", sessionId);
            return "/member/myPagePwCheck";
        } else {
            return "redirect:/loginPage.do";
        }
    }
	
	// 마이페이지로 이동
	@RequestMapping(value = "myPage.do", method = RequestMethod.GET)
	public String myPage(HttpSession session, Model model) {
	    String sessionId = (String) session.getAttribute("sessionId");
	    if (sessionId != null) {
	        model.addAttribute("sessionId", sessionId);
	        return "/member/myPage";
	    } else {
	        return "redirect:/loginPage.do";
	    }
	}
	
	
	// 로그인 페이지로 이동
	@RequestMapping(value = "loginPage.do", method = RequestMethod.GET)
	public String loginPage(MemberVO vo){
		return "/member/loginSignup";
		}
	
	
	// 회원가입
	@RequestMapping(value = "signup.do", method = RequestMethod.POST)
	public String getSignup(MemberVO vo) {
		memberService.getSignup(vo);
		return "redirect:/loginPage.do";
	}	 
	
		// 아이디 중복 체크
		@RequestMapping(value = "idCheck.do", method = RequestMethod.POST)
		@ResponseBody
		public String idCheck(@RequestParam("id") String id) {
		    int cnt = memberService.idCheck(id);
		    	return (cnt > 0) ? "false" : "true";
		}

		
		// 아이디 찾기
		@RequestMapping(value = "findId.do", method = RequestMethod.GET)
		public String findId() {
			return "/member/findId";
		}
		
		@RequestMapping(value = "findIdAction.do", method = RequestMethod.POST)
		public String findIdAction(MemberVO vo, Model model) {
			MemberVO member = memberService.findId(vo);
			
			if(member == null) {
				model.addAttribute("check", 1);
			}else {
				model.addAttribute("check", 0);
				model.addAttribute("id", member.getId());
			}
			return "/member/findId";
		}
		
		// 비밀번호 찾기
		@RequestMapping(value="findPw.do", method = RequestMethod.GET)
		public String findPw() {
			return "/member/findPw";
		}
		
		@RequestMapping(value="findPwAction.do", method = RequestMethod.POST)
		public String findPwAction(MemberVO vo, Model model) {
			MemberVO member = memberService.findPw(vo);
			
			if(member == null) { 
				model.addAttribute("check", 1);
			} else { 
				model.addAttribute("check", 0);
				model.addAttribute("updateid", member.getId());
			}
			
			return "/member/findPw";
		}
	
	// 로그인 실행
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String getLogin(MemberVO vo, Model model, HttpSession session, HttpServletRequest request, HttpServletResponse response){
		
		MemberVO member = memberService.getLogin(vo);
		
	if(member != null) { 
		// task - 로그인 성공 (알림창으로 환영합니다. OOO 고객님 or 그냥 바로 넘어가기)
		System.out.println("[" + member.getId() + "] 로그인 접속"); 
		session.setAttribute("sessionId", member.getId());
		session.setAttribute("sessionPw", member.getPw());
		session.setAttribute("sessionName", member.getName());

		// 세션아이디로 회원플랜등급 가져오기
		String sessionId = (String) session.getAttribute("sessionId");
        String memPlan = memberService.getMemPlanBySessionId(sessionId);
        model.addAttribute("memPlan", memPlan);
        session.setAttribute("sessionMemPlan", memPlan);
		
//		// session 시간 설정 (30분) - 1분으로 실험했고, 잘 동작함 + web에 설정함
//		session.setMaxInactiveInterval(30*60);
	} else {									
		// task - 로그인 실패 (알림창 or 비동기로 로그인에 실패하였습니다. 아이디나 비밀번호를 확인해주세요. 띄우기)
		System.out.println("로그인 실패");
		return "/member/loginSignup";
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
