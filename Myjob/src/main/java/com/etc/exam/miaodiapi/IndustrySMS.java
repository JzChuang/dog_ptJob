package com.etc.exam.miaodiapi;

import java.text.MessageFormat;



/**
 * 验证码通知短信接口
 * @author jiazichuang
 * @ClassName: IndustrySMS
 * @Description: 验证码通知短信接口
 *
 */
public class IndustrySMS
{
	private static String operation = "/industrySMS/sendSMS";
	private static String accountSid = Config.ACCOUNT_SID;
	private static String to = "";
	private static String smsContent = "【汪兼职】您的验证码为{0,number,######}，请于2分钟内正确输入，如非本人操作，请忽略此短信。";
	public static int yanZhengNum;//生成的随机验证码
	//private static String smsContent = "【智囊网】您的验证码为123456，请于2分钟内正确输入，如非本人操作，请忽略此短信";
	
	/**
	 * 获得随机验证码
	 * @return
	 */
	public static void yanZhengNum() {
		StringBuffer num=new StringBuffer();
		for(int i=1;i<=6;i++){
			int d=(int)(Math.random()*9+1);
			num.append(d);
			}
		yanZhengNum = Integer.parseInt(num.toString());
		smsContent = MessageFormat.format(smsContent,yanZhengNum);
	}
	
	
	/**
	 * 验证码通知知短信
	 */
	public static String execute(String phoneNum)
	{
		smsContent = "【汪兼职】您的验证码为{0,number,######}，请于2分钟内正确输入，如非本人操作，请忽略此短信。";
		yanZhengNum();
		String url = Config.BASE_URL + operation;
		String body = "accountSid=" + accountSid + "&to=" + phoneNum + "&smsContent=" + smsContent
				+ HttpUtil.createCommonParam();
		System.out.println("smsContent"+smsContent);
		// 提交请求
		String result = HttpUtil.post(url, body);
		System.out.println("result:" + System.lineSeparator() + result);
		return result;
	}
}
