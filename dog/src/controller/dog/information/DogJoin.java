package controller.dog.information;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.MainController;
import dao.PetInfoDAO;
import vo.PetAgeVo;
import vo.PetKindVo;
import vo.PetSizeVo;

public class DogJoin implements MainController{

	@Override
	public String executeC3(HttpServletRequest req, HttpServletResponse resp) {
		String view = "./dogJoin.jsp";
		
		//각 리스트 주기
		PetInfoDAO pdao = new PetInfoDAO();
		ArrayList<PetAgeVo> alist = pdao.getPetAgeList();
		ArrayList<PetKindVo> klist = pdao.getPetKindList();
		ArrayList<PetSizeVo> slist = pdao.getPetSizeList();
		HashMap map = new HashMap();
		map.put("alist", alist);
		map.put("klist", klist);
		map.put("slist", slist);
		req.setAttribute("map", map);
		
		return view;
	}
	
}
