package service.admin;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BuyDao;
import dto.Buy;
import service.CommandProcess;

public class AdminBuyUpdate implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int bNum = Integer.parseInt(request.getParameter("bNum"));
		int totalPrice = Integer.parseInt(request.getParameter("totalPrice"));
		String bSatus = request.getParameter("bSatus");
		String bName = request.getParameter("bName");
		int bCnt = Integer.parseInt(request.getParameter("bCnt"));
		
		Buy buy = new Buy();
		buy.setbNum(bNum);
		buy.setTotalPrice(totalPrice);
		buy.setbSatus(bSatus);
		buy.setbName(bName);
		buy.setbCnt(bCnt);
		
		int result = 0;
		BuyDao bd = BuyDao.getInstance();
		result = bd.update(buy);
		
		request.setAttribute("result", result);
		return "adminBuyUpdate";
	}

}
