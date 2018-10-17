package com.dao;

import java.util.List;
import com.entity.AddressInfo;
import com.entity.LogisticsInfo;
import com.entity.User;

public interface BaseDao {

	// 添加信息
	public void addInfo(Object obj);

	// 登陆验证
	public User select(User user);

	// 通用更新
	public void update(Object obj);

	// 修改密码
	public void updatepwd(int id, String pwd);

	// 保存用户地址
	public void userAddress(AddressInfo addInfo);

	// 创建订单
	public void create(LogisticsInfo order);

	// 查询当前用户的地址库
	public List<AddressInfo> selectUserAddressInfo(int userID);

	// 查询当前用户的所有订单
	public List<LogisticsInfo> selectOrder(String userPhone);

	// 查询订单号
	public List<LogisticsInfo> selectOrderID(String orderID);

}
