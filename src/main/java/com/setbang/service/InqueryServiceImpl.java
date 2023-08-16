package com.setbang.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setbang.dao.InqueryDAO;
import com.setbang.domain.InqueryVO;

@Service("InqueryService")
public class InqueryServiceImpl implements InqueryService {

	@Autowired
	private InqueryDAO inqueryDAO;
	
	public void insertInquery(InqueryVO vo) {
		System.out.println("s" + vo);
		inqueryDAO.insertInquery(vo);
	}
	
	

}
