package project.Sell.P001.D002.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface S_P001_D002Controller {
	public ModelAndView detailProduct(String prod_number, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public void likeProd(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public void paging(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
