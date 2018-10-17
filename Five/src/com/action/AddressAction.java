package com.action;

import com.entity.AddressInfo;
import com.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.UserService;

/*
 * �û���ַ
 */
public class AddressAction extends ActionSupport implements ModelDriven<AddressInfo> {
	public AddressInfo addInfo = new AddressInfo();
	
	
	
	private UserService userService = new UserService();

	// ��ӵ�ַ
	public String address() {
		System.out.println("ģ��������" + addInfo.toString());
		userService.addUserAddress(addInfo);
		System.out.println("��ʽ���ÿ�ʼ");
		return INPUT;
	}

	// ��ѯ��ǰ�û��ĵ�ַ��
	public String userAddressInfo() {
		User user = (User) ActionContext.getContext().getSession().get("user");
		System.out.println("��ǰ�û�id" + user.getUserID());
		userService.select(user.getUserID());
		return SUCCESS;
	}

	@Override
	public AddressInfo getModel() {
		return addInfo;
	}
}
