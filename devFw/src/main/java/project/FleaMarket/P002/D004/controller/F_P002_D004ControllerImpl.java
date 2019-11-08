package project.FleaMarket.P002.D004.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import project.FleaMarket.P002.D004.dao.F_P002_D004DAO;
import project.FleaMarket.P002.D004.service.F_P002_D004Service;
import project.FleaMarket.P002.D004.vo.F_P002_D004VO;

@Controller("F_P002_D004Controller")
public class F_P002_D004ControllerImpl implements F_P002_D004Controller {
	private static final Logger logger = LoggerFactory.getLogger(F_P002_D004ControllerImpl.class);
	@Autowired
	F_P002_D004Service d004Service;
	@Autowired
	F_P002_D004VO d004VO;
	
	@Override
	@RequestMapping(value = "/fleaProduct.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView fleaProduct(@RequestParam(value="p_id", required=false) String p_id, HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		Map<String, Object> searchMap = new HashMap<String, Object>();
		searchMap.put("p_id", p_id);	 
		System.out.println("p_id =" + p_id);
		
		List list = d004Service.searchList(searchMap);
		
		for(int i = 0; i < list.size(); i++)
		{
			System.out.println(list.get(i));
		}
		
		ModelAndView mav = new ModelAndView("FleaMarket/p002_d004_fleaProduct");
		mav.addObject("searchList", list);
		return mav;
	}

}