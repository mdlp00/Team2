package controller.dog.information;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.MainController;
import dao.PetInfoDAO;
import vo.PetInfoVo;


//2019.06.20 	작성자: 안다예

public class DogJoinProc implements MainController {

	@Override
	public String executeC3(HttpServletRequest req, HttpServletResponse resp) {
		
		req.setAttribute("isRDR", 1);
		
		String view = "";
		String sname = "";
		String skind = "";
		String sage = "";
		String ssize = "";
		String sid = "";
		
		sname = req.getParameter("pname");

		skind = req.getParameter("pkind");
		int ikind = Integer.parseInt(skind);

		sage = req.getParameter("page");
		int iage = Integer.parseInt(sage);

		ssize = req.getParameter("psize");
		int isize = Integer.parseInt(ssize);

		sid = (String)req.getSession().getAttribute("SID");

		
		PetInfoVo vo = new PetInfoVo();
		vo.setP_name(sname);
		vo.setPk_no(ikind);
		vo.setPa_no(iage);
		vo.setPs_no(isize);
		vo.setM_id(sid);
		
		
		String url = req.getRequestURL().toString().replace("dog/information/dogJoinProc.c3","");
		// 디비작업 시작
		PetInfoDAO pdao = new PetInfoDAO();
		int cnt = pdao.addPetInfo(vo);
		if(cnt == 0) {
		}else {
			view = url +"dog/myInfo.c3";
		}
		return view;
	}

}
