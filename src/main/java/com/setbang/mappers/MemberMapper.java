package com.setbang.mappers;

import org.apache.ibatis.annotations.Param;

import com.setbang.domain.MemberVO;

public interface MemberMapper {
	
	public MemberVO selectMember(@Param("id") String id, @Param("pw") String pw);

}
