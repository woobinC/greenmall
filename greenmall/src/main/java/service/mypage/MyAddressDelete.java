package service.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberAddressDao;
import service.CommandProcess;

public class MyAddressDelete implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String addrNum = request.getParameter("addrNum");
		MemberAddressDao mad = MemberAddressDao.getInstance();
		int result = 0;
		result = mad.delete(addrNum);
		
		request.setAttribute("result", result);
		return "myAddressDelete";
	}

}
