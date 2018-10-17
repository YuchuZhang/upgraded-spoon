package com.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.query.NativeQuery;
import org.hibernate.query.Query;

import com.entity.AddressInfo;
import com.entity.LogisticsInfo;
import com.entity.User;

public class DaoImpl implements BaseDao {
	// 实现单例
	public static final SessionFactory facgtory = getFacgtory();
	// 线程锁
	public static final ThreadLocal<Session> threadLock = new ThreadLocal<Session>();

	// 获得session工厂
	public static SessionFactory getFacgtory() {
		StandardServiceRegistry reg = new StandardServiceRegistryBuilder().configure().build();
		return new MetadataSources(reg).buildMetadata().buildSessionFactory();
	}

	// 获得session
	public static Session getSession() {
		Session session = threadLock.get();
		if (session == null) {
			session = facgtory.openSession();
		}
		threadLock.set(session);
		return session;
	}

	// 关闭session
	public static void closeSession() {
		Session session = threadLock.get();
		if (session != null) {
			session.close();
			threadLock.set(null);
		}
	}

	// 通用添加方法
	@Override
	public void addInfo(Object obj) {
		Session session = getSession();
		Transaction bt = session.beginTransaction();
		try {
			session.save(obj);
			bt.commit();
		} catch (Exception e) {
			e.printStackTrace();
			bt.rollback();
		} finally {
			closeSession();
		}

	}

	// 用户登陆
	@Override
	public User select(User obj) {
		Session session = getSession();
		User info = null;
		try {
			String phone = obj.getUserPhone();
			String pwd = obj.getUserPWd();
			String findInfo = "select * from user a where a.userphone= ? and a.userpwd= ?";
			// 使用原生sql语句进行query查询时，hibernate是不会自动把结果包装成实体的。所以要加addEntity;
			List<User> query = session.createNativeQuery(findInfo).setParameter(1, phone).setParameter(2, pwd)
					.addEntity(obj.getClass()).getResultList();
			if (!query.isEmpty()) {
				info = query.get(0);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeSession();
		}
		return info;
	}

	// 更新方法
	@Override
	public void update(Object obj) {
		Session session = getSession();
		Transaction bt = session.beginTransaction();
		try {
			session.update(obj);
			bt.commit();
		} catch (Exception e) {
			e.printStackTrace();
			bt.rollback();
		} finally {
			closeSession();
		}
	}

	// 修改密码
	@Override
	public void updatepwd(int i, String pwd) {
		Session session = getSession();
		Transaction bt = session.beginTransaction();
		try {
			String findInfo = "UPDATE user set USERPWD=? WHERE USERID =?";
			session.createNativeQuery(findInfo).setParameter(1, pwd).setParameter(2, i).executeUpdate();
			bt.commit();
		} catch (Exception e) {
			e.printStackTrace();
			bt.rollback();
		} finally {
			closeSession();
		}

	}

	// 保存用户地址
	@Override
	public void userAddress(AddressInfo addInfo) {
		Session session = getSession();
		Transaction bt = session.beginTransaction();
		try {
			session.save(addInfo);
			bt.commit();
		} catch (Exception e) {
			e.printStackTrace();
			bt.rollback();
		} finally {
			closeSession();
		}
	}

	/*
	 * 创建订单(non-Javadoc)
	 * 
	 * session.save返回Serializable(新生成的主键)
	 */
	@Override
	public void create(LogisticsInfo order) {
		Serializable pd = null;
		Session session = getSession();
		Transaction bt = session.beginTransaction();
		try {
			session.save(order);
			bt.commit();
		} catch (Exception e) {
			e.printStackTrace();
			bt.rollback();
		} finally {
			closeSession();
		}
	}

	// 查询当前用户的地址库
	@Override
	public List<AddressInfo> selectUserAddressInfo(int userID) {
		Session session = getSession();
		List<AddressInfo> list = null;
		try {
			list = session.createNativeQuery("SELECT * FROM addressinfo WHERE pid=?").addEntity(AddressInfo.class)
					.setParameter(1, userID).getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeSession();
		}

		return list;
	}

	/*
	 * 
	 * 通过手机号(唯一键)查询当前用户的所有订单
	 */
	@Override
	public List<LogisticsInfo> selectOrder(String userPhone) {
		Session session = getSession();
		List<LogisticsInfo> list = null;
		try {
			list = session.createNativeQuery("SELECT * FROM logisticsinfo WHERE OUTPUTPHONE=?")
					.addEntity(LogisticsInfo.class).setParameter(1, userPhone).getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeSession();
		}
		return list;

	}

	/*
	 * orderID(订单号)
	 * 
	 * 查询订单号
	 */
	@Override
	public List<LogisticsInfo> selectOrderID(String orderID) {
		Session session = getSession();
		List<LogisticsInfo> list = null;
		try {
			list = session.createNativeQuery("SELECT * FROM logisticsinfo WHERE LOGNO=?").addEntity(LogisticsInfo.class)
					.setParameter(1, orderID).getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeSession();
		}
		return list;

	}

}
