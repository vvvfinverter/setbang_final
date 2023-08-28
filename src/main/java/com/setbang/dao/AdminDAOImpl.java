package com.setbang.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setbang.domain.AdminVO;

@Repository("AdminDAO")
public class AdminDAOImpl implements AdminDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 관리자 로그인
	@Override
	public AdminVO findAdmin(AdminVO vo) {
		System.out.println("=> Mybatis findAdmin() 호출");	
		return mybatis.selectOne("AdminDAO.findadmin", vo);		
	}

	
	// 회원 총인원 추출
	@Override
	public int totalMember() {
		// TODO Auto-generated method stub
		System.out.println("=> Mybatis totalMember() 호출");	
	    return mybatis.selectOne("AdminDAO.totalmember");
	}

	
	// 임대차계약서 text 박스에 기입된 이름으로 member 테이블에서 임차인 이름 찾아서 가져오기
	@Override
	public int findmemcode(String lessee_name, String lessee_tel) {
		System.out.println("lessee_name :" + lessee_name);
		System.out.println("lessee_tel :" + lessee_tel);
		System.out.println("=> Mybatis findmemcode() 호출");
		
	    Map<String, String> paramMap = new HashMap<>();
	    paramMap.put("lessee_name", lessee_name);
	    paramMap.put("lessee_tel", lessee_tel);
	    
	    return mybatis.selectOne("AdminDAO.findmemcode", paramMap);
	}

	
	// 임대차계약서 check박스에 선택한 지점의 value값으로 priv_code 찾기
	@Override
	public int findprivecode(int priv_code) {
		// TODO Auto-generated method stub
		System.out.println("=> Mybatis findprivecode() 호출");
		return mybatis.selectOne("AdminDAO.findprivcode", priv_code);
	}
	
	
	// 임대차계약서 insert
	@Override
	public void insertcontract(AdminVO vo) {
		System.out.println("=> Mybatis insertcontract() 호출");
		mybatis.insert("AdminDAO.insertcontract", vo);
	}
	
	
	// 임대차계약서 인서트시 개인오피스 테이블에 Priv_yn값이 'N' -> 'Y'로 변경
	@Override
	public void updatePrivYn(AdminVO vo) {
		// TODO Auto-generated method stub
		System.out.println("=> Mybatis updatePrivYn() 호출");
		mybatis.update("AdminDAO.updatePrivYn", vo);		
	}

	
	// 지점별 회원수 추출
	//1. 구로지점
	@Override
	public int guromember() {
		// TODO Auto-generated method stub
		System.out.println("=> Mybatis guromember() 호출");	
	    return mybatis.selectOne("AdminDAO.countguro");		
	}

	//2. 판교지점
	@Override
	public int pangyomember() {
		// TODO Auto-generated method stub
		System.out.println("=> Mybatis pangyomember() 호출");	
	    return mybatis.selectOne("AdminDAO.countpangyo");
	}

	//3. 강남지점
	@Override
	public int gangnammember() {
		// TODO Auto-generated method stub
		System.out.println("=> Mybatis gangnammember() 호출");	
	    return mybatis.selectOne("AdminDAO.countgangnam");
	}
	
	
	// 서비스 플랜 회원수 찾기
	// 1. basic
	@Override
	public int basic() {
		System.out.println("=> Mybatis basic() 호출");	
	    return mybatis.selectOne("AdminDAO.servicegrade_Basic");	
	}
	
	// 2. standard_monthly
	@Override
	public int standard_monthly() {
		System.out.println("=> Mybatis standard_monthly() 호출");	
	    return mybatis.selectOne("AdminDAO.servicegrade_Standard_monthly");		
	}
	
	// 3. standard_annual
	@Override
	public int standard_annual() {
		System.out.println("=> Mybatis standard_annual() 호출");	
	    return mybatis.selectOne("AdminDAO.servicegrade_Standard_annual");		
	}
	
	// 4. premium_monthly
	@Override
	public int premium_monthly() {
		System.out.println("=> Mybatis premium_monthly() 호출");	
	    return mybatis.selectOne("AdminDAO.servicegrade_premium_monthly");		
	}
	
	// 5. premium_annual
	@Override
	public int premium_annual() {
		System.out.println("=> Mybatis premium_annual() 호출");	
	    return mybatis.selectOne("AdminDAO.servicegrade_premium_annual");		
	}
	
	
	// 문의게시판 내역보기
	@Override
	public List<AdminVO> inqueryList(AdminVO vo) {
		System.out.println("=> Mybatis inqueryList() 호출");	
	    return mybatis.selectList("AdminDAO.inqueryList");		
	}
	
	// 임대차계약서 게시판 계약내역 보기
	@Override
	public List<AdminVO> contractList(AdminVO vo) {
		System.out.println("=> Mybatis contractList() 호출");	
	    return mybatis.selectList("AdminDAO.constractList");		
	}

	
	// 회원가입 승인 목록게시판
	@Override
	public List<AdminVO> memberapprovalList(AdminVO vo) {
		System.out.println("=> Mybatis memberapprovalList() 호출");	
	    return mybatis.selectList("AdminDAO.memberapprovalList");		
	}

	// 회원승인 시 approval 상태가 'Y' -> 'N'으로 변경
	@Override
	   public void modifyApproval(AdminVO vo) {
	      // TODO Auto-generated method stub
	      System.out.println("=> Mybatis modifyApproval() 호출");
	      
	     mybatis.update("AdminDAO.modifyapproval", vo);

	}

}
