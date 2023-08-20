package com.setbang.dao;


import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setbang.domain.PlanVO;

@Repository("PlanDAO")
public class PlanDAOImpl implements PlanDAO{
	private static final Logger logger = LoggerFactory.getLogger(PlanDAOImpl.class);

	@Autowired
	private SqlSessionTemplate mybatis;

    @Override
	/// 서비스 플랜 결제
    public void planPayment(PlanVO vo) {
		// TODO Auto-generated method stub
		logger.info("planPayment DAO");
		System.out.println("=> Mybatis planPayment() 호출");
        mybatis.insert("PlanDAO.planPayment", vo);
    }
   
}
