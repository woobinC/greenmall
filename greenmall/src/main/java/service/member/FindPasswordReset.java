package service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.CommandProcess;

public class FindPasswordReset implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String mId = request.getParameter("mId");
		request.setAttribute("mId", mId);
		return "findPasswordReset";
	}

}
