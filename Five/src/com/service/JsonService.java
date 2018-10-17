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
	 * 请求json
	 */
	public String addressJson() {

		// 获得当前用户id
		User user = (User) ActionContext.getContext().getSession().get("user");
		data = dao.selectUserAddressInfo(user.getUserID());
		return "success";
	}
}
