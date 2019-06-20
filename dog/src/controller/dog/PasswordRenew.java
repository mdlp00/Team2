package controller.dog;
/**
 * @author	강찬규
 * @since	2019.06.20
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.06.20		PasswordRenew 클래스 제작		작성자 : 강찬규
 */
import javax.servlet.http.*;

import controller.MainController;

public class PasswordRenew implements MainController {

	@Override
	public String executeC3(HttpServletRequest req, HttpServletResponse resp) {
		String view = "pwRenew.jsp";
		return view;
	}

}
