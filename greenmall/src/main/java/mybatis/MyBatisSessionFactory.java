package mybatis;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisSessionFactory {
	private static SqlSessionFactory ssf;
	static {
		Reader reader;
		try {
			reader = Resources.getResourceAsReader("configuration.xml");
			ssf = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public static SqlSession getSession(boolean bool) {
		return ssf.openSession(bool);
	}
}
