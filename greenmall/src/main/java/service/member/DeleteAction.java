package service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDao;
import service.CommandProcess;

public class DeleteAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String mId = (String)session.getAttribute("mId");
		
		MemberDao md = MemberDao.getInstance();
		int result = md.delete(mId);
		request.setAttribute("result", result);
		if(result > 0) {
			session.invalidate();
		}
		return "delete";
	}

}
