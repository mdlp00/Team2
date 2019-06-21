package controller.dog.visit;
/**
 * @author	강찬규
 * @since	2019.06.19
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.06.20		General1 클래스 제작		작성자 : 강찬규
 * 			2019.06.21		General1 클래스 보완		작성자 : 강찬규
 */
import javax.servlet.http.*;
import dao.*;
import vo.*;
import java.util.*;
import controller.MainController;

public class General_1 implements MainController {

	@Override
	public String executeC3(HttpServletRequest req, HttpServletResponse resp) {
		String view = "general_1.jsp";
		String[] pif_name = req.getParameterValues("pif_name");
		
		int len = pif_name.length;
		ArrayList<String> list = new ArrayList<String>();
		for(int i = 0; i < len; i++) {
			list.add(pif_name[i]);
		}
		
		req.setAttribute("LIST", list);
		return view;
	}

}
