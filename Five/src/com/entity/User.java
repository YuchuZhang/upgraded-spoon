package com.entity;

import java.io.Serializable;
import java.util.Set;

/*
 * �û���
 */
public class User implements Serializable {
	public int userID;// ����id
	public String userPhone;// �û��ֻ���(Ψһ)
	public String userPWd;// �û�����

	public String userPicture;// �û�ͷ��
	public String userName;// �û��ǳ�
	public boolean userSex;// �û��Ա�0��1Ů

	public String UserBirth;// �û���������
	public String UserEmail;// �û�����
	public String UserAdd;// �û���ַ
	public Set<AddressInfo> addLibar;// ���û��ĵ�ַ��
	public Set<LogisticsInfo> odrerList;// ���û��Ķ���

	public Set<AddressInfo> getAddLibar() {
		return addLibar;
	}

	public void setAddLibar(Set<AddressInfo> addLibar) {
		this.addLibar = addLibar;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserPWd() {
		return userPWd;
	}

	public void setUserPWd(String userPWd) {
		this.userPWd = userPWd;
	}

	public String getUserPicture() {
		return userPicture;
	}

	public void setUserPicture(String userPicture) {
		this.userPicture = userPicture;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public boolean isUserSex() {
		return userSex;
	}

	public void setUserSex(boolean userSex) {
		this.userSex = userSex;
	}

	public String getUserBirth() {
		return UserBirth;
	}

	public void setUserBirth(String userBirth) {
		UserBirth = userBirth;
	}

	public String getUserEmail() {
		return UserEmail;
	}

	public void setUserEmail(String userEmail) {
		UserEmail = userEmail;
	}

	public String getUserAdd() {
		return UserAdd;
	}

	public void setUserAdd(String userAdd) {
		UserAdd = userAdd;
	}

	// �޸��û���Ϣ(�������)
	public User(String userPhone, String userPicture, String userName, boolean userSex, String userBirth,
			String userEmail, String userAdd) {
		super();
		this.userPhone = userPhone;
		this.userPicture = userPicture;
		this.userName = userName;
		this.userSex = userSex;
		UserBirth = userBirth;
		UserEmail = userEmail;
		UserAdd = userAdd;
	}

	// �����û�
	public User(String userPhone, String userPWd, String userEmail) {
		super();
		this.userPhone = userPhone;
		this.userPWd = userPWd;
		UserEmail = userEmail;
	}

	@Override
	public String toString() {
		return "User [userID=" + userID + ", userPhone=" + userPhone + ", userPWd=" + userPWd + ", userPicture="
				+ userPicture + ", userName=" + userName + ", userSex=" + userSex + ", UserBirth=" + UserBirth
				+ ", UserEmail=" + UserEmail + ", UserAdd=" + UserAdd + ", addLibar=" + addLibar + "]";
	}

}
