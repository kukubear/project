package project.CS.P001.D001.service;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import project.CS.P001.D001.vo.CS_P001_D001VO;
import project.CS.P001.D001.vo.PagingVO;

public interface CS_P001_D001Service {
	public List listEvent(PagingVO vo) throws DataAccessException;
	public List<Map<String, Object>> selectBoardDetail(Map<String, Object> dataMap) throws DataAccessException; /* 공지사항 목록 */
	public int countBoard();

	public List listDelivery() throws DataAccessException;

	public List<Map<String, Object>> selectAlldeliveryList(Map<String, Object> dataMap) throws DataAccessException;

	public List listRefund() throws DataAccessException;
    public List<Map<String, Object>> selectAllrefundList(Map<String, Object> dataMap) throws DataAccessException;

	public List listTop() throws DataAccessException;
    public List<Map<String, Object>> selectAlltopList(Map<String, Object> dataMap) throws DataAccessException;
	
    public List listNotice() throws DataAccessException;
    public List<Map<String, Object>> selectAllnoticeList(Map<String, Object> dataMap) throws DataAccessException;
    
	public List listCou() throws DataAccessException;
	  public List<Map<String, Object>> selectAllcouList(Map<String, Object> dataMap) throws DataAccessException;
	  
	public List listOrd() throws DataAccessException;
	 public List<Map<String, Object>> selectAllordList(Map<String, Object> dataMap) throws DataAccessException;
}
