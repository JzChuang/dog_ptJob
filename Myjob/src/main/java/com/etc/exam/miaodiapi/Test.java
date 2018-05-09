package com.etc.exam.miaodiapi;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// 获取�?发�?�账号信�?
		// AccountInfo.execute();

		// 验证码�?�知短信接口
		IndustrySMS.execute("15659561005");

		// 生成随机验证�?
		// System.out.println(IndustrySMS.yanZhengNum());

		// 会员营销短信接口
		// AffMarkSMS.execute();

		// 短信邮验证码通知短信接口
		// IndustryEmailSMS.execute();

		// 短信邮验证码通知短信接口
		// AffMarkEmailSMS.execute();

		// 语音验证�?
		// VoiceCode.execute();

	}
}
