package controller.dog.information;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.MainController;
import dao.MemberDAO;
import vo.MemberVo;

public class MyInfoEdit implements MainController{

	@Override
	public String executeC3(HttpServletRequest req, HttpServletResponse resp) {
		String view = "myInfoEdit.jsp";
		
		String mid = (String)req.getSession().getAttribute("SID");
		MemberDAO mdao = new MemberDAO();
		MemberVo vo = mdao.idGetData(mid);
		req.setAttribute("VO", vo);
		
		return view;
	}
	
}
