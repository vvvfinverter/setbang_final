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
    public void insertApply(SupportVO vo) {
    	System.out.println("s"+vo.getSup_code());
    	supportDAO.insertApply(vo);
    	
    }
    
    
	// Session에 있는 id로 Mem_code 찾기
    public int findMemcode(String id) {
        return supportDAO.findMemcode(id);
    }
    
    
	
	public SupportVO selectUser(String id) {
		System.out.println("S: selectUser() 실행");
		SupportVO vo = null;
		
		try {
			vo = supportDAO.selectUser(id);
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		
		return vo;
	}

	public String findEmail(String id) {
	       return supportDAO.findEmail(id);
	}

}
