package project.Customers.P002.D002.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface C_P002_D002Controller {

	ModelAndView mypage(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
}
