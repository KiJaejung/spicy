package com.spicy.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.spicy.util.HibernateUtil;

public abstract class GenericDao<Domain, ID> {

	private String className = this.getClass().getSimpleName();
	private int classNameLength = className.length();
	private final int controllerLength = 3;
	private String domainName = className.substring(0, classNameLength - controllerLength);

	public List<Domain> index() {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		String hql = "from " + domainName +" d order by d.id desc";
		List<Domain> domainList = session.createQuery(hql).list();
		tx.commit();
		session.close();
		return domainList;
	}

	public boolean create(Domain domain) {
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			Transaction tx = session.beginTransaction();

			session.save(domain);

			tx.commit();
			session.close();
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	public boolean update(Domain domain, ID id) {
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			Transaction tx = session.beginTransaction();
			// session.save(domain);

			session.update(domain);

			tx.commit();
			session.close();
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	public boolean delete(ID id) {
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			Transaction tx = session.beginTransaction();
			Domain domain = (Domain) session.createQuery("from " + domainName + " d where d.id = :id").setParameter("id", id).uniqueResult();
			session.delete(domain);
			tx.commit();
			session.close();
			return true;
		} catch (Exception e) {
			return false;
		}
	}
}
