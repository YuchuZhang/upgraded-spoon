package com.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import com.dao.DaoImpl;
import com.entity.LogisticsInfo;
import com.opensymphony.xwork2.ActionContext;

/*
 * ����ܹ�(�����)
 */
public class OrderService {
	DaoImpl dao = new DaoImpl();

	/*
	 * ��������
	 * 
	 * LogisticsInfo order(�����Ķ���ʵ��)
	 */
	public void createOrder(LogisticsInfo order) {
		// ���ƶ�����Ϣ
		Long rs = getLogNo();
		order.setLogNo(rs);// ���ö�����
		String time = new SimpleDateFormat("yyyy--MM--dd HH:mm:ss").format(new Date());
		order.setOutDate(time);// �����µ�ʱ��
		dao.create(order);
	}

	/*
	 * ���ɶ������
	 */
	private Long getLogNo() {
		String formatDate = new SimpleDateFormat("yyMMddHHmmss").format(new Date());
		int random = new Random().nextInt(999);// ������
		return Long.parseLong(formatDate + random);// ��ǰʱ��+������=������
	}

	/*
	 * userPhone(�ֻ���)
	 * 
	 * �����ֻ��Ų��Ҷ���
	 */
	public void selectALL(String userPhone) {
		List<LogisticsInfo> rs = dao.selectOrder(userPhone);
		ActionContext.getContext().getSession().put("userOrderList", rs);
	}

	/*
	 * orderID(������)
	 * 
	 * ��ѯ������
	 */
	public void selectID(String orderID) {
		List<LogisticsInfo> rs = dao.selectOrderID(orderID);
		System.out.println("��ѯ���" + rs.toString());
		ActionContext.getContext().getValueStack().set("selectOrderID", rs);
	}

}
