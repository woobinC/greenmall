package service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import dto.Member;
import service.CommandProcess;

public class FindIdAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String mName = request.getParameter("mName");
		String mTel = request.getParameter("mTel");
		String mEmail = request.getParameter("mEmail");

		MemberDao md = MemberDao.getInstance();
		Member member = new Member();
		int result = 0;
		if (mTel == null|| mTel.isEmpty()) {
			member = md.selectEmail(mName, mEmail);
		} else if (mEmail == null|| mEmail.isEmpty()) {
			member = md.selectTel(mName, mTel);
		}
		if (member.getmId() == null || member.getmDel().equals("y")) {
			result = -1;
		} else {
			result = 1;
		}
		request.setAttribute("member", member);
		request.setAttribute("result", result);
		return "findId";
	}

}
