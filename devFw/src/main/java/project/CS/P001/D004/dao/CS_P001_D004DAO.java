package project.CS.P001.D004.dao;

import java.util.Map;

import project.CS.P001.D004.vo.CS_P001_D004VO;

public interface CS_P001_D004DAO {
	
	public int insertboard(CS_P001_D004VO board) throws Exception;
	public int deleteboard(CS_P001_D004VO board) throws Exception;
	public void updateboard(Map<String, Object> dataMap) throws Exception;

}
