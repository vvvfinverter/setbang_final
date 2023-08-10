package com.setbang.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setbang.dao.SupportDAO;
import com.setbang.domain.SupportVO;

@Service("SupportService")
public class SupportServiceImpl implements SupportService{
	
	
	@Autowired
	private SupportDAO supportDAO;
	
	// 업무지원신청
	public SupportVO insertApply(SupportVO vo) {
		return supportDAO.insertApply(vo);
	}
	
	public SupportVO selectUser(String id) {
		System.out.println("S: readMember() 실행");
		SupportVO vo = null;
		
		try {
			vo = supportDAO.selectUser(id);
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		
		return vo;
	}

}
