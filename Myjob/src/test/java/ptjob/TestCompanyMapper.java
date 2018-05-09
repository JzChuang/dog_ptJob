package ptjob;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ptjob.dao.CompanyMapper;
import com.ptjob.entity.Company;

public class TestCompanyMapper {

	CompanyMapper cm = null;

	@Before
	public void init() {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml", "mybatis-config.xml");

		cm = context.getBean(CompanyMapper.class);
	}

	@Test
	public void insert() {
		Company company = new Company(null, "15900000000", "易联众", "福建厦门", "福建省厦门市", "null", "贾自闯", "15900000000",
				"825941503@qq.com");
		cm.insert(company);
	}
	
	@Test
	public void selectCompanyByUser() {
		Company c= cm.selectCompanyByUser("15900000000");
		System.out.println(c);
	}
	@Test
	public void update() {
		Company company = new Company(null, "15900000000", "易联众haha", "福建厦门", "福建省厦门市", "null", "贾自闯", "15900000000",
				"825941503@qq.com");
		cm.updateByUser(company);
	}
}
