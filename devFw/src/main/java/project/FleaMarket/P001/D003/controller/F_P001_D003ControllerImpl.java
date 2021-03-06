package project.FleaMarket.P001.D003.controller;

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

import project.FleaMarket.P001.D003.service.F_P001_D003Service;
import project.FleaMarket.P001.D003.vo.F_P001_D003VO;

@Controller("F_P001_D003Controller")
public class F_P001_D003ControllerImpl implements F_P001_D003Controller {
	private static final Logger logger = LoggerFactory.getLogger(F_P001_D003ControllerImpl.class);
	@Autowired
	F_P001_D003Service d003Service;
	@Autowired
	F_P001_D003VO d003VO;

	@Override
	@RequestMapping(value = "/fleaCreateStoreProgress.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView fleaCreateStoreProgress(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		Map<String, Object> searchMap = new HashMap<String, Object>(); 
		List list = d003Service.searchList(searchMap);
		System.out.println("dataMap::::::::::" + list);

		ModelAndView mav = new ModelAndView("FleaMarket/p001_d003_fleaCreateStoreProgress");
		mav.addObject("searchList", list);
		return mav;
	}	
	
}
