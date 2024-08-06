package service.goods;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CategoryDao;
import dao.GoodsDao;
import dto.Category;
import dto.Goods;
import service.CommandProcess;

public class GoodsList implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		final int ROW_PER_PAGE = 10; // 한페이지의 상품 갯수
		final int PAGE_PER_BLOCK = 10; // 한블록의 페이지 갯수
		int c_Num = Integer.parseInt(request.getParameter("c_Num"));
		String pageNum = request.getParameter("pageNum");
		if (pageNum == null || pageNum.equals("")) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum); //페이지 번호

		//시작번호 (페이지 - 1) * 페이지당 갯수 + 1
		int startRow = (currentPage - 1) * ROW_PER_PAGE + 1;
		// 페이지 끝번호 시작번호 + 페이지당갯수 - 1
		int endRow = startRow + ROW_PER_PAGE - 1;
		
		GoodsDao gd = GoodsDao.getInstance();
		//	String condition = "select * from cmproduct order by desc";
		int total = gd.getTotal();
		int num = total - startRow + 1;
		int totalPage = (int)Math.ceil((double)total/ ROW_PER_PAGE); // 총 페이지 수 4
		// 현재페이지 - (현재페이지 - 1)%10
		int startPage = currentPage - (currentPage -1) % PAGE_PER_BLOCK; // 한 블록의 시작 페이지
		// 시작페이지 + 블록당페이지 수 -1
		int endPage = startPage + PAGE_PER_BLOCK -1 ;
		// endPage 는 총페이지 보다 크면 안된다
		if (endPage > totalPage)
			endPage = totalPage;
		
		List<Goods> list = gd.select_main1(startRow, endRow, c_Num);
		
			String cNumParam = request.getParameter("c_Num");
	        String prefix = cNumParam != null && !cNumParam.isEmpty() ? cNumParam.substring(0, 1) : "1";

	        CategoryDao categoryDao = CategoryDao.getInstance();
	        List<Category> cateList = categoryDao.selectByPrefix(prefix);
	        
			/*
			 * int sc = c_Num/100; int ec = c_Num%100; Map<String,Integer> map = new
			 * HashMap<>(); map.put("sc",sc); map.put("ec",ec); List<Goods> goods =
			 * gd.selectGoods(map); request.setAttribute("cateList", cateList);
			 * request.setAttribute("cNumPrefix", prefix);
			 */
//		String img = "/highbrix/images/cart.jpg";
//		String fimg = "/highbrix/images/cart2.jpg";
//		
		request.setAttribute("num", num);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("PAGE_PER_BLOCK", PAGE_PER_BLOCK);
		request.setAttribute("list", list);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("cateList", cateList);
		/*
		 * request.setAttribute("img", img); request.setAttribute("fimg", fimg);
		 */
		return "goodsList";
	}

}
