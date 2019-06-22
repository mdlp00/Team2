package controller.dog.information;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.MainController;
import dao.PetInfoDAO;
import vo.PetInfoVo;

public class DogInEditProc implements MainController{

	@Override
	public String executeC3(HttpServletRequest req, HttpServletResponse resp) {
		req.setAttribute("isRDR", 1);
		
		String view = "/dog/myInfo.c3";
		String url = req.getRequestURL().toString().replace("/dog/information/dogInEditProc.c3","");
		
		String pname = req.getParameter("pname");
		int pkno = Integer.parseInt(req.getParameter("pkind"));
		int pano = Integer.parseInt(req.getParameter("page"));
		int psno = Integer.parseInt(req.getParameter("psize"));
		int pno = Integer.parseInt(req.getParameter("pno"));
		
		
		PetInfoVo vo = new PetInfoVo();
		vo.setP_name(pname);
		vo.setPk_no(pkno);
		vo.setPa_no(pano);
		vo.setPs_no(psno);
		vo.setP_no(pno);
		
		PetInfoDAO pdao = new PetInfoDAO();
		int cnt = pdao.updatePetInfo(vo);
		
		if(cnt == 0) {
			
		}else {
			view = url + view;
			return view;
		}
		
		return view;
	}
	
}
