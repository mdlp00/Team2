package controller.dog.information;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.MainController;
import dao.MemberDAO;
import vo.MemberVo;

public class MyInEditProc implements MainController{

	@Override
	public String executeC3(HttpServletRequest req, HttpServletResponse resp) {
		req.setAttribute("isRDR", 1);
		
		String view = "/dog/myInfo.c3";
		String url = req.getRequestURL().toString().replace("/dog/information/myInEditProc.c3","");
		
		String sid = (String)req.getSession().getAttribute("SID");
		String spw = req.getParameter("pw");
		String stel = req.getParameter("tel");
		String smail = req.getParameter("mail");
		
		MemberVo vo = new MemberVo();
		vo.setMid(sid);
		vo.setMpw(spw);
		vo.setMtel(stel);
		vo.setMail(smail);
		
		MemberDAO mdao = new MemberDAO();
		int cnt = mdao.updateMemb(vo);
		
		if(cnt == 0) {
			
		}else {
			view = url + view;			
		}
		return view;
	}
	
}
