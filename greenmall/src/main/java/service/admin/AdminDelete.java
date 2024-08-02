package service.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.GoodsDao;
import service.CommandProcess;

public class AdminDelete implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int p_No = Integer.parseInt(request.getParameter("p_No"));
		GoodsDao gd = GoodsDao.getInstance();
		int result = gd.delete(p_No);
		request.setAttribute("result", result);
		return "adminDelete";
	}

}
