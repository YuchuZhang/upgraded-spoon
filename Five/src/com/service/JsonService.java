package com.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.dao.DaoImpl;
import com.entity.AddressInfo;
import com.entity.User;
import com.opensymphony.xwork2.ActionContext;

public class JsonService {
	public List data;
	public DaoImpl dao = new DaoImpl();

	/*
	 * ����json
	 */
	public String addressJson() {

		// ��õ�ǰ�û�id
		User user = (User) ActionContext.getContext().getSession().get("user");
		data = dao.selectUserAddressInfo(user.getUserID());
		return "success";
	}
}
