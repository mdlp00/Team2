package controller.dog;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.MainController;

public class Support implements MainController{

	@Override
	public String executeC3(HttpServletRequest req, HttpServletResponse resp) {
		String view = "support.jsp";
		return view;
	}
	
}
