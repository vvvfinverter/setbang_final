package com.setbang.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.setbang.domain.PubOfficeVO;

@Repository("PubOfficeDAO") //현재 class를 dao bean으로 등록
public class PubOfficeDAOImpl implements PubOfficeDAO{
	
	private static final Logger logger = LoggerFactory.getLogger(PubOfficeDAOImpl.class);
	
	@Autowired
	private SqlSessionTemplate mybatis;

	
	/**
	 * 공용 오피스 방 선택하는 콤보상자
	 * @param vo
	 * @return pubComboList
	 */
	@Override
	public List<PubOfficeVO> selectPubOffice(PubOfficeVO vo) {
		
		logger.info("PubOfficeDAO.selectPubOffice 호출");
		
		List<PubOfficeVO> pubComboList = mybatis.selectList("PubOfficeDAO.selectPubOffice",vo);
		
		return pubComboList;
	}
	
	
	/**
	 * booking 테이블 insert
	 * @param vo
	 * @return insertPro
	 */
	@Override
	public int insertPubOffice(PubOfficeVO vo) {
		
		logger.info("PubOfficeDAO.insertPubOffice 호출");
		
		int insertPro = mybatis.insert("PubOfficeDAO.insertOfficeBooking",vo);
		
		return insertPro;
	}


	
	/**
	 * 공용 오피스 콤보상자
	 * @param vo
	 * @return comboList
	 */
	@Override
	public List<PubOfficeVO> selectPutOfficeCombo(PubOfficeVO vo) {
		
		logger.info("PubOfficeDAO.selectPubOfficeCombo 탔음");
		
		List<PubOfficeVO> comboList = mybatis.selectList("PubOfficeDAO.selectPubOfficeCombo");
		
		return comboList;
	}

	/**
	 * 공용오피스 사용여부 Y 변경
	 * @param vo
	 * @return updatePubYn
	 **/
	@Override
	public int updatePubOfficeY(PubOfficeVO vo) {
		
		logger.info("PubOfficeDAO.updatePubOfficeY 탔음");
		
		int updatePubYn = mybatis.update("PubOfficeDAO.updatePubOfficeY", vo);
		
		return updatePubYn;
	}

	/**
	 * 공용오피스 사용여부 N으로 자정이 될 시 자동 변경
	 *  @param vo
	 *  @return autoUpdateProN
	 **/
	@Override
	public int updatePubOfficeN(int pubCode) {
		
		logger.info("PubOfficeDAO.updatePubOfficeN 탔음");
		
		int autoUpdateProN = mybatis.update("PubOfficeDAO.updatePubOfficeN");
		
		return autoUpdateProN;
	}
	
	/**
	 * 공용오피스 예약 자정이 될 시 자동으로 전체 삭제
	 * 
	 */
	@Override
	public void deleteOfficeBooking() {
		
		logger.info("PubOfficeDAO.deleteOfficeBooking 탔음");
		
		mybatis.delete("PubOfficeDAO.deleteOfficeBooking");
		
	}

	/** 
	 *  공용 오피스 방 선택시 ajax이용해서 라디오 상자와 상호작용
	 *  이부분은 공용 오피스 코드와 pubTime, bookStart 가 일치하는 경우엔 라디오 상자 사용 불가능하게 하는 기능
	 *  @param vo
	 *  @return
	 **/
	@Override
	public PubOfficeVO selectComparetimes(PubOfficeVO vo) {
		
		logger.info("PubOfficeDAO.compareTimes 라디오 상자 시간비교");
		PubOfficeVO compareTimes = mybatis.selectOne("PubOfficeDAO.compareTimes",vo);
		
		return compareTimes;
	}
	
	
	
	/**
	 * 공용 오피스 카테고리 
	 * @param vo
	 * @return cat
	 */
	@Override
	public PubOfficeVO selectPubCat(PubOfficeVO vo) {
		
		logger.info("PubOfficeDAO.selectPubCat 탔음");
		PubOfficeVO cat = mybatis.selectOne("PubOfficeDAO.selectPubCat",vo);
		
		return cat;
	}
	
	
	/**
	 * memcode 조회 그러나 성민이 코드를 공유해서 사용 중이라 현재 사용 안하고 있음
	 * @param vo
	 * @return
	 */
	@Override
	public PubOfficeVO selectMemCode(PubOfficeVO vo) {
		logger.info("PubOfficeDAO.selectMemCode 탔음");
		return mybatis.selectOne("PubOfficeDAO.selectMemCode", vo);
	}
	

	
}
