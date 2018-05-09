package ptjob;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


import com.ptjob.dao.UsersMapper;
import com.ptjob.entity.Users;

public class TestUserMapper {

	UsersMapper tm = null;
	@Before
	public void init() {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml","mybatis-config.xml");
	
		tm = context.getBean(UsersMapper.class);
	}

	@Test
	public void getAllBlog() {
//		List<Users> list = tm.getAllUsers();
//		
//		for (Users user : list) {
//			System.out.println(user);
//		}

		Users u  = tm.selectStuByName("13733658751");
		System.out.println(u);
	}
	@Test
	public void insertUsers() {
		Users u = new Users(null, "15917904317", "000000", "…Ãªß");
		int i = tm.insertUsers(u);
		System.out.println(i);
		
	}

}
