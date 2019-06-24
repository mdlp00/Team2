package controller.dog.visit;

/**
 * @author	강찬규
 * @since	2019.06.19
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.06.20		General3 클래스 제작		작성자 : 강찬규
 * 			2019.06.21		General3 클래스 수정		작성자 : 강찬규
 */
import java.util.*;
import javax.servlet.http.*;
import dao.*;
import vo.*;
import controller.MainController;

public class General_3 implements MainController {

	@Override
	public String executeC3(HttpServletRequest req, HttpServletResponse resp) {
		String view = "general_3.jsp";
		String[] pif_name = req.getParameterValues("pif_name");
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
		PetInfoDAO pdao = new PetInfoDAO();
		MemberVo vo = mdao.idGetData(id);
		ArrayList<PetInfoVo> list = pdao.idGetPetData(id);
		String addr = vo.getMaddr();
		
		
		int len = pif_name.length;
		ArrayList<PetInfoVo> str = new ArrayList<PetInfoVo>();
		for(int i = 0; i < len; i++) {
			String pname = pif_name[i];
			for(int j = 0; j < list.size(); j++) {
				String sname = list.get(j).getP_name();
				if(pname.equals(sname)) {
					str.add(list.get(j));
				}
			}
		}
		
		String st = start_time.substring(0, 2);
		String et = end_time.substring(0, 2);
		int tt = Integer.parseInt(et) -  Integer.parseInt(st);
		
		
		int price = len * tt * 3000;
		
		req.setAttribute("LIST", str);
		req.setAttribute("pick_day", pick_day);
		req.setAttribute("start_time", start_time);
		req.setAttribute("end_time", end_time);
		req.setAttribute("total_time", tt);
		req.setAttribute("reqe", reqe);
		req.setAttribute("addr", addr);
		req.setAttribute("price", price);
		
		ArrayList<String> req_ck = new ArrayList<String>();
		if(ck1 != null) {
			req_ck.add("산책없이 놀이 서비스로 대체해주세요.");
		}
		if(ck2 != null) {
			req_ck.add("산책 위주로 진행해주세요.");
		}
		if(ck3 != null) {
			req_ck.add("생식 급여가 필요합니다.");
		}
		if(ck4 != null) {
			req_ck.add("노령견 및 환자견 케어가 필요합니다.");
		}
		req.setAttribute("REQCK", req_ck);
		return view;
	}

}
