package com.service;

import java.util.List;

import com.dao.DaoImpl;
import com.entity.AddressInfo;
import com.entity.User;
import com.opensymphony.xwork2.ActionContext;

/*
 * �û������
 */
public class UserService {
	private DaoImpl dao = new DaoImpl();

	// ����û�
	public void adduser(User user) {
		System.out.println(user.toString());
		dao.addInfo(user);
	}

	// ��½��ѯ
	public User selecrUser(User user) {
		return dao.select(user);
	}

	// �޸��û�
	public void updateInfo(User user) {
		dao.update(user);
	}

	/*
	 * �޸�����
	 * 
	 * User user(�û�ʵ��)
	 * 
	 * String newPwd(������)
	 * 
	 */
	public boolean updateInfo(User user, String newPwd) {
		System.out.println("������ֻ��ţ�"+user.getUserPhone()+"���������:"+user.getUserPWd());
		User pd = selecrUser(user);
		if (pd == null) {
			System.out.println("�������");
			return false;
		}
		dao.updatepwd(user.getUserID(), newPwd);
		return true;

	}

	/*
	 * AddressInfo addInfo(��ַʵ��)
	 * 
	 * ����û���ַ
	 */
	public void addUserAddress(AddressInfo addInfo) {
		dao.userAddress(addInfo);
	}

	/*
	 * String userID(�û�id)
	 * 
	 * ��ѯ��ǰ�û��ĵ�ַ��
	 */
	public void select(int userID) {
		List<AddressInfo> rs = dao.selectUserAddressInfo(userID);
		System.out.println(rs.toString());
		ActionContext.getContext().getSession().put("userAddInfo", rs);
	}
}
