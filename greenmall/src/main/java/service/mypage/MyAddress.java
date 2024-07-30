package service.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberAddressDao;
import dao.MemberDao;
import dto.Member;
import dto.MemberAddress;
import service.CommandProcess;

public class MyAddress implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String mId = (String)session.getAttribute("mId");
		String aName = request.getParameter("aName");
		String aPostCode = request.getParameter("aPostCode");
		String aAddr = request.getParameter("aAddr");
		String aAddrDe = request.getParameter("aAddrDe");
		String aRequest = request.getParameter("aRequest");
		String basicAddr = request.getParameter("basicAddr");
		
		MemberAddress memberAddress = new MemberAddress();
		
		memberAddress.setmId(mId);
		memberAddress.setaName(aName);
		memberAddress.setaPostCode(aPostCode);
		memberAddress.setaAddr(aAddr);
		memberAddress.setaAddrDe(aAddrDe);
		memberAddress.setaRequest(aRequest);
		memberAddress.setBasicAddr(basicAddr);
		
		MemberAddressDao myd = MemberAddressDao.getInstance();
		int result = 0;
		System.out.println(memberAddress);
		result = myd.insert(memberAddress);
		
		request.setAttribute("result", result);
		return "myAddress";
	}

}
