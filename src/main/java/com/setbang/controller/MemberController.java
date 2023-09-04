package com.setbang.controller;

import java.util.List;
import java.util.UUID;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.setbang.domain.CardVO;
import com.setbang.domain.MemberVO;
import com.setbang.service.CardService;
import com.setbang.service.MemberService;



@Controller
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private CardService cardService;
	
	// 회원 정보 변경
	@RequestMapping(value = "updateMemberInfo.do", method = RequestMethod.POST)
	public String updateMemberInfo(HttpSession session, Model model,
									@RequestParam("pw") String pw,
									@RequestParam("tel") String tel,
									@RequestParam("email") String email,
									@RequestParam("ind_code") int ind_code,
									@RequestParam("business_no") String business_no,
									@RequestParam("addr") String addr,
									@RequestParam("checkPw") String checkPw){
		
	    // 세션에서 회원정보 가져오기
	    String sessionId = (String) session.getAttribute("sessionId");
	    
	    // 회원아이디로 회원코드 가져오기
	    int memCode = memberService.getMemCodeBySessionId(sessionId);
	    	    		
	    		
	    if (memCode != 0 ) { 
			MemberVO vo = new MemberVO();
			vo.setMem_code(memCode);
			vo.setPw(pw);
			vo.setTel(tel);
			vo.setEmail(email);
			vo.setInd_code(ind_code);
			vo.setBusiness_no(business_no);
			vo.setAddr(addr);

			// 회원 정보 변경 서비스 불러오기
			memberService.updateMemberInfo(vo);
			
		}
		return "redirect:/myPageInfo.do";
	}
	
	// 프로필 사진 변경
	@RequestMapping(value = "updateProfile.do", method = RequestMethod.POST)
	public String updateProfile(HttpSession session, Model model,
								@RequestParam("file") MultipartFile file){
		
		// 세션에서 회원정보 가져오기
	    String sessionId = (String) session.getAttribute("sessionId");
	    
	    // 회원아이디로 회원코드 가져오기
	    int memCode = memberService.getMemCodeBySessionId(sessionId);
	    if (memCode != 0) { 
			MemberVO vo = new MemberVO();
			vo.setMem_code(memCode);
	        vo.setProfile_name(file.getOriginalFilename()); // 파일명
	        vo.setProfile(UUID.randomUUID().toString() + "_" + file.getOriginalFilename()); // 파일명
	        vo.setProfile_size(file.getSize());             // 파일 사이즈

	        // 프로필 변경하는 서비스 불러오기
			memberService.updateProfile(vo);
			
	        // 세션아이디로 프로필 가져오기
	        String profile = memberService.getProfileBySessionId(sessionId);
	        model.addAttribute("profile", profile);
	        session.setAttribute("sessionProfile", profile);
			
		}
		return "redirect:/myPageInfo.do";
	}
	
	
	// 회원정보 수정 페이지로 이동
    @RequestMapping(value = "myPageInfo.do", method = RequestMethod.GET)
    public String myPageInfo(MemberVO vo, HttpSession session, Model model) {
        String sessionId = (String) session.getAttribute("sessionId");
        if (sessionId != null) {
            model.addAttribute("member", sessionId);
            return "/myPage/myPageInfo";
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
            return "/myPage/myPagePwCheck";
        }
    }

    // 회원정보 수정 전 비밀번호 확인 페이지로 이동 
    @RequestMapping(value = "myPagePwCheck.do", method = RequestMethod.GET)
    public String myPagePwCheck(HttpSession session, Model model) {
        String sessionId = (String) session.getAttribute("sessionId");
        if (sessionId != null) {
            model.addAttribute("sessionId", sessionId);
            return "/myPage/myPagePwCheck";
        } else {
            return "redirect:/loginPage.do";
        }
    }
	
	// 마이페이지로 이동 (간편 카드로 이동)
	@RequestMapping(value = "myPage.do", method = RequestMethod.GET)
	public String myPage(HttpSession session, Model model) {
	        String sessionId = (String) session.getAttribute("sessionId");
	        if (sessionId != null) {
	            int memCode = memberService.getMemCodeBySessionId(sessionId);
	            if (memCode != 0) {
	                // 등록된 카드 불러오기
	                CardVO card = new CardVO();
	                card.setMem_code(memCode);
	                List<CardVO> cardList = cardService.getCardList(card);
	                model.addAttribute("cardList", cardList);
	                
	                return "/myPage/myPageCard";
	            }
	        }
	        return "redirect:/loginPage.do";
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
				model.addAttribute("id", member.getId());
			}
			
			return "/member/findPw";
		}
	
	// 로그인 실행
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String getLogin(MemberVO vo, Model model, HttpSession session, 
			HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes){
		
		MemberVO member = memberService.getLogin(vo);
		
	    // 회원아이디로 회원승인여부 가져오기 
		String memApproval = member.getApproval();
		
	if(member != null && memApproval.equals("Y")) { 
		session.setAttribute("sessionId", member.getId());
		session.setAttribute("sessionPw", member.getPw());
		session.setAttribute("sessionName", member.getName());

		// 세션아이디로 회원플랜등급 가져오기
		String sessionId = (String) session.getAttribute("sessionId");
        String memPlan = memberService.getMemPlanBySessionId(sessionId);
        model.addAttribute("memPlan", memPlan);
        session.setAttribute("sessionMemPlan", memPlan);
        
        // 세션아이디로 프로필 가져오기
        String profile = memberService.getProfileBySessionId(sessionId);
        model.addAttribute("profile", profile);
        session.setAttribute("sessionProfile", profile);
		
//		// session 시간 설정 (30분) - 1분으로 실험했고, 잘 동작함 + web에 설정함
//		session.setMaxInactiveInterval(30*60);
        
	} else {				
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
