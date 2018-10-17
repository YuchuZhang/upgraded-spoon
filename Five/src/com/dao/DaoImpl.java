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
	// ʵ�ֵ���
	public static final SessionFactory facgtory = getFacgtory();
	// �߳���
	public static final ThreadLocal<Session> threadLock = new ThreadLocal<Session>();

	// ���session����
	public static SessionFactory getFacgtory() {
		StandardServiceRegistry reg = new StandardServiceRegistryBuilder().configure().build();
		return new MetadataSources(reg).buildMetadata().buildSessionFactory();
	}

	// ���session
	public static Session getSession() {
		Session session = threadLock.get();
		if (session == null) {
			session = facgtory.openSession();
		}
		threadLock.set(session);
		return session;
	}

	// �ر�session
	public static void closeSession() {
		Session session = threadLock.get();
		if (session != null) {
			session.close();
			threadLock.set(null);
		}
	}

	// ͨ����ӷ���
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

	// �û���½
	@Override
	public User select(User obj) {
		Session session = getSession();
		User info = null;
		try {
			String phone = obj.getUserPhone();
			String pwd = obj.getUserPWd();
			String findInfo = "select * from user a where a.userphone= ? and a.userpwd= ?";
			// ʹ��ԭ��sql������query��ѯʱ��hibernate�ǲ����Զ��ѽ����װ��ʵ��ġ�����Ҫ��addEntity;
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

	// ���·���
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

	// �޸�����
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

	// �����û���ַ
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
	 * ��������(non-Javadoc)
	 * 
	 * session.save����Serializable(�����ɵ�����)
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

	// ��ѯ��ǰ�û��ĵ�ַ��
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
	 * ͨ���ֻ���(Ψһ��)��ѯ��ǰ�û������ж���
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
	 * orderID(������)
	 * 
	 * ��ѯ������
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
