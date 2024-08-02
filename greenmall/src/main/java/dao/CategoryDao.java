package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import dto.Category;
import mybatis.MyBatisSessionFactory;
public class CategoryDao {
	// singleton
	private static CategoryDao Instance = new CategoryDao();
	private CategoryDao() {
	}
	public static CategoryDao getInstance() {
		return Instance;
	}
	private static SqlSession session = MyBatisSessionFactory.getSession(true);
	public List<Category> categoryList() {
		return session.selectList("categoryns.list");
	}
	public Category select(int c_Num) {
		return (Category) session.selectOne("categoryns.select", c_Num);
	}

}