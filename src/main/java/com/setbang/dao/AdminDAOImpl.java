package com.setbang.dao;

import java.util.HashMap;
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
	

	
	
}
