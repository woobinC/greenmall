package service.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.GoodsDao;
import dto.Goods;
import service.CommandProcess;

public class AdminUpdateForm implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String p_No = request.getParameter("p_No");
		GoodsDao gd = GoodsDao.getInstance();
		Goods goods = gd.select(p_No);
		
		request.setAttribute("goods", goods);
		return "adminUpdateForm";
	}

}
