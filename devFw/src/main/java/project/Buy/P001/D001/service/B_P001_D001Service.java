package project.Buy.P001.D001.service;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import project.Buy.P001.D003.vo.B_P001_D003VO;

public interface B_P001_D001Service {
	 public List<B_P001_D003VO> selectCart(Map<String, Object> searchMap) throws DataAccessException;
	 public void insertCart(Map<String, Object> searchMap) throws DataAccessException;
	 public void updateCart(Map<String, Object> searchMap) throws DataAccessException;
	 public void deleteCart(Map<String, Object> searchMap) throws DataAccessException;

}
