package controller.dog.visit;
/**
 * @author	강찬규
 * @since	2019.06.19
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.06.20		General 클래스 제작		작성자 : 강찬규
 * 			2019.06.21		General 클래스 보완		작성자 : 강찬규
 */
import javax.servlet.http.*;
import dao.*;
import vo.*;
import java.util.*;
import controller.MainController;

public class General implements MainController {

	@Override
	public String executeC3(HttpServletRequest req, HttpServletResponse resp) {
		String view = "general.jsp";
		String id = (String)req.getSession().getAttribute("SID");
		PetInfoDAO pdao = new PetInfoDAO();
		ArrayList<PetInfoVo> list = pdao.idGetPetData(id);
		req.setAttribute("LIST", list);
		return view;
	}

}
