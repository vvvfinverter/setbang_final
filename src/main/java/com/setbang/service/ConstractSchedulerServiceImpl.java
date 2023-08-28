package com.setbang.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setbang.dao.ConstractDAO;
import com.setbang.domain.ConstractVO;

@Service("ConstractSchedulerService")
public class ConstractSchedulerServiceImpl implements ConstractSchedulerService{

	@Autowired
	private ConstractDAO constractDAO;
	
	
	// 자동으로 개인오피스 사용여부 Y -> N 으로 변경
	public void autoPrivYn(ConstractVO vo) {
		constractDAO.autoPrivYn(vo);
	}
	
}
