package filter;

import java.io.IOException;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import dao.CategoryDao;
import dto.Category;

public class ProductCateFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		CategoryDao cd = CategoryDao.getInstance();
		List<Category> cateList= cd.categoryList(); 
		String cNum=request.getParameter("c_Num");
		if(cNum!=null && cNum.equals("")) {
			int c_Num= Integer.parseInt(request.getParameter("c_Num"));
//			List <Category>  cd.topCategory(c_Num);
			request.setAttribute("cNum", c_Num);
		} 
		
		
		request.setAttribute("cateList", cateList);
		
		chain.doFilter(request, response);
		
	}

}
