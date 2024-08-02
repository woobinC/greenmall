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
	
		return "adminGoodsAddForm";
	}

}
