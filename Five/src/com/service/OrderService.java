package com.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import com.dao.DaoImpl;
import com.entity.LogisticsInfo;
import com.opensymphony.xwork2.ActionContext;

/*
 * 三层架构(服务层)
 */
public class OrderService {
	DaoImpl dao = new DaoImpl();

	/*
	 * 创建订单
	 * 
	 * LogisticsInfo order(完整的订单实体)
	 */
	public void createOrder(LogisticsInfo order) {
		// 完善订单信息
		Long rs = getLogNo();
		order.setLogNo(rs);// 设置订单号
		String time = new SimpleDateFormat("yyyy--MM--dd HH:mm:ss").format(new Date());
		order.setOutDate(time);// 设置下单时间
		dao.create(order);
	}

	/*
	 * 生成订单编号
	 */
	private Long getLogNo() {
		String formatDate = new SimpleDateFormat("yyMMddHHmmss").format(new Date());
		int random = new Random().nextInt(999);// 随机编号
		return Long.parseLong(formatDate + random);// 当前时间+加随编号=订单号
	}

	/*
	 * userPhone(手机号)
	 * 
	 * 根据手机号查找订单
	 */
	public void selectALL(String userPhone) {
		List<LogisticsInfo> rs = dao.selectOrder(userPhone);
		ActionContext.getContext().getSession().put("userOrderList", rs);
	}

	/*
	 * orderID(订单号)
	 * 
	 * 查询订单号
	 */
	public void selectID(String orderID) {
		List<LogisticsInfo> rs = dao.selectOrderID(orderID);
		System.out.println("查询结果" + rs.toString());
		ActionContext.getContext().getValueStack().set("selectOrderID", rs);
	}

}
