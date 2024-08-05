package service.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BuyDao;
import dto.Buy;
import service.CommandProcess;

public class AdminBuyUpdateForm implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int bNum = Integer.parseInt(request.getParameter("bNum"));
		BuyDao bd = BuyDao.getInstance();
		Buy buy = bd.select(bNum);
		
		request.setAttribute("buy", buy);
		return "adminBuyUpdateForm";
	}

}
