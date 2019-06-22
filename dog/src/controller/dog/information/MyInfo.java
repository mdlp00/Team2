package controller.dog.information;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.MainController;
import dao.PetInfoDAO;
import vo.PetInfoVo;

public class MyInfo implements MainController{

	@Override
	public String executeC3(HttpServletRequest req, HttpServletResponse resp) {
		String view = "information/myInfo.jsp"; 
		
		String mid = (String)req.getSession().getAttribute("SID");
		
		PetInfoDAO pdao = new PetInfoDAO();
		ArrayList<PetInfoVo> list = pdao.idGetPetData(mid);

		req.setAttribute("LIST", list);
		
		return view;
	}
	
}
