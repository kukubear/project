package project.Buy.P001.D003.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

public interface B_P001_D003Controller {

		//��ٱ��� ��ȸ
		public ModelAndView selectCart(HttpSession session,HttpServletRequest request, HttpServletResponse response) throws Exception;
		//��ٱ��� ���� 
		public ModelAndView editCart(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception;
		//��ٱ��� �߰�
		public ModelAndView addCart(HttpSession session,HttpServletRequest request, HttpServletResponse response) throws Exception;
		//��ٱ��� ����
		public ModelAndView delCart(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
