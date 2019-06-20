package controller.dog.visit;
/**
 * @author	강찬규
 * @since	2019.06.19
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.06.20		General3 클래스 제작		작성자 : 강찬규
 */
import javax.servlet.http.*;
import dao.*;
import vo.*;
import controller.MainController;

public class General_3 implements MainController {

	@Override
	public String executeC3(HttpServletRequest req, HttpServletResponse resp) {
		String view = "general_3.jsp";
		String pif_name = req.getParameter("pif_name");
		String pick_day = req.getParameter("pick_day");
		String start_time = req.getParameter("start_time");
		String end_time = req.getParameter("end_time");
		String reqe = req.getParameter("reqe");
		String ck1 = req.getParameter("ck1");
		String ck2 = req.getParameter("ck2");
		String ck3 = req.getParameter("ck3");
		String ck4 = req.getParameter("ck4");
		
		String id = (String)req.getSession().getAttribute("SID");
		MemberDAO mdao = new MemberDAO();
		MemberVo vo = mdao.idGetData(id);
		String addr = vo.getMaddr();
		
		
		req.setAttribute("pif_name", pif_name);
		req.setAttribute("pick_day", pick_day);
		req.setAttribute("start_time", start_time);
		req.setAttribute("end_time", end_time);
		req.setAttribute("reqe", reqe);
		req.setAttribute("addr", addr);
		
		if(ck1 != null) {
			req.setAttribute("ck1", ck1);
		}
		if(ck2 != null) {
			req.setAttribute("ck2", ck2);
		}
		if(ck3 != null) {
			req.setAttribute("ck3", ck3);
		}
		if(ck4 != null) {
			req.setAttribute("ck4", ck4);
		}
		
		return view;
	}

}
