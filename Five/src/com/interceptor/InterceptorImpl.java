package com.interceptor;

import com.entity.User;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

/*
 * ����δ��¼�û�
 */
public class InterceptorImpl extends MethodFilterInterceptor {

	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		System.out.println("����ing ��ǰ������" + invocation.getProxy().getMethod() + "  ����Ĳ�����"
				+ invocation.getInvocationContext().getParameters());

		User user = (User) invocation.getInvocationContext().getSession().get("user");
		if (user == null) {
			return "login";
		}
		return invocation.invoke();
	}

}
