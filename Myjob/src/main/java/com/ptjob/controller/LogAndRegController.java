package com.ptjob.controller;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.regex.Pattern;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;

import com.etc.exam.miaodiapi.IndustrySMS;
import com.fasterxml.jackson.annotation.JsonFormat.Value;
import com.ptjob.entity.Users;
import com.ptjob.service.UserService;
import com.ptjob.util.AppMD5Util;

@Controller
public class LogAndRegController {
	@Resource
	private UserService us;
	private int regcount;

	// 测试，获取所有的用户信息
	@RequestMapping("allusers")
	@ResponseBody
	public List<Users> getAllUsers() {
		return us.getAllUsers();
	}

	/**
	 * 判断手机号是否存在
	 * 
	 * @param userName
	 *            用户输入的手机号（用户名）
	 * @return
	 */
	@RequestMapping(value = "judgePhoneNum", method = RequestMethod.GET, produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String judgeStuIsExis(String userName) {
		regcount = 0;
		String regex = "^((13[0-9])|(15[^4])|(18[0,2,3,5-9])|(17[0-8])|(147))\\d{8}$";
		Boolean flag = Pattern.matches(regex, userName);
		Users u = us.getUsersByNum(userName);
		if (flag == true) {
			if (u == null) {
				regcount++;
				return "1该手机号可以使用"; // 前面的数字为状态标识符，1表示手机号可以注册
			} else {
				return "2该手机号已被注册，请直接登录";// 2表示该手机号已经被注册
			}
		} else {
			return "0请输入正确的手机号";
		}
	}

	/**
	 * 发送验证码
	 */
	@RequestMapping(value = "sendYZM", method = RequestMethod.GET, produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String sendYZM(String phoneNum) {

		return IndustrySMS.execute(phoneNum);

	}

	/**
	 * 判断验证码是否正确
	 * 
	 * @param yanzhengma
	 * @return
	 */
	@RequestMapping(value = "judgeYZM", method = RequestMethod.GET, produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String judgeYZM(String yanzhengma) {
		int yznum;
		if (!yanzhengma.equals("")) {
			yznum = Integer.parseInt(yanzhengma);
			if (yznum == IndustrySMS.yanZhengNum) {
				return "1验证码正确";
			} else {
				return "0验证码错误";
			}
		} else {
			return "0验证码错误";
		}

	}

	// 注册，将用户信息写入到login表中
	@RequestMapping(value = "register", method = RequestMethod.POST)
	@ResponseBody
	public boolean insertUsers(@RequestBody Users u,HttpSession session) {
		// Users u =new Users(null, userName, passWord, userType);
		// System.out.println(u);
		try {
			// 调用MD5加密算法把加密后的用户密码存入数据库中
			session.setAttribute("reguser", u.getUserName());
			String newpassword = AppMD5Util.EncoderByMd5(u.getPassWord());
			u.setPassWord(newpassword);
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return us.insertUsers(u);
	}

	/***
	 * 根基用户输入的用户名和密码进行登录，并根据用户类型，跳转向不同的主页
	 * 
	 * @param userName
	 * @param passWord
	 * @return 返回为null则表示用户名和密码不匹配
	 * @throws UnsupportedEncodingException
	 * @throws NoSuchAlgorithmException
	 */
	@RequestMapping(value = "login", produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String judgeLogin(String userName, String passWord, HttpSession session, SessionStatus sta)
			throws NoSuchAlgorithmException, UnsupportedEncodingException {
		// System.out.println(userName + "," + passWord);
		Users user = us.getUsersByNum(userName);
		if (user != null) {
			if (AppMD5Util.checkpassword(passWord, user.getPassWord())) {
				if (!sta.isComplete()) // 如果session还在
					sta.setComplete(); // 让旧的session过期
				session.setAttribute("userName", userName);
				if (user.getUserType().equals("学生")) {
					session.setAttribute("userType", "student");
					return "学生登录";
				} else if(user.getUserType().equals("企业")){
					session.setAttribute("userType", "company");
					return "企业登录";
				}else {
					session.setAttribute("userType", "admin");
					return "管理员登录";
				}

			} else {
				return null;
			}
		} else {
			// System.out.println("用户名和密码不匹配");
			return null;
		}
	}

	/***
	 * 注销登录
	 * 
	 * @param session
	 * @param sta
	 * @return
	 */
	@RequestMapping(value = "logout")
	public String logout(HttpSession session, SessionStatus sta) {
		session.invalidate();
		return "redirect:/index.jsp";
	}

	
	/***
	 * 修改用户密码
	 * @param session
	 * @param oldpassword
	 * @param newpassword1
	 * @param newpassword2
	 * @return
	 * @throws NoSuchAlgorithmException
	 * @throws UnsupportedEncodingException
	 */
	@RequestMapping(value = "updatepsw", method = RequestMethod.POST,produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String updatePsw(HttpSession session, String oldpassword, String newpassword1, String newpassword2)
			throws NoSuchAlgorithmException, UnsupportedEncodingException {
		String userName = session.getAttribute("userName") + "";
		Users user = us.getUsersByNum(userName);
		if (AppMD5Util.checkpassword(oldpassword, user.getPassWord())) {
			if (newpassword1.equals(newpassword2)) {
				user.setPassWord(AppMD5Util.EncoderByMd5(newpassword1));
				if(us.updatePsw(user)) {
					return "修改成功";
				}
				else {
					return "系统错误";
				}
			} else {
				return "两次输入的密码不一致";
			}
		} else {
			return "原密码不正确，请重新输入";
		}
	}

}
