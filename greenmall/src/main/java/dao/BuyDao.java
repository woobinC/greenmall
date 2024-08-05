package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import dto.Buy;
import dto.Member;
import mybatis.MyBatisSessionFactory;

public class BuyDao {
	private static BuyDao instance = new BuyDao();
	private BuyDao() {}
	public static BuyDao getInstance() {
		return instance;
	}
	private static SqlSession session = MyBatisSessionFactory.getSession(true);
	
	public List<Member> list(int startRow, int endRow) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		return session.selectList("buyns.list", map);
	}

	public int getTotal() {
		return (int) session.selectOne("buyns.getTotal");
	}
	public Buy select(int bNum) {
		return (Buy) session.selectOne("buyns.select",bNum);
	}
	public int update(Buy buy) {
		return session.update("buyns.update",buy);
	}
	public int delete(int bNum) {
		return session.delete("buyns.delete",bNum);
	}
	
}
