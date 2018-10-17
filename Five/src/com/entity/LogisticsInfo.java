package com.entity;

import java.io.Serializable;
import java.util.Date;

import com.mysql.fabric.xmlrpc.base.Data;

/*
 * �����µ�
 */
public class LogisticsInfo implements Serializable {
	public int ID;// ϵͳ���
	public Long logNo;// �������

	public String inputName;// �ջ�������
	public String inputPhone;// �ջ�����ϵ�绰
	public String inputAdd;// Ŀ�ĵ�(�ջ���ַ)

	public String noteInfo;// ��ע��Ϣ

	public String outputName;// ����������
	public String outputPhone;// ��������ϵ�绰
	public String output;// ������(������)

	public String outDate;// ����ʱ��

	// û�б�ע��Ϣ��ʵ��(id�Զ�������������)

	public LogisticsInfo(Long logNo, String inputName, String inputPhone, String inputAdd, String outputName,
			String outputPhone, String output, String outDate) {
		super();
		this.logNo = logNo;
		this.inputName = inputName;
		this.inputPhone = inputPhone;
		this.inputAdd = inputAdd;
		this.outputName = outputName;
		this.outputPhone = outputPhone;
		this.output = output;
		this.outDate = outDate;

	}

	// �б�ע��Ϣ��ʵ��(id�Զ�������������)
	public LogisticsInfo(Long logNo, String inputName, String inputPhone, String inputAdd, String noteInfo,
			String outputName, String outputPhone, String output, String outDate) {
		super();
		this.logNo = logNo;
		this.inputName = inputName;
		this.inputPhone = inputPhone;
		this.inputAdd = inputAdd;
		this.noteInfo = noteInfo;
		this.outputName = outputName;
		this.outputPhone = outputPhone;
		this.output = output;
		this.outDate = outDate;

	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public Long getLogNo() {
		return logNo;
	}

	public void setLogNo(Long logNo) {
		this.logNo = logNo;
	}

	public String getInputName() {
		return inputName;
	}

	public void setInputName(String inputName) {
		this.inputName = inputName;
	}

	public String getInputPhone() {
		return inputPhone;
	}

	public void setInputPhone(String inputPhone) {
		this.inputPhone = inputPhone;
	}

	public String getInputAdd() {
		return inputAdd;
	}

	public void setInputAdd(String inputAdd) {
		this.inputAdd = inputAdd;
	}

	public String getNoteInfo() {
		return noteInfo;
	}

	public void setNoteInfo(String noteInfo) {
		this.noteInfo = noteInfo;
	}

	public String getOutputName() {
		return outputName;
	}

	public void setOutputName(String outputName) {
		this.outputName = outputName;
	}

	public String getOutputPhone() {
		return outputPhone;
	}

	public void setOutputPhone(String outputPhone) {
		this.outputPhone = outputPhone;
	}

	public String getOutput() {
		return output;
	}

	public void setOutput(String output) {
		this.output = output;
	}

	public String getOutDate() {
		return outDate;
	}

	public void setOutDate(String outDate) {
		this.outDate = outDate;
	}

	public LogisticsInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "LogisticsInfo [ID=" + ID + ", logNo=" + logNo + ", inputName=" + inputName + ", inputPhone="
				+ inputPhone + ", inputAdd=" + inputAdd + ", noteInfo=" + noteInfo + ", outputName=" + outputName
				+ ", outputPhone=" + outputPhone + ", output=" + output + ", outDate=" + outDate + "]";
	}

}
