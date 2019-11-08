package project.Sell.P001.D002.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import project.Sell.P001.D001.vo.S_P001_D001VO;
import project.Sell.P001.D002.vo.S_P001_D002VO;

public interface S_P001_D002DAO {

	public List<S_P001_D001VO> high_category(Map<String, Object> searchMap2) throws DataAccessException;
	public List<S_P001_D001VO> middle_category(Map<String, Object> searchMap2) throws DataAccessException;
	public List<S_P001_D002VO> detailProduct(Map<String, Object> searchMap) throws DataAccessException;
	public List<S_P001_D002VO> auction_left_date(Map<String, Object> searchMap) throws DataAccessException;
}