package controller.dog.information;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.MainController;

public class DogImgEdit implements MainController{

	@Override
	public String executeC3(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/dog/information/dogImgEdit.jsp";
		
		int p_no = Integer.parseInt(req.getParameter("p_no"));
		req.setAttribute("p_no", p_no);
		
		return view;
	}
	
}
