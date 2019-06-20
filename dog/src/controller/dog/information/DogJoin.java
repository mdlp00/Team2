package controller.dog.information;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.MainController;

public class DogJoin implements MainController{

	@Override
	public String executeC3(HttpServletRequest req, HttpServletResponse resp) {
		String view = "./dogJoin.jsp";
		
		/* req.getSession().getAttribute("SID"); */
		
		return view;
	}
	
}
