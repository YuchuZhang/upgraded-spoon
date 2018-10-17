package com.entity;

import java.io.Serializable;

/*
 * 用户绑定的地址
 */
public class AddressInfo implements Serializable {
	public Integer addressID;// 主键
	public String addressMan;
	public String addressPhone;
	public String addressName;
	public Integer pid;// 外键

	public String getAddressMan() {
		return addressMan;
	}

	public void setAddressMan(String addressMan) {
		this.addressMan = addressMan;
	}

	public String getAddressPhone() {
		return addressPhone;
	}

	public void setAddressPhone(String addressPhone) {
		this.addressPhone = addressPhone;
	}

	public String getAddressName() {
		return addressName;
	}

	public void setAddressName(String addressName) {
		this.addressName = addressName;
	}

	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	// 构造方法(addressID主键自动生成)
	public AddressInfo(String addressMan, String addressPhone, String addressName, Integer pid) {
		super();
		this.addressMan = addressMan;
		this.addressPhone = addressPhone;
		this.addressName = addressName;
		this.pid = pid;
	}

	@Override
	public String toString() {
		return "AddressInfo [addressID=" + addressID + ", addressMan=" + addressMan + ", addressPhone=" + addressPhone
				+ ", addressName=" + addressName + ", pid=" + pid + "]";
	}

	public AddressInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

}
