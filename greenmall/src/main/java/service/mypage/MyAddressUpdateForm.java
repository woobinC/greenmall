package service.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberAddressDao;
import dto.MemberAddress;
import service.CommandProcess;

public class MyAddressUpdateForm implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String addrNum = request.getParameter("addrNum");
		MemberAddressDao mad = MemberAddressDao.getInstance();
		MemberAddress memberaddress = mad.select(addrNum);
		
		request.setAttribute("memberaddress", memberaddress);
		return "myAddressUpdateForm";
	}

}
