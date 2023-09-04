package com.setbang.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setbang.domain.ItemVO;

@Repository("ItemDAO")
public class ItemDAOImpl implements ItemDAO{
	private static final Logger logger = LoggerFactory.getLogger(ItemDAOImpl.class);
	
	@Autowired
	private SqlSessionTemplate mybatis;

	// i_cat_code로 item리스트 가져와서 List에 담기 
	@Override
	public List<ItemVO> selectItem(int icatcode) {
		// TODO Auto-generated method stub
		System.out.println("=> Mybatis selectItem() 호출");
		return mybatis.selectList("ItemDAO.selectItem", icatcode);
	}

	@Override
	public List<ItemVO> selectItemName(int itemCode) {
		// TODO Auto-generated method stub
		System.out.println("=> Mybatis selectItemName() 호출");
		return mybatis.selectList("ItemDAO.selectItemName", itemCode);
	}

	// mem_code 가져오기
	@Override
	public int getMemCodeBySessionId(String id) {
		// TODO Auto-generated method stub
		System.out.println("id : " + id);
		System.out.println("=> Mybatis getMemCodeBySessionId() 호출");
		return mybatis.selectOne("ItemDAO.findmemcode", id);
	}

	// 주문 insert
	@Override
	public void insetOrder(ItemVO vo) {
		// TODO Auto-generated method stub
		
		System.out.println("=> Mybatis insetOrder() 호출");
		mybatis.insert("ItemDAO.orderinsert", vo);
		
	}



}
