package ptjob;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import sun.misc.BASE64Encoder;

public class TestMD5 {
	/**����MD5���м���
     * @param str  �����ܵ��ַ���
     * @return  ���ܺ���ַ���
     * @throws NoSuchAlgorithmException  û�����ֲ�����ϢժҪ���㷨
     * @throws UnsupportedEncodingException  
     */
    public static String EncoderByMd5(String str) throws NoSuchAlgorithmException, UnsupportedEncodingException{
        //ȷ�����㷽��
        MessageDigest md5=MessageDigest.getInstance("MD5");
        BASE64Encoder base64en = new BASE64Encoder();
        //���ܺ���ַ���
        String newstr=base64en.encode(md5.digest(str.getBytes("utf-8")));
        return newstr;
    }
    
    /**�ж��û������Ƿ���ȷ
     * @param newpasswd  �û����������
     * @param oldpasswd  ���ݿ��д洢�����룭���û������ժҪ
     * @return
     * @throws NoSuchAlgorithmException
     * @throws UnsupportedEncodingException
     */
    public static boolean checkpassword(String newpasswd,String oldpasswd) throws NoSuchAlgorithmException, UnsupportedEncodingException{
        if(EncoderByMd5(newpasswd).equals(oldpasswd))
            return true;
        else
            return false;
    }
    
    
    public static void main(String[] args) throws NoSuchAlgorithmException, UnsupportedEncodingException {
		String oldpass = "000000";
		String newpass = EncoderByMd5(oldpass);
		System.out.println(newpass);
		
		System.out.println(checkpassword("000001", "ZwsUcorZkCrsujLiL6T2vQ=="));
	}
}