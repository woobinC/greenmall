package service.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BuyDao;
import service.CommandProcess;

public class AdminBuyDelete implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int bNum = Integer.parseInt(request.getParameter("bNum"));
		BuyDao bd = BuyDao.getInstance();
		int result = bd.delete(bNum);
		request.setAttribute("result", result);
		return "adminBuyDelete";
	}

}
