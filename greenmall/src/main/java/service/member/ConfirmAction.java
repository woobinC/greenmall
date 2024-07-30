package service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import dto.Member;
import service.CommandProcess;

public class ConfirmAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		MemberDao md = MemberDao.getInstance();
		Member member  = md.select(id);
		String msg = "";
		if (member != null) msg="중복된 아이디 입니다";
		else msg = "사용 가능한 아이디 입니다";
		
		request.setAttribute("msg", msg);
		return "confirm";
	}

}
