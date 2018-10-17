package com.service;

import java.util.List;

import com.dao.DaoImpl;
import com.entity.AddressInfo;
import com.entity.User;
import com.opensymphony.xwork2.ActionContext;

/*
 * 用户服务层
 */
public class UserService {
	private DaoImpl dao = new DaoImpl();

	// 添加用户
	public void adduser(User user) {
		System.out.println(user.toString());
		dao.addInfo(user);
	}

	// 登陆查询
	public User selecrUser(User user) {
		return dao.select(user);
	}

	// 修改用户
	public void updateInfo(User user) {
		dao.update(user);
	}

	/*
	 * 修改密码
	 * 
	 * User user(用户实体)
	 * 
	 * String newPwd(新密码)
	 * 
	 */
	public boolean updateInfo(User user, String newPwd) {
		System.out.println("输入的手机号："+user.getUserPhone()+"输入的密码:"+user.getUserPWd());
		User pd = selecrUser(user);
		if (pd == null) {
			System.out.println("密码错误");
			return false;
		}
		dao.updatepwd(user.getUserID(), newPwd);
		return true;

	}

	/*
	 * AddressInfo addInfo(地址实体)
	 * 
	 * 添加用户地址
	 */
	public void addUserAddress(AddressInfo addInfo) {
		dao.userAddress(addInfo);
	}

	/*
	 * String userID(用户id)
	 * 
	 * 查询当前用户的地址库
	 */
	public void select(int userID) {
		List<AddressInfo> rs = dao.selectUserAddressInfo(userID);
		System.out.println(rs.toString());
		ActionContext.getContext().getSession().put("userAddInfo", rs);
	}
}
