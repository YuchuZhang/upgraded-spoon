package com.interceptor;

import com.entity.User;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

/*
 * 拦截未登录用户
 */
public class InterceptorImpl extends MethodFilterInterceptor {

	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		System.out.println("拦截ing 当前方法：" + invocation.getProxy().getMethod() + "  请求的参数："
				+ invocation.getInvocationContext().getParameters());

		User user = (User) invocation.getInvocationContext().getSession().get("user");
		if (user == null) {
			return "login";
		}
		return invocation.invoke();
	}

}
