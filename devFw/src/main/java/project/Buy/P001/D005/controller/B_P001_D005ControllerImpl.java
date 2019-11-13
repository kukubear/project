package project.Buy.P001.D005.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import project.Buy.P001.D005.service.B_P001_D005Service;


@Controller("B_P001_D005Controller")
public class B_P001_D005ControllerImpl implements B_P001_D005Controller{
	private static final Logger Logger = LoggerFactory.getLogger(B_P001_D005ControllerImpl.class);
	@Autowired
	B_P001_D005Service b_p001_d005Service;


	@Override
	@RequestMapping(value = "/kakaopay.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String kakaopay()  {
		Logger.debug("REST API Start");
		
		Map searchMap = new HashMap();
		return b_p001_d005Service.kakaopayReady(searchMap);	   
	}
	
	@Override
	@RequestMapping(value = "/kakaopaySuccess.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView kakaopaySuccess(HttpServletResponse response) throws Exception {
		
		return null;
	}

	@Override
	@RequestMapping(value = "/kakaopayFail.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView kakaopayFail(HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@RequestMapping(value = "/kakaopayCancel.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView kakaopayCancel(HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	
}
