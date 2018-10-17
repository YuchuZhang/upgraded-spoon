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
 * 用户操作
 */
public class UserAction extends ActionSupport implements ModelDriven<User>, ValidationAware {
	// 模型驱动
	public User user = new User();
	// 服务层
	private UserService userService = new UserService();
	// session
	final Map<String, Object> session = ActionContext.getContext().getSession();
	// 图片上传组件
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

	// 添加用户
	public String addUser() {
		userService.adduser(user);
		return "login";
	}

	// 修改用户信息(上传头像)
	public String updateinfo() throws IOException {

		System.out.println("用户性别：！！！！！！！！！！！！！！！！！！！！！！！" + user.isUserSex());
		// 如果没有上传新文件就使用原头像
		if (this.getDocFileName() == null) {
			// 原头像名字
			String imgname = userService.selecrUser(user).getUserPicture();
			user.setUserPicture(imgname);
		} else {
			String realPath = ServletActionContext.getServletContext().getRealPath("/upload");// 文件上传目录
			String newName = getNewFile(this.getDocFileName());// 生成新文件名
			File target = new File(realPath + File.separator + newName);// 创建目标文件
			FileUtils.copyFile(doc, target);// 开始复制
			user.setUserPicture(newName);
		}
		userService.updateInfo(user);
		System.out.println("修改结束！！！！！！！！！！！！！！！！！！！！！！");
		return "cnm";
	}

	// 生成新文件名
	private String getNewFile(String fileName) {
		String formatDate = new SimpleDateFormat("yyMMddHHmmss").format(new Date());// 时间
		int random = new Random().nextInt(10000);// 随机编号
		int postion = fileName.lastIndexOf(".");
		String exetendsion = fileName.substring(postion);// 文件后缀名
		return formatDate + random + exetendsion;// 新文件名=时间+随机编号+后缀名
	}

	// 头像显示
	public InputStream getInputStream() {
		String imgid = ServletActionContext.getRequest().getParameter("imgid");// 获得图片名
		InputStream info = ServletActionContext.getServletContext().getResourceAsStream("upload/" + imgid);// 获得文件路径
		return info;
	}

	// 显示图片
	public String showimg() {
		System.out.println("进入图片显示阶段");
		return "getImg";
	}

	/*
	 * 查询用户信息(修改成功后再次查询)
	 */
	public String selectone() {
		User info = (User) ActionContext.getContext().getSession().get("user");
		User rs = userService.selecrUser(info);
		session.put("user", rs);
		return INPUT;
	}

	// 用户登陆
	public String login() {
		User rs = userService.selecrUser(user);
		if (rs == null) {
			addFieldError("userPWd", "账号或密码错误");
			return ERROR;
		}
		System.out.println("登陆成功：" + rs.toString());
		// 登陆成功把当前用户实体放入session
		session.put("user", rs);
		return INPUT;
	}

	// 修改用户密码
	public String updatePwd() throws IOException {
		String newPwd = ServletActionContext.getRequest().getParameter("newPwd");
		boolean pd = userService.updateInfo(user, newPwd);
		if (pd == false) {
			ServletActionContext.getRequest().setAttribute("tipMessage", "原密码错误");
			return "pwdError";
		}
		return "login";
	}

	/*
	 * 安全退出(清空session)
	 */
	public String clearOut() {
		ActionContext.getContext().getSession().clear();
		return LOGIN;
	}

	// 模型驱动
	@Override
	public User getModel() {
		return user;
	}
}
