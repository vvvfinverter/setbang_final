package com.setbang.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setbang.dao.PlanDAO;
import com.setbang.domain.PlanVO;

@Service("PlanService")
public class PlanServiceImpl implements PlanService {
	
    @Autowired
    private PlanDAO planDAO;
 
    @Override
	// 서비스 플랜 결제
    public void planPayment(PlanVO vo) {
    	planDAO.planPayment(vo);
    }

}
