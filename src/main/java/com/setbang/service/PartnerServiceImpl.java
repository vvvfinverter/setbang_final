package com.setbang.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setbang.dao.PartnerDAO;
import com.setbang.domain.PartnerVO;

@Service("PartnerService")
public class PartnerServiceImpl implements PartnerService{

	@Autowired
	private PartnerDAO partnerDAO;
	
	
	//세션아이디로 신청페이지에 자동으로 이름, 전화번호 들어감
	@Override
	public PartnerVO selectInfo(String id) {
		// TODO Auto-generated method stub
		System.out.println("S: readinfo() 실행");
		PartnerVO vo = null;
		try {
			vo = partnerDAO.selectInfo(id);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return vo;
	}
	
	//세션아이디로 신청페이지에 자동으로 업체 들어감
	@Override
	public String selectCompany(String id) {
		// TODO Auto-generated method stub
		System.out.println("S: selectCompany() 실행");
		return partnerDAO.selectCompany(id);
	}

	//세션아이디로  mem_code찾기
	@Override
	public int followMemCode(String id) {
		// TODO Auto-generated method stub
		System.out.println("S: followMemcode() 실행");
		return partnerDAO.followMemCode(id);
	}
	
	//세션아이디로  name 찾기
	@Override
	public String followName(String id) {
		// TODO Auto-generated method stub
		System.out.println("S: followName() 실행");
		return partnerDAO.followName(id);
	}

	//세션아이디로 tel 찾기
	@Override
	public String followTel(String id) {
		// TODO Auto-generated method stub
		System.out.println("S: followtel() 실행");
		return partnerDAO.followTel(id);
	}
	
	//협력업체 서비스 신청
	@Override
	public void insertCompany(PartnerVO vo) {
		// TODO Auto-generated method stub
		System.out.println("S: insertCompany() 실행");
		System.out.println("S :"+ vo.getPtr_name());
		partnerDAO.insertCompany(vo);
	}

}
