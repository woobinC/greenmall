package service.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberAddressDao;
import dto.MemberAddress;
import service.CommandProcess;

public class MyAddressUpdate implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String addrNum = request.getParameter("addrNum");
		String aName = request.getParameter("aName");
		String aPostCode = request.getParameter("aPostCode");
		String aAddr = request.getParameter("aAddr");
		String aAddrDe = request.getParameter("aAddrDe");
		String aRequest = request.getParameter("aRequest");
		String basicAddr = request.getParameter("basicAddr");
		
		MemberAddressDao myd = MemberAddressDao.getInstance();
		MemberAddress memberAddress = myd.select(addrNum);
		memberAddress.setaName(aName);
		memberAddress.setaPostCode(aPostCode);
		memberAddress.setaAddr(aAddr);
		memberAddress.setaAddrDe(aAddrDe);
		memberAddress.setaRequest(aRequest);
		memberAddress.setBasicAddr(basicAddr);
		
		int result = 0;
		result = myd.update(memberAddress);
		
		request.setAttribute("result", result);
		return "myAddressUpdate";
	}

}
