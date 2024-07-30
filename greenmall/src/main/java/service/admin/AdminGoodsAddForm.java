package service.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CategoryDao;
import dto.Category;
import service.CommandProcess;

public class AdminGoodsAddForm implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		CategoryDao cd = CategoryDao.getInstance();
		List<Category> categoryList = cd.categoryList();
		request.setAttribute("categoryList", categoryList);
		System.out.println("size = "+categoryList.size());
		if (categoryList == null || categoryList.size() == 0)
			System.out.println("데이터가 없습니다");
		else 
			for(Category ca : categoryList) {
				if (ca != null)
					System.out.println(ca.getCnum()+" : "+ ca.getCname());
				else System.out.println(ca);
			}
		return "adminGoodsAddForm";
	}

}
