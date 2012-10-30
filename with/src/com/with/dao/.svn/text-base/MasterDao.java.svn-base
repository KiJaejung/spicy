package com.with.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.with.domain.Friend;
import com.with.domain.Member;

public abstract class MasterDao<Domain, ID> {

	private String className = this.getClass().getSimpleName();
	private int classNameLength = className.length();
	private final int controllerLength = 3; 
	private String domainName = className.substring(0, classNameLength - controllerLength);
	
	public List<Domain> index(ID id) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		List<Domain> domainList = session.createQuery("from " + domainName + " d where d.id = :id").setParameter("id", id).list();
		tx.commit();
		session.close();
		return domainList;
	}
	
	public Domain show(ID id) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		Domain domain = (Domain) session.createQuery("from " + domainName + " d where d.id = :id").setParameter("id", id).uniqueResult();
		tx.commit();
		session.close();
		return domain;
	}
	
	public Domain find(ID id1, ID id2) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		StringBuffer buf = new StringBuffer();
		
		buf.append("from "+ domainName +" f ");
		buf.append("where f.request =:me ");
		buf.append("and f.accept =:friendNum ");
		String hql = buf.toString();
		
		Domain domain = (Domain) session.createQuery("from " + domainName + " d where d.id = :id").setParameter("id", id1).uniqueResult();
		tx.commit();
		session.close();
		return domain;
	}
	
	public String show(Long me, Long friendNum) {
		Friend checkedFriend = new Friend();
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		StringBuffer buf = new StringBuffer();
		buf.append("from Friend f ");
		buf.append("where f.request =:me ");
		buf.append("and f.accept =:friendNum ");
		String hql = buf.toString();
		
		checkedFriend = (Friend) session.createQuery(hql).setLong("me", me).setLong("friendNum", friendNum).uniqueResult();
		
		tx.commit();
		session.close();
		if (checkedFriend == null) {
			return "false";
		} else {
			return "true";
		}
	}
	
	public String newly() {
		
		return null;
	}
	
	public Domain edit(ID id) {
		
		return null;
	}
	
	public String create(Domain domain) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		session.save(domain);
		
		tx.commit();
		session.close();
		
		return "true";
	}
	
	
	public String update(Domain domain, ID id) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		// session.save(domain);

		session.update(domain);

		tx.commit();
		session.close();
		
		return null;
	}
	
	public String delete(ID id) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		Domain domain = (Domain) session.createQuery("from " + domainName + " d where d.id = :id").setParameter("id", id).uniqueResult();
		session.delete(domain);
		tx.commit();
		session.close();
		return "true";
	}
}
