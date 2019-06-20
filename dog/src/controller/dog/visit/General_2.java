package controller.dog.visit;
/**
 * @author	강찬규
 * @since	2019.06.19
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.06.20		General2 클래스 제작		작성자 : 강찬규
 */
import javax.servlet.http.*;
import dao.*;
import vo.*;
import controller.MainController;

public class General_2 implements MainController {

	@Override
	public String executeC3(HttpServletRequest req, HttpServletResponse resp) {
		String view = "general_2.jsp";
		String pif_name = req.getParameter("pif_name");
		String pick_day = req.getParameter("pick_day");
		String start_time = req.getParameter("start_time");
		String end_time = req.getParameter("end_time");
		
		req.setAttribute("pif_name", pif_name);
		req.setAttribute("pick_day", pick_day);
		req.setAttribute("start_time", start_time);
		req.setAttribute("end_time", end_time);
		return view;
	}

}
