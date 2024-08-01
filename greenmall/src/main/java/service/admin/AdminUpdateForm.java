package service.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CategoryDao;
import dao.GoodsDao;
import dto.Category;
import dto.Goods;
import service.CommandProcess;

public class AdminUpdateForm implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int p_No = Integer.parseInt(request.getParameter("p_No"));
		GoodsDao gd = GoodsDao.getInstance();
		CategoryDao cd = CategoryDao.getInstance();
		List<Category> categoryList = cd.categoryList();
		request.setAttribute("categoryList", categoryList);
		Goods goods = gd.select_no(p_No);
		if (categoryList == null || categoryList.size() == 0)
			System.out.println("데이터가 없습니다");
		else 
			for(Category ca : categoryList) {
				if (ca != null)
					System.out.println(ca.getCnum()+" : "+ ca.getCname());
				else System.out.println(ca);
			}
		request.setAttribute("goods", goods);
		request.setAttribute("categoryList", categoryList);
		return "adminUpdateForm";
	}

}
