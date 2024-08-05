package service.buy;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.BasketDao;
import dao.GoodsDao;
import dto.Basket;
import dto.Goods;

/**
 * Servlet implementation class AddCart2
 */
@WebServlet("/AddCart")
public class AddCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String mId = (String)session.getAttribute("mId");
		int pNo = Integer.parseInt(request.getParameter("p_No"));
		int pCnt = Integer.parseInt(request.getParameter("p_Cnt"));
		int salePrice = Integer.parseInt(request.getParameter("salePrice"));
		
		GoodsDao gd = GoodsDao.getInstance();
		Goods goods = gd.select_no(pNo);
		goods.setP_Cnt(goods.getP_Cnt() - pCnt);
		
		BasketDao bd = BasketDao.getInstance();
		Basket basket = new Basket();
		
		basket.setpNo(pNo);
		basket.setmId(mId);
		basket.setcPrice(salePrice);
		basket.setcCnt(pCnt);
		
		int result1 = bd.insert(basket);
		int result2 = gd.update(goods);
		
		System.out.println(result1);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
