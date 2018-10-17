package com.action;

import com.entity.AddressInfo;
import com.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.UserService;

/*
 * 用户地址
 */
public class AddressAction extends ActionSupport implements ModelDriven<AddressInfo> {
	public AddressInfo addInfo = new AddressInfo();
	
	
	
	private UserService userService = new UserService();

	// 添加地址
	public String address() {
		System.out.println("模型驱动：" + addInfo.toString());
		userService.addUserAddress(addInfo);
		System.out.println("链式调用开始");
		return INPUT;
	}

	// 查询当前用户的地址库
	public String userAddressInfo() {
		User user = (User) ActionContext.getContext().getSession().get("user");
		System.out.println("当前用户id" + user.getUserID());
		userService.select(user.getUserID());
		return SUCCESS;
	}

	@Override
	public AddressInfo getModel() {
		return addInfo;
	}
}
