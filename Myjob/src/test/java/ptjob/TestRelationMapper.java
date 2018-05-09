package ptjob;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ptjob.dao.JobMapper;
import com.ptjob.dao.RelationMapper;
import com.ptjob.entity.Job;
import com.ptjob.entity.JobPage;
import com.ptjob.entity.Relation;

public class TestRelationMapper {

	RelationMapper rm = null;

	@Before
	public void init() {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml", "mybatis-config.xml");

		rm = context.getBean(RelationMapper.class);
	}


	@Test
	public void selectByRecord() {
		Relation r = new Relation(0, 2, "15900000000", null, null, null);
		Relation nr = rm.selectByRecord(r);
		System.out.println(nr);
	}
	
	
	
}
