package com.action;

import org.apache.struts2.ServletActionContext;

import com.entity.LogisticsInfo;
import com.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import com.service.OrderService;

/*
 * 在线下单
 */
public class OrderAction extends ActionSupport implements ModelDriven<LogisticsInfo> {
	// 接受页面信息
	public LogisticsInfo order = new LogisticsInfo();
	// 服务层
	public OrderService mailSer = new OrderService();

	/*
	 * 下单
	 */
	public String onlineOrder() {
		mailSer.createOrder(order);
		return INPUT;
	}

	/*
	 * 查询当前订单列表(根据当前用户手机号进行查询)
	 */
	public String userOrder() {
		User user = (User) ActionContext.getContext().getSession().get("user");
		mailSer.selectALL(user.getUserPhone());
		return SUCCESS;
	}

	/*
	 * 订单号查询
	 */
	public String selectOrderID() {
		String orderID = ServletActionContext.getRequest().getParameter("orderID");
		mailSer.selectID(orderID);
		return "orderShow";
	}

	// 模型驱动
	@Override
	public LogisticsInfo getModel() {
		return order;
	}
}
