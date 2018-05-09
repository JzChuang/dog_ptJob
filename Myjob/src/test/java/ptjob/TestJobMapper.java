package ptjob;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ptjob.dao.JobMapper;
import com.ptjob.entity.Job;
import com.ptjob.entity.JobPage;

public class TestJobMapper {

	JobMapper jm = null;

	@Before
	public void init() {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml", "mybatis-config.xml");

		jm = context.getBean(JobMapper.class);
	}

	@Test
	public void insert() {
		Job job = new Job(null, "实现你月入过万的梦想", "15900000000", "易联众", "刷单", "厦门市思明区", "厦门市思明区软件园二期", "哈哈",
				"15900000000", "20", "男女不限", "15元/单", "今天", "", "2018年3月9日10:59:27","","");
		jm.insert(job);
	}
	
	@Test
	public void selectByPrimary() {
		System.out.println(jm.selectByPrimaryKey(1));
	}
	
	@Test
	public void getAllJobs() {
		List<Job> list = jm.getAllJobs();
		for (Job job : list) {
			System.out.println(job);
		}
	}
	
	@Test
	public void getJobByUserName() {
		List<Job> list = jm.getJobByUserName("15900000000");
		for (Job job : list) {
			System.out.println(job);
		}
	}
	@Test
	public void getJobByNoChecked() {
		List<Job> list = jm.getJobByNoChecked("是");
		for (Job job : list) {
			System.out.println(job);
		}
	}
	
	@Test
	public void getJobsByPages() {
		JobPage jp = new JobPage();
		
		
		jp.setJobTitle("月入");
		jp.setStart(0);
		jp.setPagesize(3);
		List<Job> list = jm.getJobsByPages(jp);
		for (Job job2 : list) {
			System.out.println(job2);
		}
		
//		System.out.println("共"+total+"条数据");
	
	}
	
/*	@Test
	public void getTotal() {
		Job job = new Job();
		job.setJobTitle("月入百万");
		int total = jm.getJobsTotal(job);
		System.out.println("共"+total+"条数据");
		
				
	}*/

	
	
}
