package com.dao;

import java.util.List;
import com.entity.AddressInfo;
import com.entity.LogisticsInfo;
import com.entity.User;

public interface BaseDao {

	// �����Ϣ
	public void addInfo(Object obj);

	// ��½��֤
	public User select(User user);

	// ͨ�ø���
	public void update(Object obj);

	// �޸�����
	public void updatepwd(int id, String pwd);

	// �����û���ַ
	public void userAddress(AddressInfo addInfo);

	// ��������
	public void create(LogisticsInfo order);

	// ��ѯ��ǰ�û��ĵ�ַ��
	public List<AddressInfo> selectUserAddressInfo(int userID);

	// ��ѯ��ǰ�û������ж���
	public List<LogisticsInfo> selectOrder(String userPhone);

	// ��ѯ������
	public List<LogisticsInfo> selectOrderID(String orderID);

}
