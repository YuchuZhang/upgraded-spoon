package com.entity;

import java.io.Serializable;
import java.util.Set;

/*
 * 用户表
 */
public class User implements Serializable {
	public int userID;// 内置id
	public String userPhone;// 用户手机号(唯一)
	public String userPWd;// 用户密码

	public String userPicture;// 用户头像
	public String userName;// 用户昵称
	public boolean userSex;// 用户性别0男1女

	public String UserBirth;// 用户出生日期
	public String UserEmail;// 用户邮箱
	public String UserAdd;// 用户地址
	public Set<AddressInfo> addLibar;// 该用户的地址库
	public Set<LogisticsInfo> odrerList;// 该用户的订单

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

	// 修改用户信息(密码除外)
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

	// 创建用户
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
