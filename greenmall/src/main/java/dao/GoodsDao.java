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
		public int update(GoodsDao gd) {
			// TODO Auto-generated method stub
			return session.update("goodsns.update",gd);
		}
		
}
