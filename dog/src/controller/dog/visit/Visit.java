package controller.dog.visit;
/**
 * @author	강찬규
 * @since	2019.06.19
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.06.19		Visit 클래스 제작		작성자 : 강찬규
 */
import javax.servlet.http.*;

import controller.MainController;

public class Visit implements MainController {

	@Override
	public String executeC3(HttpServletRequest req, HttpServletResponse resp) {
		String view = "";
		String sid = (String)req.getSession().getAttribute("SID");
		if(sid == null || sid.length() == 0) {
			view = "login.c3";
		} else {
			view = "visit/visit.jsp";
		}
		return view;
	}

}
