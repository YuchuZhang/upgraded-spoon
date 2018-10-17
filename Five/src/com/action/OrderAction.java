package com.action;

import org.apache.struts2.ServletActionContext;

import com.entity.LogisticsInfo;
import com.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import com.service.OrderService;

/*
 * �����µ�
 */
public class OrderAction extends ActionSupport implements ModelDriven<LogisticsInfo> {
	// ����ҳ����Ϣ
	public LogisticsInfo order = new LogisticsInfo();
	// �����
	public OrderService mailSer = new OrderService();

	/*
	 * �µ�
	 */
	public String onlineOrder() {
		mailSer.createOrder(order);
		return INPUT;
	}

	/*
	 * ��ѯ��ǰ�����б�(���ݵ�ǰ�û��ֻ��Ž��в�ѯ)
	 */
	public String userOrder() {
		User user = (User) ActionContext.getContext().getSession().get("user");
		mailSer.selectALL(user.getUserPhone());
		return SUCCESS;
	}

	/*
	 * �����Ų�ѯ
	 */
	public String selectOrderID() {
		String orderID = ServletActionContext.getRequest().getParameter("orderID");
		mailSer.selectID(orderID);
		return "orderShow";
	}

	// ģ������
	@Override
	public LogisticsInfo getModel() {
		return order;
	}
}
