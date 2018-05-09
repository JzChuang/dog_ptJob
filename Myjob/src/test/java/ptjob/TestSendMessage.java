package ptjob;

import com.etc.exam.miaodiapi.IndustrySMS;

public class TestSendMessage {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		IndustrySMS ins = new IndustrySMS();
		String result= ins.execute("15659561005");
		System.out.println(result);
		
	}

}
