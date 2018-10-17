package com.action;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.Random;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.interceptor.ValidationAware;
import com.service.UserService;

/*
 * �û�����
 */
public class UserAction extends ActionSupport implements ModelDriven<User>, ValidationAware {
	// ģ������
	public User user = new User();
	// �����
	private UserService userService = new UserService();
	// session
	final Map<String, Object> session = ActionContext.getContext().getSession();
	// ͼƬ�ϴ����
	private File doc;
	private String docFileName;
	private String docContentType;

	public File getDoc() {
		return doc;
	}

	public void setDoc(File doc) {
		this.doc = doc;
	}

	public String getDocFileName() {
		return docFileName;
	}

	public void setDocFileName(String docFileName) {
		this.docFileName = docFileName;
	}

	public String getDocContentType() {
		return docContentType;
	}

	public void setDocContentType(String docContentType) {
		this.docContentType = docContentType;
	}

	// ����û�
	public String addUser() {
		userService.adduser(user);
		return "login";
	}

	// �޸��û���Ϣ(�ϴ�ͷ��)
	public String updateinfo() throws IOException {

		System.out.println("�û��Ա𣺣���������������������������������������������" + user.isUserSex());
		// ���û���ϴ����ļ���ʹ��ԭͷ��
		if (this.getDocFileName() == null) {
			// ԭͷ������
			String imgname = userService.selecrUser(user).getUserPicture();
			user.setUserPicture(imgname);
		} else {
			String realPath = ServletActionContext.getServletContext().getRealPath("/upload");// �ļ��ϴ�Ŀ¼
			String newName = getNewFile(this.getDocFileName());// �������ļ���
			File target = new File(realPath + File.separator + newName);// ����Ŀ���ļ�
			FileUtils.copyFile(doc, target);// ��ʼ����
			user.setUserPicture(newName);
		}
		userService.updateInfo(user);
		System.out.println("�޸Ľ�����������������������������������������������");
		return "cnm";
	}

	// �������ļ���
	private String getNewFile(String fileName) {
		String formatDate = new SimpleDateFormat("yyMMddHHmmss").format(new Date());// ʱ��
		int random = new Random().nextInt(10000);// ������
		int postion = fileName.lastIndexOf(".");
		String exetendsion = fileName.substring(postion);// �ļ���׺��
		return formatDate + random + exetendsion;// ���ļ���=ʱ��+������+��׺��
	}

	// ͷ����ʾ
	public InputStream getInputStream() {
		String imgid = ServletActionContext.getRequest().getParameter("imgid");// ���ͼƬ��
		InputStream info = ServletActionContext.getServletContext().getResourceAsStream("upload/" + imgid);// ����ļ�·��
		return info;
	}

	// ��ʾͼƬ
	public String showimg() {
		System.out.println("����ͼƬ��ʾ�׶�");
		return "getImg";
	}

	/*
	 * ��ѯ�û���Ϣ(�޸ĳɹ����ٴβ�ѯ)
	 */
	public String selectone() {
		User info = (User) ActionContext.getContext().getSession().get("user");
		User rs = userService.selecrUser(info);
		session.put("user", rs);
		return INPUT;
	}

	// �û���½
	public String login() {
		User rs = userService.selecrUser(user);
		if (rs == null) {
			addFieldError("userPWd", "�˺Ż��������");
			return ERROR;
		}
		System.out.println("��½�ɹ���" + rs.toString());
		// ��½�ɹ��ѵ�ǰ�û�ʵ�����session
		session.put("user", rs);
		return INPUT;
	}

	// �޸��û�����
	public String updatePwd() throws IOException {
		String newPwd = ServletActionContext.getRequest().getParameter("newPwd");
		boolean pd = userService.updateInfo(user, newPwd);
		if (pd == false) {
			ServletActionContext.getRequest().setAttribute("tipMessage", "ԭ�������");
			return "pwdError";
		}
		return "login";
	}

	/*
	 * ��ȫ�˳�(���session)
	 */
	public String clearOut() {
		ActionContext.getContext().getSession().clear();
		return LOGIN;
	}

	// ģ������
	@Override
	public User getModel() {
		return user;
	}
}
