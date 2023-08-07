package com.setbang.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setbang.dao.InsertMemberDAO;
import com.setbang.domain.InsertMemberVO;

@Service("InsertMemberService")
public class InsertMemberServiceImpl implements InsertMemberService{

		@Autowired
		private InsertMemberDAO insertmemberDAO;
		
		public void insertInfo(InsertMemberVO vo) {
			insertmemberDAO.insertInfo(vo);
		}

		@Override
		public InsertMemberVO checkid_mem(InsertMemberVO vo) {
			// TODO Auto-generated method stub
			return insertmemberDAO.checkid(vo);
		}

// 나중에 사용 할 수도 있음 
//		@Override
//		public InsertMemberVO selectComboInd(InsertMemberVO vo) {
//			return insertmemberDAO.selectComboInd(vo);
//		}
		
		
}
