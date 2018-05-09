package ptjob;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ptjob.dao.JobRelationMapper;
import com.ptjob.entity.JobRelation;
import com.ptjob.entity.JobRelationPage;

public class TestJobRelationMapper {

	JobRelationMapper jrm = null;

	@Before
	public void init() {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml", "mybatis-config.xml");

	    jrm = context.getBean(JobRelationMapper.class);
	}


	@Test
	public void selectByRecord() {
		JobRelationPage jrp = new JobRelationPage();
		jrp.setUserName("17720837681");
		jrp.setStart(1);
		jrp.setPagesize(3);
		List<JobRelation> list = jrm.getJobRelationByPages(jrp);
		for (JobRelation jobRelation : list) {
			System.out.println(jobRelation);
		}
		
	}
	
	@Test
	public void gettotal() {
		JobRelationPage jrp = new JobRelationPage();
		jrp.setStudentName("13733658751");
		int count = jrm.getJobRelationTotal(jrp);
		System.out.println(count);
		
	}
	
	
	
}
