package service.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import service.CommandProcess;

public class AdminMemberDelete implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String mId = request.getParameter("mId");
		MemberDao md = MemberDao.getInstance();
		int result = md.deleteMember(mId);
		System.out.println(result);
		request.setAttribute("result", result);
		return "adminMemberDelete";
	}

}
