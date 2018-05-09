package ptjob;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ptjob.dao.CompanyMapper;
import com.ptjob.entity.Company;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml", "mybatis-config.xml");
		CompanyMapper cm = null;
		cm = context.getBean(CompanyMapper.class);
		Company c=cm.selectCompanyByUser("15900000000");
		System.out.println(c);
	}

}
