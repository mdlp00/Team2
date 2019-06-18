package controller.dog;

import javax.servlet.http.*;

import controller.MainController;

public class LoginForm implements MainController {

	@Override
	public String executeC3(HttpServletRequest req, HttpServletResponse resp) {
		String view = "login.jsp";
		return view;
	}

}
