package service.display;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CategoryDao;
import dao.MemberDao;
import dto.Category;
import dto.Member;
import service.CommandProcess;

public class Main implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String mId = (String)session.getAttribute("mId");
		if(mId != null) {
			MemberDao md = MemberDao.getInstance();
			Member member = md.select(mId);
			request.setAttribute("member", member);
		}
		CategoryDao cd = CategoryDao.getInstance();
		List<Category> categoryList = cd.categoryList();
		request.setAttribute("categoryList", categoryList);
		System.out.println("size = "+categoryList.size());
		return "main";
	}

}
