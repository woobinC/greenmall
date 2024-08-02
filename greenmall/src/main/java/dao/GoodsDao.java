package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import dto.Goods;
import mybatis.MyBatisSessionFactory;

public class GoodsDao {
	// singleton
		private static GoodsDao Instance = new GoodsDao();
		private GoodsDao() {
		}
		public static GoodsDao getInstance() {
			return Instance;
		}
		private static SqlSession session = MyBatisSessionFactory.getSession(true);
		public void on() {			
			session.close();
		}
		public int insert(Goods goods) {	
			System.out.println(goods);
			return session.insert("goodsns.insert",goods);
		}

		@SuppressWarnings("unchecked")
		public List<Goods> list(int startRow, int endRow) {
			Map<String, Integer> map = new HashMap<String, Integer>();
			map.put("startRow", startRow);
			map.put("endRow", endRow);
			return session.selectList("goodsns.list", map);
		}
		public int getTotal() {
			return (int) session.selectOne("goodsns.getTotal");
		}
		public int update(Goods gd) {
			return session.update("goodsns.update",gd);
		}

		public int delete(int p_No) {
			return session.delete("goodsns.delete",p_No);
		}
		/* 일반 상품 페이지 */
		@SuppressWarnings("unchecked")
		public List<Goods> select_main1(int startRow, int endRow, int c_Num) {
			Map<String, Integer> map = new HashMap<String, Integer>();
			map.put("startRow", startRow);
			map.put("endRow", endRow);
			map.put("c_Num", c_Num);
			return session.selectList("goodsns.select_main1", map);
		}
		@SuppressWarnings("unchecked")
		public List<Goods> select_main2() {
			return session.selectList("goodns.select_main2");
		}
		@SuppressWarnings("unchecked")
		public List<Goods> select_main3() {
			return session.selectList("goodns.select_main3");
		}
		// 일반 상품 번호 조회
		public Goods select_no(int p_No) {
	
			return (Goods) session.selectOne("goodsns.select_no", p_No);
		}



}
