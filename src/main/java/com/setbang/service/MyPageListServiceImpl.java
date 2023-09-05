package com.setbang.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.setbang.dao.MyPageListDAO;
import com.setbang.domain.MyPageListVO;

@Service("MypageListService")
public class MyPageListServiceImpl implements MyPageListService{

	private static final Logger logger = LoggerFactory.getLogger(MyPageListServiceImpl.class);
	
	@Autowired
	private MyPageListDAO myPageListDAO;
	
	// mem_code 찾기
	public int findmemcode(String id) {
		System.out.println("가져가라 : " + id);
		myPageListDAO.findmemcode(id);
		return myPageListDAO.findmemcode(id);
	}

	@Override
	public List<MyPageListVO> supportlist(int mem_code) {
		// TODO Auto-generated method stub
		System.out.println("supportlist " + mem_code);
		myPageListDAO.supportlist(mem_code);
		return myPageListDAO.supportlist(mem_code);
	}

	@Override
	public List<MyPageListVO> partnerlist(int mem_code) {
		// TODO Auto-generated method stub
		System.out.println("partnerlist " + mem_code);
		myPageListDAO.partnerlist(mem_code);
		return myPageListDAO.partnerlist(mem_code);
	}

	@Override
	public List<MyPageListVO> pubbookinglist(int mem_code) {
		// TODO Auto-generated method stub
		System.out.println("pubbookinglist " + mem_code);
		myPageListDAO.pubbookinglist(mem_code);
		return myPageListDAO.pubbookinglist(mem_code);
	}

	@Override
	public List<MyPageListVO> itemlist(int mem_code) {
		// TODO Auto-generated method stub
		System.out.println("itemlist " + mem_code);
		myPageListDAO.itemlist(mem_code);
		return myPageListDAO.itemlist(mem_code);
	}
	
	@Override
	// 임대차계약서 현황
	public List<MyPageListVO> constractlist(int mem_code) {
		System.out.println("constractlist " + mem_code);
		myPageListDAO.constractlist(mem_code);
		return myPageListDAO.constractlist(mem_code);
	}
	
	/**
	 * 물품신청 취소 delete 문 실행
	 * @param vo
	 */
	@Override
	@Transactional
	public void deleteItemApply(List<MyPageListVO> voList) {

		logger.info("MyPageListService.deleteItemApply");
		
        // 삭제 로직 수행
    	for (MyPageListVO vo : voList) {
    		myPageListDAO.deleteItemApply(vo);
	    }

	}
	
}
