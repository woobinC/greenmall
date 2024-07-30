package service.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AdminDao;
import dto.Admin;
import service.CommandProcess;

public class AdminLogin implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String adminId = request.getParameter("adminId");
		String adminPw = request.getParameter("adminPw");
		AdminDao ad = AdminDao.getInstance();
		
		Admin admin = ad.select(adminId);
		
		int result = 0;
		// 아이디가 없으면
		if (admin == null || admin.getAdminId().equals("")) {
			result = -1;
			// 로그인성공
		} else if (admin.getAdminPw().equals(adminPw)) {
			result = 1;
			HttpSession session = request.getSession();
			session.setAttribute("adminId", adminId);
		}
		request.setAttribute("result", result);
		return "adminLogin";
	}

}
