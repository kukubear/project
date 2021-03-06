package project.Customers.P006.D001.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import project.Customers.P006.D001.dao.C_P006_D001DAO;
import project.Customers.P006.D001.vo.C_P006_D001VO;


@Service("C_P006_D001Service")
public class C_P006_D001ServiceImpl implements C_P006_D001Service{

		@Autowired
		private C_P006_D001DAO c_p006_d001dao;

		@Override
		public List<C_P006_D001VO> searchList(Map<String, Object> searchMap) throws DataAccessException {
			List<C_P006_D001VO> list =  c_p006_d001dao.searchList(searchMap); 
			return list;
		}

		@Override
		public void saveData(Map<String, String[]> dataMap)  throws DataAccessException  {
			String[] status = dataMap.get("STATUS");
			String[] blacklist_yn = dataMap.get("blacklist_yn");
			int length = status.length; // row수ㅜ
			int i = 0;
			
			for(String str : status) {
				Map<String, String> row = getRow(dataMap, length, i); // 현재 Index의 RowMap
				if("U".equals(str)) { // 수정
					c_p006_d001dao.updateData(row);
					for(String str1 : blacklist_yn) {
						if("N".equals(str1)) {
							c_p006_d001dao.member_again_insert(row);
							c_p006_d001dao.black_out_again(row);
						}
					}
		
				}else if("D".equals(str)) { // 삭제
					c_p006_d001dao.deleteData(row);
				}
				i++;
			}
			
		}
		
		private Map getRow(Map<String, String[]> dataMap, int length, int index) {
			Map<String, String> row = new HashMap<String, String>();
			for(String name : dataMap.keySet()) {
				String[] data = dataMap.get(name);
				if(length == data.length) {
					row.put(name, data[index]);
				}
			}		
			return row;
		}	

	}