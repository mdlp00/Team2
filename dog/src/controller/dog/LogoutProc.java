package controller.dog;

import javax.servlet.http.*;

import controller.MainController;

public class LogoutProc implements MainController {

	@Override
	public String executeC3(HttpServletRequest req, HttpServletResponse resp) {
		String view = "welcome.jsp";
		HttpSession session = req.getSession();
		session.removeAttribute("SID");
		req.setAttribute("isRDR", 1);
		return view;
	}

}
